#import "../../../template.typ": project

#project("DungeonSpire", url: "https://github.com/faketut/DungeonSpire")
- Decoupled simulation from `AnsiRenderer` via interfaces + polymorphic entities; `doctest` drives combat/AI headlessly without a TTY.
- Seeded PRNG (`--seed`) yields byte-stable procedural runs, making regressions in map connectivity and spawn rules catchable in CI.
