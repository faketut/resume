#import "../../../template.typ": project

#project("MiniKV | Go", url: "https://github.com/faketut/MiniKV")
- Go LSM engine — CRC32C WAL, skip-list MemTable, snappy SSTables with sparse index + file-level Bloom so negative lookups skip disk.
- Serializable OCC: snapshot reads, buffered writes, commit-time read-set validation vs a bounded commit log — atomic on no conflict.
- Async leader/follower replication over HTTP NDJSON and gRPC; followers resume from local `LastSeq()` on reconnect, no event replay.
