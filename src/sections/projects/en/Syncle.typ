#import "../../../template.typ": project

#project("Syncle | Java, Kotlin", url: "https://github.com/faketut/Syncle")
- Android spatial-collab client (Kotlin + Compose) renders a 2D office on Canvas with AABB walkability and edge-distance table proximity.
- Realtime over LiveKit: 20 Hz binary position packets, remote-peer lerp, distance-based spatial audio, per-table acoustic isolation.

/*
这个项目是一个面向远程团队的虚拟工作空间，核心解决的是远程协作中缺少空间感和会议自然度的问题。用户可以在 Android 或 Web 端进入同一个工作空间，通过地图和桌子区域感知同事的位置，并在靠近桌子时快速发起会议。技术上，我采用了 Kotlin + Compose + LiveKit + Node + React + Docker 这样的架构，重点保证实时性和跨端一致性。最关键的模块是空间同步与协作引擎，它通过 ViewModel、PositionSyncEngine、PeerRegistry、LiveKitService 等模型，把用户输入、位置广播、空间音量、远端状态同步连接起来。这个项目的亮点是把远程会议从固定链接升级成了更自然的空间协作体验；改进点主要在于服务端扩展性、状态一致性和实时平台治理。如果用户规模变大，我会考虑增强认证网关、缓存、持久化存储和 LiveKit 集群扩容
*/