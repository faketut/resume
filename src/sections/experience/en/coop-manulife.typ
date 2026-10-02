#import "../../../template.typ": subheading

#subheading("Manulife Financial Corporation", "Software Engineer", "May 2026 – Aug 2026", "Toronto, ON, Canada")
- Owned reusable ServiceNow catalog workflows used by *thousands of internal developers*; pre-validation plus skip-on-failure orchestration absorbed *1K+ daily cross-system operations* and eliminated the manual exception queue.
- Led the migration of the ServiceNow orchestrator off plaintext basic auth to *GitHub App token exchange* (PyGithub), adding team-scoped validation, automated permission scopes, and end-to-end audit trails for compliance review.
- Extended the GOCC orchestrator with live kubectl and AKS certificate checks so a *Foundry LLM agent could diff GitOps PRs against cluster state*, catching deployment misconfigurations before release.
/*
我想介绍我在宏利金融（Manulife）负责的企业级自动化运维与合规编排系统。当时我们团队面临的业务场景是：全球几千名开发者每天会发起 1000 多次 跨系统的云资源申请和证书校验。原有的流程非常脆弱，任何异步节点出错都会导致整个流程中断，产生大量人工处理工单；而且旧系统使用明文账密对接 GitHub，存在极大的安全合规风险。为了解决这些痛点，我参与了技术重构。我们在架构上采用了 ServiceNow 工作流引擎 + Python 异步微服务 + Azure AKS，并引入了 Foundry 大模型 API。这样选型的原因是，利用 Python 能完美兼顾企业 IT 资产入口的统一性以及底层异构系统的弹性扩展。在安全维度，我主导将系统完全迁移到了 GitHub App Token 认证机制，配合团队权限校验，做到了金融级合规。我最核心的实现是设计了一套具备‘前置校验与失败跳过’的状态机编排引擎。数据流从用户发起请求开始，进入前置校验模型拦截非法请求，再由 Python 调度异步工作流。针对网络超时等异常，我实现了 Skip-on-failure 降级逻辑，去除了全部人工干预。同时，我通过 kubectl 提取 AKS 集群实时状态，交给大模型与 GitOps 的 PR 进行语义化 Diff，智能拦截配置漂移。谈到这个项目的改进点： 目前它在处理突发的高并发流量时，ServiceNow 脚本节点容易出现阻塞。如果未来请求量翻倍，我认为可以在底层执行端前置引入 Kafka 消息队列 进行削峰填谷，并将 kubectl 频繁查询的集群状态写入 Redis 缓存，避免压垮 K8s 的 API Server。
*/