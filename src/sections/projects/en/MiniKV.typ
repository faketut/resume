#import "../../../template.typ": project

#project("MiniKV", url: "https://github.com/faketut/MiniKV")
- Go LSM engine — CRC32C WAL, skip-list MemTable, snappy block SSTables with sparse index + file-level Bloom so negative lookups skip disk.
- Serializable optimistic transactions: snapshot reads, buffered writes, commit-time read-set validation against a bounded commit log — atomic on no conflict.
- Async leader/follower replication over HTTP NDJSON and gRPC streaming; followers resume from local `LastSeq()` on reconnect so applied events aren't replayed.
