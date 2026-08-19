#import "../../../template.typ": org, position

#org("Manulife Financial Corporation")
#position("Co-op", "2026", "")
- Built reusable pre-validation & skip-on-failure pattern across ServiceNow catalog task workflows (APIM, AKS, EMU onboarding), eliminating manual error handling and enabling safe async orchestration.
- Migrated SNOW orchestrator from basic auth to GitHub App token authentication via PyGithub, enabling secure mfc-ets team validation with audit-trail compliance across catalog automation.
- Enhanced GOCC orchestrator with Kubernetes command integration for live AKS cert-SAN verification, enabling the Foundry LLM agent to validate gitops PRs against cluster state and catch misconfigs before prod.