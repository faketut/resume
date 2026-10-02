#import "../../../template.typ": subheading

#subheading("Lansi Institute of Artificial Intelligence in Medicine", "Data Analyst", "May 2024 – Dec 2024", "Remote")
- Owned the genomic ETL pipeline for *\~100GB of multi-omics data* behind an international T2D research collaboration; per-sample `multiprocessing` fan-out cut preprocessing *89%, from days to hours* on single-server hardware.
- Ran XGBoost feature selection with SMR/MR#super[2] across a *68-study meta-analysis*, narrowing the candidate drug-target shortlist that researchers carried into published papers.
/*
我想介绍我在蓝斯医学人工智能研究所负责的基因组学大数据 ETL 与分析平台。这是一个针对二型糖尿病（T2D）的国际联合科研项目，我们需要对 68 个独立研究的荟萃分析结果进行大规模计算，最终帮科学家筛选出具有临床价值的候选药物靶点。当时面临的最大技术挑战是：多组学数据量高达 100GB，包含数亿行基因位点，单线程脚本运行一次需要几天时间，严重拖慢了科研进度。在技术选型上，我们采用了 Python 生态 + 多进程（Multiprocessing）并行架构，结合 XGBoost 机器学习模型 以及 SMR 统计学算法。由于基因样本数据本身具有天然的独立性，非常适合采用分治法。在单机多核服务器的环境下，利用 Python 多进程榨干算力是最轻量、经济的方案，避免了引入沉重的 Hadoop 集群。我主要负责构建了基于数据分片的高并发基因 ETL 流水线。原始文件流入后，由进程池进行动态切片，在特征工程阶段进行多进程并行清洗，随后通过 XGBoost 进行特征重要性评估，最后通过统计学模型过滤出短名单。通过这套 Per-sample fan-out 架构，我成功将整体 ETL 运行时间缩短了 89%。谈到这个项目的改进点： 目前的架构完全依赖单机服务器的多核性能。如果数据量从 100GB 膨胀到 TB 级别，单机内存一定会发生 OOM（内存溢出）。我认为未来的改进点是必须向分布式架构演进，将底层的 Python 进程池升级为 Apache Spark 或 Ray 分布式计算框架，并把存储格式从文本优化为 Parquet 列式存储，以支持真正的海量海量计算
*/