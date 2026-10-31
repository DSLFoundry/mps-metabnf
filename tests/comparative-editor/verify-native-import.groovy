import java.nio.file.Files
import java.util.function.BooleanSupplier
import jetbrains.mps.smodel.tempmodel.TemporaryModels
import jetbrains.mps.smodel.tempmodel.TempModuleOptions
import org.jetbrains.mps.openapi.module.SModuleFacet

// Locate the checked-out project, independent of the daemon's working directory.
def root = project.projectFile.toPath().toAbsolutePath()
while (root != null && !Files.isDirectory(root.resolve('.mps'))) root = root.parent
assert root != null : 'Cannot locate the selected project'
def services = project.read {
    [tools:mops.runtime.requireClass('metabnf','metabnf.rascal.GrammarTools'),
     importer:mops.runtime.requireClass('metabnf','metabnf.rascal.GrammarModelImporter')]
}
def work = root.resolve('build').resolve('comparative-editor').resolve('native-verification')
def authored = Files.createDirectories(work.resolve('authored'))
def upstream = Files.createDirectories(work.resolve('upstream'))
def source = root.resolve('tests').resolve('comparative-editor').resolve('CSharpComparison.g4')
def original = root.resolve('build').resolve('comparative-editor').resolve('source-audit')
        .resolve('antlr-grammars-v4').resolve('csharp').resolve('v7').resolve('CSharpParser.g4')
assert Files.isRegularFile(original) : 'Run comparativeEditorSourceAudit first'
def resource = services.tools.resourceRoot()
Files.deleteIfExists(upstream.resolve('grammar.xml'))
def rejection = null
try {
    services.tools.export(resource,'ANTLR',original,'compilation_unit',upstream,{false} as BooleanSupplier)
    throw new AssertionError('The split upstream grammar was unexpectedly accepted')
} catch (java.io.IOException expected) {
    assert expected.message.contains('Only self-contained combined ANTLR 4 grammars are supported') : expected.message
    rejection = 'Only self-contained combined ANTLR 4 grammars are supported'
}
assert !Files.exists(upstream.resolve('grammar.xml'))
def interchange = services.tools.export(resource,'ANTLR',source,'program',authored,{false} as BooleanSupplier)
def grammar = services.importer.read(interchange)
def imported = project.command {
    def model = TemporaryModels.getInstance().create(false,false,'comparison.native.import',
            TempModuleOptions.forNewModule(project.repository,new SModuleFacet[0]))
    try {
        def nativeGrammar = services.importer.importInto(model,grammar,'CSharpComparison','ANTLR')
        assert nativeGrammar.references['start'].targetNode.name == 'program'
        def rules = nativeGrammar.descendants.findAll{it.concept.name.endsWith('Rule')}
        assert rules.collect{it.name}.toSet() == ['program','block','statement',
            'statement__ANTLRAlternative1','statement__ANTLRAlternative2','expression','NUMBER',
            '_AntlrGroup1','_AntlrGroup2'].toSet()
        nativeGrammar.descendants.each { node -> node.references.each { reference ->
            assert reference.targetNode != null : 'Unresolved native grammar reference'
        }}
        [status:'pass',ruleCount:rules.size(),start:'program']
    } finally { TemporaryModels.getInstance().dispose(model) }
}
[authoredNativeImport:imported,upstreamImport:[status:'rejected',diagnostic:rejection],
 runtime:[mps:'2026.1.1',java:System.getProperty('java.runtime.version')]]
