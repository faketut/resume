#import "../../../template.typ": project

#project("ArmyOfSafeguards", url: "https://github.com/faketut/ArmyOfSafeguards")
- Ensemble of four DeBERTa safeguard heads (toxicity, sexual, jailbreak, factuality) run in parallel via `expert_runner`, hot-swappable through env vars.
- Learned logistic meta-aggregator fuses per-expert probabilities into a calibrated verdict, beating threshold/weighted baselines on held-out HF benchmarks.
- Training pipeline turns HF labels into expert-Q features and meta JSONL, so adding a new expert needs no aggregator changes.
