#import "../../../template.typ": project

#project("ArmyOfSafeguards", url: "https://github.com/faketut/ArmyOfSafeguards")
- Four DeBERTa safeguard heads (toxicity, sexual, jailbreak, factuality) run in parallel via `expert_runner`, hot-swappable via env vars.
- Learned logistic meta-aggregator fuses per-expert probabilities into a calibrated verdict, beating threshold baselines on held-out HF.
- Training pipeline turns HF labels into expert-Q features and meta JSONL, so adding a new expert needs no aggregator changes.
/*
这个项目是一个多智能体内容安全系统，核心目标是对文本做多维度安全评估。它不是传统业务系统，而是 AI 安全 / 风控项目，主要解决‘单模型风险识别有限、不同风险维度需要专门检测’的问题。技术上，我采用了 Python + PyTorch + Hugging Face 生态，使用多个专家模型分别处理毒性、敏感内容、越狱尝试和事实性风险，再通过 base、weighted 和 meta aggregator 统一输出安全结论。最关键的模块是 expert runner 和 aggregator，它把每个 expert 的输出转成 structured result，然后做统一融合和 policy 判断。这个项目的亮点在于多专家协同和分层决策，能提高解释性和准确性；改进点主要在推理延迟、服务吞吐和工程化落地。如果用户量大起来，我会从模型部署、缓存、批处理和流量控制等方面优化。
*/