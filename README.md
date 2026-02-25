# MetaBNF for JetBrains MPS
Grammar-based MPS-language specification and generation
This version of MetaBNF works on MPS 2025.1

# Rationale
This language tries to achieve similar results as [Ingrid](https://github.com/premun/ingrid) (see also [Ingrid-CS](https://github.com/vaclav/MPS_CSharp) for a DSL that has been accelerated using ingrid). The design principle of MetaBNF is different. Where ingrid translates a BNF grammar straightforward to an MPS DSL, MetaBNF has the goal to adorn/decorate (a possibly imported) BNF grammar with hints that will increase usability of a resulting MPS DSL that is generated based on the grammar.

# Current status
The current status of MetaBNF is: it works for basic cases, but is not yet feature-complete w.r.t. editor usability. There are no industrial or large-scale applications yet that have battle tested it.

Also, grammars are written manually at the moment and there is no import (e.g. from antlr or similar).

# Where this could go
The starting point that is MetaBNF today, is already useful, but not its full potential. Here are some research/extension ideas:
- Create powerful parsers for the language, interfacing with Rascal (something along the lines of [rascal-mps](https://github.com/cwi-swat/rascal-mps), but it needs a bit more work) which has one of the most powerful parser systems in the world
- PX/MX/UX improvements to find good ways to improve usability of text-based languages. Some research was done in this direction, and there is a body of [MPS Extensions](github.com/jetbrains/mps-extensions) (e.g. grammar cells, widgets, etc.) that can be used to improve the programming/modeling/usage experience for text-based languages bridged to/from MPS.
- Link to the research work mentioned above on Ingrid in order to have a class of bridges through antlr. An interesting research question there is how much can be automated and kept up-to-date using a library like [the antlr4 grammas on github](https://github.com/antlr/grammars-v4).
- Use MetBNF in combination with textual language workbenches (Rascal, MontiCore, Spoofax, etc.) to investigate/research a formal relation between object grammars (which would be the closest formalism to describe what MPS does) with grammars.
- Build a library of maintainable connectors between projectional languages and textual languages, strenthening the [LionWeb](https://github.com/LionWeb-io/) interoperability initiative as a possible addition, specifically for text/projectional interoperability (see also some work done on this in [Projecting Textual Languages](https://ir.cwi.nl/pub/32463), [Structured Editing for All](https://dl.acm.org/doi/full/10.1145/3544548.3580785#bibliography), and (for improvement of usability) [this branch of Rascal-MPS research that looked into improving usability of textual projections using AI techniques](https://github.com/cwi-swat/rascal-mps/tree/AI) - and I'm sure there's more).

# How to contribute
Any kind of contribution or improvement would be helpful. To give a few ideas:
- Bug report
- Documentation
- Add more to this README on existing work that could connect to this in a useful fashion
- Write an issue if you are someone from academia, industry (or otherwise) and think you can contribute somehow. Research on this topic exists and more is very interesting, but a practical consolidation of this research has not happened too much yet, while it is a very enabling technology for bridging text and projectional/UI based modeling languages.

# How to build
There are no dependencies to thirdparty plugins, so the [vanilla MPS](https://www.jetbrains.com/mps/download/?section=linux) (see the top of this README for the version you have to install) can be used.

Building is simply opening the MPS project in the MPS IDE and building the two languages starting with com.dslfoundry.metabnf.

# How to use
- First specify a MetaBNF model (using the MetaBNF language) in a model (see mbnf.sandbox/mbnf/sandbox/Demo model for an example)
- To generate a language from the MetaBNF model:
    - Create a new language in Logical View that has the same name as the `language` field in the MetaBNF model
    - Turn on transient models
    - Build the model containing the MetaBNF specification
    - Put the cursor on the last transient model
    - Tools -> Import Generated Language
    - There are more actions, like:
        - Tools -> Import Remaining Language Aspects
        - Tools -> Import to Module
        - Tools -> Fix Language Aspect Structure

# Troubleshooting
## Workaround in case of MetaBNF language not building
Since newer MPS versions, sometimes the build of a MetaBNF model, when building against a new MPS language to be populated by the MetaBNF model does not work. Then, simply delete all the contents in the structure, editor, and textgen aspects and then try to rebuild the MetaBNF model. It will fail and rebuild again and it will succeed.

An example with Demo for a clean build procedure that is fully reproducible:
 - delete Demo/structure, Demo/editor, and Demo/textgen
 - rebuild mbnf.sandbox/mbnf/sandbox/Demo model --> it fails on "package Demo.structure does not exist"
 - rebuild mbnf.sandbox/mbnf/sandbox/Demo again --> it succeeds
 - select the last transient model (at the bottom of the logical view) mbnf.sandbox@transient.../mbnf.sandbox.Demo@XXX (where XXX is the highest number, something like mbnf.sandbox.Demo@3_3)
 - Tools -> Import Generated Language; now the Demo/structure aspect is populated
 - Tools -> Import Remaining Language Aspects
 - ... etc. (like in the section above on how to use the tool)

# History
MetaBNF started as an idea on 30 October 2013 in the evening when @klemensschindler, @RemiBosman, and me were thinking about a way to interface projectional languages like the ones built in JetBrains MPS with textual languages that typically have a grammer describing them. On the same date and the evening after (1 November), @klemensschindler created a mockup language for writing BNF grammars in MPS, which we called mps-compiler-toolkit.

On 26 August 2015, I created the project in which to develop MetaBNF here on DSLFoundry and on 2 September 2015, @RemiBosman implemented a first working - albeit very basic - version of MetaBNF. In the following two and a half months, @RemiBosman gave much more body to MetaBNF and in the years after, until mid 2018, he kept it migrated and used a few real-world testcases on the prototypical tool, most notably the languages Python (shipped with this repository) and Ada (not yet opensourced). Unfortunately, he died in 2018.

In September 2025, I have started modernizing the plugin and it is now again a somewhat usable - if not yet very well stabilized - base for further development, research, and (for now) prototypical use.
