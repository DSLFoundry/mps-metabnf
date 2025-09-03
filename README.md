# MetaBNF for JetBrains MPS
Grammar-based MPS-language specification and generation
This version of MetaBNF works on MPS 2018.1

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
