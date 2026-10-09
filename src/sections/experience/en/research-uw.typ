#import "../../../template.typ": subheading

#subheading("University of Waterloo", "Research Assistant", "Jan 2026 – Apr 2026", "Waterloo, ON")
- Fine-tuned a *4-expert DeBERTa safety ensemble* with LoRA, reaching *sub-50ms inference on a single T4* and cutting medical/education false positives via neutral-context training data.
- Showed a *learned meta-aggregator beat fixed-threshold fusion* (*\~80% F1, 95%+ end-to-end accuracy* on held-out Hugging Face data) and red-teamed it against Llama-3-8B on *5K prompts*.