#import "../../../template.typ": subheading

#subheading("Treasury Board Secretariat", "Software Developer", "Sep 2025 – Dec 2025", "Toronto, ON, Canada")
- Built the job-title normalization module for a *5K-firm public dataset* (.NET MVC + SQL Server), cutting *85%* of the administrative backlog that had blocked analyst peer-group and governance reporting.
- Migrated *30 Selenium tests across five suites* to Katalon on Azure DevOps CI/CD; the executive demo led two other QA teams to adopt the framework and cut their no-code onboarding.
- Refactored platform modules and tuned SQL — rebuilt stored procedures, added indexes, removed cursors — cutting report page load *30%*.
/*
我想介绍我在财政部秘书处（TBS）参与的统一公共数据治理平台。这个项目主要面向政府的宏观经济分析师，管理着一个包含 5000 家企业 的公共数据集。当时核心的业务痛点是：各企业上报的职位名称极其不规范，导致分析师无法做跨企业的同行比对；另外由于多表复杂联查，前端报表页面加载极慢，分析师投诉率很高。在技术架构上，我们选用了 .NET Core MVC + SQL Server 数据库，并在 CI/CD 中使用 Katalon Studio 替代了原有的 Selenium。选用 .NET 生态是为了满足政府对数据事务强一致性和合规性的硬性要求，而选择 Katalon 是为了降低 QA 团队的无代码上手门槛，提升回归测试效率。在这个项目中，我独立实现了职位数据自动归一化处理引擎。当海量原始文本流入时，系统通过清洗域的模糊匹配规则，将凌乱的职位实时映射到标准字典中，彻底打通了数据孤岛。为了解决性能瓶颈，我针对这 5000 家企业的核心数据进行了 SQL 性能调优，通过重构存储过程、优化索引、消除游标，成功将前端核心看板的加载速度提升了 30%。谈到这个项目的改进点： 目前所有的归一化计算和报表查询都是实时打在 SQL Server 主库上的。如果未来面临大批量的数据导入或高并发访问，主库 CPU 会瞬间拉满。下一步的优化方向是实现读写分离，引入 Redis 缓存 静态的职位字典和报表，并将归一化引擎重构为基于 Hangfire 的异步后台批处理任务。
*/