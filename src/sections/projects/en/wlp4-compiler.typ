#import "../../../template.typ": project

#project("wlp4-compiler | C++", url: "https://github.com/faketut/C-class-compiler")
- Multi-pass C++ pipeline: `wlp4scan` → `wlp4parse` (LR) → `wlp4type` → `wlp4gen` emitting ARM64 assembly.
- Codegen lowers control flow, procedures, pointer/array ops with a stable calling convention; transitions traceable via `.wlp4ti` trees.
- −79.6% output size vs the reference `wlp4c` across 65 programs; CI gates every push on the 25-program byte-equal regression suite.

/*
这个项目是一个多趟 C++ 编译器，目标是把 WLP4 语言编译成 ARM64 汇编。它的核心流程是词法分析、语法分析、语义检查和代码生成。技术上我采用 C++17，因为编译器需要强控制底层寄存器、栈帧和指令生成；在结构上，我把项目拆成 scanner、parser、typechecker、codegen 四个阶段，每一层都有明确输入输出，便于调试和扩展。最核心的模块是类型检查和代码生成，我通过符号表、过程表和 AST 注解来保证语义正确，再将其翻译为 ARM64 指令。这个项目的优点在于设计清晰、工程性强；改进点则在于进一步抽离 IR、增强优化 pass 和提高工程化能力。整体上，它体现了我对系统设计、数据结构、编译原理和底层实现的理解。
*/
