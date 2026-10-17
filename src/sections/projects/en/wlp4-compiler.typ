#import "../../../template.typ": project

#project("WLP4 Compiler | C++17", url: "https://github.com/faketut/C-class-compiler")
- Built a multi-pass compiler with lexical analysis, LR parsing, semantic/type checking, and ARM64 code generation for control flow, procedures, pointers, and arrays.
- Reduced generated executable size 79.6% versus the reference compiler across 65 benchmark programs; verified correctness with byte-identical regression tests.
