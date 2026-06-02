#import "../../../template.typ": project

#project("MiniKV", url: "https://github.com/faketut/MiniKV")
- 实现精简版 LSM-tree 存储：追加写 WAL、内存 memtable 刷盘为 SSTable，以及通过 compaction 合并重叠的有序 run，以控制读放大。
- 增加 SSTable block 索引与清晰的恢复路径（重放 WAL、丢弃不完整尾部），确保写入过程中即便被 kill -9 也不会破坏已提交的键。
- 调优 flush/compaction 触发条件，并在读路径复用缓冲区；相较"每次写入即刷盘"的朴素设计，提升并发写入与范围扫描下的吞吐。
