#import "../../../template.typ": project

#project("DungeonSpire | C++", url: "https://github.com/faketut/DungeonSpire")
- Separated combat and enemy simulation from ANSI rendering with interfaces and polymorphic entities, enabling headless doctest coverage.
- Added seeded procedural dungeon generation and CI checks for map connectivity and spawn rules.
