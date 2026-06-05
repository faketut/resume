#import "../../../template.typ": project

#project("PantryPilot", url: "https://github.com/faketut/PantryPilot")
- FastAPI + Google ADK agent on MongoDB Atlas prioritises near-expiry pantry items when planning meals — zero-effort food-waste loop.
- Dual MCP sidecars: `mongodb-mcp-server` exposes Atlas for queries; `@brightdata/mcp` scrapes any retailer URL for grocery import.
