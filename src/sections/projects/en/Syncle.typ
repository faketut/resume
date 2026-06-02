#import "../../../template.typ": project

#project("Syncle", url: "https://github.com/faketut/Syncle")
- Android spatial-collaboration client in Kotlin + Jetpack Compose: 2D office map on pure Canvas with AABB walkability, edge-clamped camera follow, and edge-distance table proximity (not center-only) for tap-to-join.
- Realtime layer over LiveKit: 20 Hz binary position packets with remote-peer lerp, distance-based spatial audio gain, and per-table acoustic isolation via `table_id` participant attributes.
- Node/TS backend (Docker Compose with `livekit-server`) signs JWTs bound to a device-persistent `userId` so identity survives restarts; CI runs ktlint + unit tests and uploads debug APKs on `main`.
