#import "../../../template.typ": project

#project("Behavioral Provenance", url: "https://github.com/faketut/Behavioral-Provenance")
- Python AST analysis (sources/sinks/sanitizers via YAML catalog) → ed25519-signed behavioral manifests with inter-procedural reachability; policy DSL evaluation and tamper detection without source access.
- Cross-package registry (SQLite/MongoDB) answers reachability queries no public tool supports; 31 tests cover AST extraction, signing, policy, and storage backends.
