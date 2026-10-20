#import "../template.typ": resume-defaults, gap, skills, subheading, project

#show: resume-defaults.with(
  bullet-spacing: 5.8pt,
  list-spacing-above: 5.2pt,
  section-spacing-above: 14pt,
  section-spacing-below: 5.5pt,
)

#include "../header.typ"
= Education
#include "../sections/common/edu.typ"
= Skills
#skills((
  ("Product", [Discovery, PRDs, user stories, roadmap prioritization, A/B testing, funnel & retention analysis, creator & community programs, KPI definition, UAT, GTM]),
  ("Tools & Analytics", [Jira/Atlassian, Figma, Confluence, Notion, ServiceNow, SQL, Power BI, Excel]),
  ("Technical", [Python, Rust, TypeScript, C\#, REST APIs, Azure, AWS, GitHub Actions]),
  ("AI/ML", [LLM agents, LangChain, Hugging Face, XGBoost, SMR-MR, multi-omics data analysis]),
))
= Projects
#project("Legos | Product Lead | BTCUSDT Trading Infrastructure", url: "https://github.com/faketut/legos")
- Owned the product spec for a BTC/USDT spot and perpetual-futures market-making system — user stories, acceptance criteria, latency SLOs, and hard risk limits (position caps, drawdown) that drove the Rust pipeline design.
- Modeled exchange mechanics end-to-end — order lifecycle, funding/basis, and fee tiers — and validated them against *10M ticks at 70 ns p99 in-process latency* (excluding network I/O), with *88 tests* across data, strategy, risk, and Binance testnet order flow.
#gap()
#project("Smart Handoff | Product Lead | Co-operators Designathon")
- Ran product discovery and mapped the anonymous-visitor-to-advisor journey in Figma; defined the advisor-routing concept, prioritizing by customer intent and advisor capacity.
- Pitched a segmented omni-channel go-to-market strategy with measurable success criteria — projected *25% higher qualified lead capture* and *40% more high-intent customer volume* at a controlled CAC (designathon estimates, not measured outcomes).
= Experience
#subheading("Manulife Financial Corporation", "Software Product Engineer", "May 2026 – Aug 2026", "Toronto, ON, Canada")
- Led discovery with Canadian segment stakeholders and engineering teams — ran requirements workshops, defined user stories, acceptance criteria, and success metrics, and demoed ServiceNow workflows to secure sign-off; automation now absorbs *1K+ daily cross-system operations* for *5K+ developers* and removed the manual exception queue.
- Translated access-control and auditability requirements into a *GitHub App token exchange* (PyGithub) with team-scoped validation, least-privilege permissions, and audit trails, supporting compliance review across catalog automations.
- Partnered with platform engineers on AKS cluster and certificate checks, enabling a *Foundry LLM agent* to diff GitOps PRs against live cluster state and flag release-blocking misconfigurations before production.
#gap()
#subheading("Treasury Board Secretariat", "Software Developer", "Sep 2025 – Dec 2025", "Toronto, ON, Canada")
- Facilitated requirements and UAT sessions with QA teams and executives; turned feedback into user stories, demoed features, and secured sign-off to migrate *30 Selenium tests across five suites* to Katalon — driving adoption by *two QA teams* and cutting onboarding time for new QA analysts.
- Scoped and prioritized a job-title normalization initiative for a *5K-firm public dataset*, cutting the administrative backlog *85%* and unblocking peer-group and governance reporting.
- Improved analyst-facing report load time *30%* by rebuilding stored procedures, adding indexes, and removing cursors, lifting dashboard responsiveness for governance analysts.
#gap()
#subheading("Guangdong Tiptop Asset Management Co., Ltd.", "Analyst", "Jan 2025 – Apr 2025", "Guangdong, China")
- Prioritized a weekly shortlist from *500+ BSE-listed equities* using earnings quality, moat durability, and capital intensity, focusing portfolio-manager research on highest-conviction names.
- Built Audiowell's three-statement and DCF models (*¥3.5B market cap*) and partnered with portfolio managers on sell/hold scenarios; the analysis supported the post-listing sell-down of a *¥15M* pre-IPO position at *~5–6×*, with a *¥30M+* stake retained.
#gap()
#subheading("Lansi Institute of Artificial Intelligence in Medicine", "Data Analyst", "May 2024 – Dec 2024", "Remote")
- Partnered with an international T2D research team to own the genomic ETL pipeline for *~100GB of multi-omics data*; parallel preprocessing cut runtime *89%, from days to hours*, and XGBoost/SMR-MR screening across *68 studies* prioritized candidate drug targets carried into published papers.
#gap()
#subheading("Sanyang Technology Co., Ltd.", "Software Engineer", "Jun 2024 – Nov 2024", "Guangdong, China")
- Worked daily with business analysts and UX stakeholders to translate requirements and demos into user stories, acceptance criteria, and a *.NET reconciliation module* and REST API pipeline, automating month-end checks and powering real-time sales dashboards.
= Achievements
- As UX Research Hub Director, owned community growth and programming end-to-end: ran member research, secured a Google UXR guest speaker (*~50 attendees*, *~50 new members*), grew membership *32× (10→318)*, and managed event funding with the executive team.
- Velocity Co-op Problem Award (top submission among co-op cohort); 3rd Place, SAF Investment Research Challenge; Finalist, SAF Strategy Case Competition, Moonshot Hackathon Winner