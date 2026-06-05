#import "../../../template.typ": project

#project("VoxFlow", url: "https://github.com/faketut/VoxFlow")
- Bidirectional Twilio ↔ Ultravox media over WebSocket, driven by a call FSM (greet → verify → schedule) with per-stage voice switching.
- n8n post-call automation: TZ-aware calendar booking, HMAC-SHA256 signed outbound webhooks, retry with exponential backoff.
