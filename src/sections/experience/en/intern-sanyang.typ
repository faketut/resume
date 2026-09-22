#import "../../../template.typ": subheading

#subheading("Sanyang Technology Co., Ltd.", "Software Engineer", "Jun 2024 – Nov 2024", "Guangdong, China")
- Built Gantt visualizer of a flexible job-shop scheduling system, unblocking algorithm A/B runs on benchmark instances.
- Shipped Spring Boot CRUD APIs for cloud reporting/BI modules, unblocking front-end dashboards and downstream ETL consumers.
/*
我想介绍我在三阳科技（Sanyang Technology）负责的柔性作业车间调度（FJSP）可视化与云报表平台。当时团队面临的业务场景是：我们需要为制造型企业开发一套智能排产系统，算法团队每天需要运行大量的生产调度算法进行 A/B 测试。但当时核心的技术痛点是：算法输出的排产结果全是密密麻麻的文本日志，极度不直观，导致算法调优和前端看板彻底卡壳；同时，下游的 BI 报表和 ETL 抽取也缺乏统一的高性能数据接口。在技术架构上，我们采用了国内主流的企业级标准架构：后端使用 Spring Boot 框架 快速构建微服务，配合 MySQL 存储核心业务数据，前端通过图形库对算法结果进行图表化渲染。之所以选择 Spring Boot，是因为它具备极高的开箱即用特性，能完美兼容我们已有的企业级 BI 报表组件，并且对下游大数据 ETL 消费端非常友好。在这个项目中，我最核心的贡献有两个模块。第一是独立实现了柔性排产甘特图（Gantt Visualizer）可视化引擎，我把算法输出的复杂排产时序模型，转化为前端直观的甘特图，成功打通了算法团队在标准算例上的 A/B 测试流程。第二是设计并交付了云报表与 BI 模块的 Spring Boot CRUD 高性能 API，通过合理的领域模型划分，为前端看板和下游 ETL 消费者提供了高并发的统一数据通道。谈到这个项目的改进点： 目前这套排产可视化和报表系统主要服务于内部测试和中小型企业。如果未来面临大型制造企业，甘特图需要实时渲染数万个工序节点，且 BI 报表的并发查询量剧增，单机 MySQL 必然会成为瓶颈。我认为下一步的改进方向是：在后端引入 Redis 对高频查询的报表数据进行缓存，并将排产算法的历史结果迁移至 Elasticsearch 或时序数据库 中，从而分担 MySQL 的读写压力，支撑海量排产数据的快速检索
*/