#import "../../../template.typ": project

#project("GhostPilot")
- Invisible Windows overlay streams WASAPI loopback audio through partial/final Azure ASR into a text LLM, with a watchdog auto-restarting the capture pipeline.
- Alt+P vision path: Qt area capture → JPEG → vision LLM, result folded back into the text-LLM prompt.
- Local RAG over `knowledge/` injects user-curated context so answers stay grounded across long sessions.
