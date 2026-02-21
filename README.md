# MetaBNF for JetBrains MPS
Grammar-based MPS-language specification and generation
This version of MetaBNF works on MPS 2023.3

# Rationale
This language tries to achieve similar results as https://github.com/premun/ingrid (see also https://github.com/vaclav/MPS_CSharp for a DSL that has been accelerated using ingrid). The design principle of MetaBNF is different. Where ingrid translates a BNF grammar straightforward to an MPS DSL, MetaBNF has the goal to adorn/decorate (a possibly imported) BNF grammar with hints that will increase usability of a resulting MPS DSL that is generated based on the grammar.

# Current status
The current status of MetaBNF is: it works for basic cases, but is not yet feature-complete w.r.t. editor usability. There are no industrial or large-scale applications yet that have battle tested it.

Also, grammars are written manually at the moment and there is no import (e.g. from antlr or similar).

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
 - rebuild mbnf.sandbox/mbnf/sandbox/Demo model --> it fails on something like "empty structure aspect"
 - rebuild mbnf.sandbox/mbnf/sandbox/Demo again --> it succeeds
 - select the last transient model (at the bottom of the logical view) mbnf.sandbox@transient.../mbnf.sandbox.Demo@XXX (where XXX is the highest number, something like mbnf.sandbox.Demo@3_3)
 - Tools -> Import Generated Language; now the Demo/structure aspect is populated
 - Tools -> Import Remaining Language Aspects
 - ... etc. (like in the section above on how to use the tool)


