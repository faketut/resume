#import "../../../template.typ": project

#project("PantryPilot", url: "https://github.com/faketut/PantryPilot")
- FastAPI + MongoDB Atlas pantry; Bright Data MCP scrapes grocery URLs into Gemini structured extraction; Gemini Vision OCRs receipts with live waste metrics.
- Google ADK meal-planner agent prioritizes near-expiry items via a dual MCP sidecar (`mongodb-mcp-server` + `@brightdata/mcp`); HTMX frontend, Python 3.13 + uv.
