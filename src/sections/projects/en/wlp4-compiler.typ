#import "../../../template.typ": project

#project("wlp4-compiler", url: "https://github.com/faketut/C-class-compiler")
- Multi-pass C++ pipeline: `wlp4scan` → `wlp4parse` (LR) → `wlp4type` → `wlp4gen` emitting ARM64 assembly.
- Codegen lowers control flow, procedures, pointer/array ops with a stable calling convention; transitions traceable via `.wlp4ti` trees.
- −79.6% output size vs the reference `wlp4c` across 65 programs; CI gates every push on the 25-program byte-equal regression suite.
