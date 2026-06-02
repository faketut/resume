#import "../../../template.typ": project

#project("VoxFlow", url: "https://github.com/faketut/VoxFlow")
- Bidirectional Twilio ↔ Ultravox media over WebSocket, driven by a multi-stage call FSM (greet → verify → schedule) with per-stage voice switching.
- n8n post-call automation: TZ-aware calendar booking, HMAC-SHA256 signed outbound webhooks, retry with exponential backoff.
- Hardened ops — Twilio signature validation, WS idle timeout, structured JSON logs, non-root Docker image with `/health` — all covered by a pytest suite.
