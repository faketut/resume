#import "../../../template.typ": project

#project("MiniKV | Go", url: "https://github.com/faketut/MiniKV")
- Built an LSM key-value store with a CRC32C write-ahead log, skip-list MemTable, compressed SSTables, sparse indexes, and Bloom filters.
- Added snapshot reads, serializable optimistic concurrency, and asynchronous HTTP/gRPC replication with sequence-based recovery.
