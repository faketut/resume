#import "../../../template.typ": project

#project("MiniKV | Go", url: "https://github.com/faketut/MiniKV")
- Go LSM engine — CRC32C WAL, skip-list MemTable, snappy SSTables with sparse index + file-level Bloom so negative lookups skip disk.
- Serializable OCC: snapshot reads, buffered writes, commit-time read-set validation vs a bounded commit log — atomic on no conflict.
- Async leader/follower replication over HTTP NDJSON and gRPC; followers resume from local `LastSeq()` on reconnect, no event replay.
/*
这个项目是一个 Go 语言实现的轻量级 LSM-tree 键值存储引擎，核心目标是实现一个崩溃安全、可扩展、支持持久化和读写优化的 KV 存储组件。它的设计围绕 WAL、MemTable、SSTable 和 Compaction 展开，分别负责日志持久化、内存写入、磁盘落盘和数据合并。技术上我选择 Go，因为它适合并发编程和系统开发，而且开发效率高。最核心的实现模块是 LSM 的写入和读取链路：写入先落 WAL，再进入 MemTable，达到阈值后 flush 成 SSTable，并通过 compaction 维持层级结构。这个项目的亮点在于对底层存储引擎的关键机制都有体现，尤其是故障恢复和一致性设计；改进点主要在扩展性、性能调优和工程化管理。整体上，它体现了我对系统设计、并发控制、数据结构和数据库内核的理解。
*/