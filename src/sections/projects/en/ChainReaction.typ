#import "../../../template.typ": project

#project("Chain Reaction | Typescript", url: "https://github.com/faketut/Chain-Reaction")
- Daily co-op Reddit physics puzzle (Devvit + Phaser + Matter.js): one piece per user replayed deterministically at lock time; leave-one-out re-sim surfaces MVP.
- Determinism harness ensures byte-identical sim across architectures; atomic SET NX enforces one-piece-per-user, scheduler-only lock prevents HTTP DoS.
