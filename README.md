# MetaBNF for JetBrains MPS
Grammar-based MPS-language specification and generation
This version of MetaBNF works on MPS 2021.2
Note: previous versions (at least from 2018.1 on until 2019.2) needed java 8, this version (from 2019.2 on) needs java 11.

# Rationale
This language tries to achieve similar results as https://github.com/premun/ingrid (see also https://github.com/vaclav/MPS_CSharp for a DSL that has been accelerated using ingrid). The design principle of MetaBNF is different. Where ingrid translates a BNF grammar straightforward to an MPS DSL, MetaBNF has the goal to adorn/decorate (a possibly imported) BNF grammar with hints that will increase usability of a resulting MPS DSL that is generated based on the grammar.

# Current status
The current status of MetaBNF is: it works for basic cases, but is not yet feature-complete w.r.t. editor usability. There are no industrial or large-scale applications yet that have battle tested it.

Also, grammars are written manually at the moment and there is no import (e.g. from antlr or similar).

# How to use
- First specify a MetaBNF model (using the MetaBNF language)
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
