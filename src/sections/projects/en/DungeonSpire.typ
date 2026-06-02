#import "../../../template.typ": project

#project("DungeonSpire", url: "https://github.com/faketut/DungeonSpire")
- Decoupled simulation from `AnsiRenderer` via interfaces + polymorphic entities, so `doctest` drives combat/AI headlessly without a live TTY.
- Seeded PRNG (`--seed`) yields byte-stable procedural runs, making regressions in map connectivity and spawn rules catchable in CI.
- 7-job CI matrix per push: `g++`/`clang++` builds, CMake, ASan+UBSan, `clang-tidy`, `cppcheck`, coverage upload.
