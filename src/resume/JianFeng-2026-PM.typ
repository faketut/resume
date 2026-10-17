#import "../template.typ": resume-defaults, gap, skills, subheading, project

#show: resume-defaults

#include "../header.typ"
= Education
#include "../sections/common/edu.typ"
= Skills
#skills((
  ("Product", [Requirements gathering, stakeholder feedback, feature demos, prioritization, user research]),
  ("Analytics & Tools", [SQL, Excel, Power BI, Figma, Jira, Confluence]),
  ("Technical", [Python, Rust, TypeScript, C\#, REST APIs, SQL, Azure, AWS, GitHub Actions]),
  ("Digital Assets", [BTCUSDT market data, Binance testnet, exchange and risk-control infrastructure])
))
= Experience
#subheading("Manulife Financial Corporation", "Software Engineer", "May 2026 – Aug 2026", "Toronto, ON, Canada")
- Partnered with Canadian segment and internal technical teams to clarify requirements, demo ServiceNow workflows, incorporate feedback, and secure sign-off; automation for *1K+ daily cross-system operations* eliminated the manual exception queue.
- Translated access-control and auditability requirements into a *GitHub App token exchange*, adding team-scoped validation and least-privilege permissions across catalog automations.
- Added AKS cluster and certificate checks, enabling a *Foundry LLM agent to compare GitOps PRs with live cluster state* and flag deployment misconfigurations before production.
#gap()
#subheading("Treasury Board Secretariat", "Software Developer", "Sep 2025 – Dec 2025", "Toronto, ON, Canada")
- Gathered QA-team and executive feedback for a test-framework project; clarified requirements, demoed features, and secured sign-off to migrate *30 Selenium tests across five suites* to Katalon, simplifying no-code onboarding.
- Built job-title normalization for a *5K-firm dataset*, cutting the administrative backlog *85%* and enabling peer-group governance reporting.
- Improved analyst-facing report load time *30%* by rebuilding stored procedures, adding indexes, and removing cursors.
#gap()
#subheading("Guangdong Tiptop Asset Management Co., Ltd.", "Analyst", "Jan 2025 – Apr 2025", "Guangdong, China")
- Prioritized a weekly shortlist from *500+ BSE-listed equities* using earnings quality, moat durability, and capital intensity to focus portfolio-manager research.
- Built Audiowell's three-statement and DCF models (*¥3.5B market cap*); scenario analysis supported the post-listing sell-down of a *¥15M* pre-IPO position at *~5–6×*, with a *¥30M+* stake retained.
#gap()
#subheading("Lansi Institute of Artificial Intelligence in Medicine", "Data Analyst", "May 2024 – Dec 2024", "Remote")
- Built a parallelized genomic ETL pipeline for *~100GB of multi-omics data*, cutting preprocessing *89%, from days to hours*.
#gap()
#subheading("Sanyang Technology Co., Ltd.", "Software Engineer", "Jun 2024 – Nov 2024", "Guangdong, China")
- Worked daily with a business analyst to translate requirements and UX demos into a *.NET reconciliation module* and REST API data pipeline, automating month-end checks and powering real-time sales dashboards for business users.
= Projects
#project("Legos | BTCUSDT Trading Infrastructure", url: "https://github.com/faketut/legos")
- Built a modular Rust trading pipeline connecting market-data feeds, order-book processing, market-making strategy, hard-limit risk checks, and exchange gateways; configured historical replay and Binance testnet integrations.
- Benchmarked *10M ticks at 70 ns p99 in-process latency* (excluding network I/O); workspace includes *88 tests* across the trading pipeline.
= Achievements
- As UX Research Hub Director, responded to member requests for more industry-speaker events; secured a Google UXR researcher as a guest speaker, drawing *~50 attendees* and attracting *~50 new members*. Grew membership *32× (10→318)* and managed event funding with the executive team.
- Velocity Co-op Problem Award (top submission among co-op cohort); 3rd Place, SAF Investment Research Challenge; Finalist, SAF Strategy Case Competition, Moonshot Hackathon Winner