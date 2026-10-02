#import "../../../template.typ": project

#project("DungeonSpire", url: "https://github.com/faketut/DungeonSpire")
- Separated combat and AI simulation from ANSI rendering with interfaces and polymorphic entities, enabling `doctest` coverage without a terminal.
- Added seeded procedural generation for byte-stable runs; CI tests catch regressions in map connectivity and spawn rules.
