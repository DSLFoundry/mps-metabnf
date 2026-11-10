// Select one anchor per target language. Export all concepts, not just those in a template.
def anchors = ['Demo.structure.Program']
project.read {
    def languages = anchors.collect { mops.lookup.requireConceptByName(it).language }
    def concepts = languages.collectMany { it.concepts.toList() }.unique { it.qualifiedName }
    if (concepts.any { !it.valid }) throw new IllegalStateException('Target language is not fully loaded')
    def targets = (concepts + concepts.collectMany { it.containmentLinks.collect { l -> l.targetConcept } }).unique { it.qualifiedName }
    def concrete = concepts.findAll { it instanceof org.jetbrains.mps.openapi.language.SConcept }
    [formatVersion: 1, concepts: concrete.sort { it.qualifiedName }.collect { c ->
        def identity = { element ->
            if (!element.valid || element.sourceNode == null) {
                throw new IllegalStateException('Missing target declaration identity: ' + element)
            }
            element.sourceNode.toString()
        }
        [name: c.qualifiedName, id: identity(c), abstract: c.abstract, rootable: c.rootable,
         assignableTo: targets.findAll { c.isSubConceptOf(it) }.collect { it.qualifiedName }.sort(),
         properties: c.properties.collect { p ->
             // Only unconstrained strings are automatically populated. Other types need review.
             [name: p.name, id: identity(p), type: p.type.toString() == 'string' ? 'string' : 'constrained',
              declared: p.owner == c]
         }.sort { it.name },
         children: c.containmentLinks.collect { l ->
             [name: l.name, id: identity(l), target: l.targetConcept.qualifiedName,
              optional: l.optional, multiple: l.multiple]
         }.sort { it.name },
         references: c.referenceLinks.collect { l ->
             [name: l.name, id: identity(l), target: l.targetConcept.qualifiedName, optional: l.optional]
         }.sort { it.name }]
    }]
}
