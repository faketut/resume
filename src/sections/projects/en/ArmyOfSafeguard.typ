#import "../../../template.typ": project

#project("ArmyOfSafeguards", url: "https://github.com/faketut/ArmyOfSafeguards")
- Four DeBERTa safeguard heads (toxicity, sexual, jailbreak, factuality) run in parallel via `expert_runner`, hot-swappable via env vars.
- Learned logistic meta-aggregator fuses per-expert probabilities into a calibrated verdict, beating threshold baselines on held-out HF.
- Training pipeline turns HF labels into expert-Q features and meta JSONL, so adding a new expert needs no aggregator changes.
