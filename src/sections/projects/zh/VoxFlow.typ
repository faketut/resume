#import "../../../template.typ": project

#project("VoxFlow", url: "https://github.com/faketut/VoxFlow")
- 基于 Twilio Voice 构建实时语音智能体：通过 WebSockets 将双向音频接入 Ultravox，并以小型显式对话状态机（问候、验证、预约）保障在典型通话 sub-second 流式延迟下的轮次连贯性。
- 在 n8n 中编排通话后与预约自动化——日历 API 集成、时区感知的可用性计算，以及通过 webhook 回调到 FastAPI——使预约与跟进不依赖人工运营步骤。
- 将 FastAPI 拆分为：承载 Twilio webhook 的轻量 HTTP 路由、处理媒体流的异步 WebSocket handler，以及可注入的会话状态与日历访问服务；将业务规则与实时音频路径隔离，便于测试与迭代。
