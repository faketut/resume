#import "../../../template.typ": project

#project("ChefCopilot", url: "https://github.com/faketut/ChefCopilot")
- iOS cooking copilot monorepo (SwiftUI app+FastAPI ranker+ML pipeline) bound by one OpenAPI contract and shared ingredient taxonomy.
- On-device CV (YOLOv8s, 150-epoch Colab, Core ML export) scans fridge/pantry; mock fallback lets UI/backend iterate in parallel.
