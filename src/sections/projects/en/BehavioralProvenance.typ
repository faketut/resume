#import "../../../template.typ": project

#project("Behavioral Provenance | Python", url: "https://github.com/faketut/Behavioral-Provenance")
- Built an AST analyzer that identifies sources, sinks, sanitizers, and inter-procedural reachability, then emits Ed25519-signed behavioral manifests.
- Added policy evaluation, tamper detection, and SQLite/MongoDB-backed cross-package reachability queries; covered core flows with 31 tests.
