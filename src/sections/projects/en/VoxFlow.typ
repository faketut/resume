#import "../../../template.typ": project

#project("VoxFlow", url: "https://github.com/faketut/VoxFlow")
- Built a bidirectional Twilio–Ultravox WebSocket bridge controlled by a call state machine for greeting, verification, and scheduling, with voice selection by stage.
- Automated post-call calendar booking and webhook delivery in n8n with timezone-aware scheduling, HMAC-SHA256 signatures, and exponential-backoff retries.
