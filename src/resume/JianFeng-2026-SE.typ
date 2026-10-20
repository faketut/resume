#import "../template.typ": resume-defaults, gap, skills, subheading, project

#show: resume-defaults.with(
  bullet-spacing: 5.8pt,
  list-spacing-above: 5.2pt,
  section-spacing-above: 14pt,
  section-spacing-below: 5.5pt,
)

#include "../header.typ"

= Skills
#skills((
  ("Languages", [Python, Java, C/C++, C\#, Go, Rust, TypeScript, SQL, Bash]),
  ("Frameworks & APIs", [.NET, Spring Boot, FastAPI, React, Node.js, REST, WebSockets]),
  ("Data & Cloud", [PostgreSQL, MySQL, MongoDB, Redis, Azure, AWS, GCP, Docker, Kubernetes]),
  ("Tools", [Terraform, GitHub Actions, Linux, Katalon, Selenium, PyTorch, Hugging Face, Power BI, Power Automate, Excel, Figma, Jira/Atlassian, Confluence, Notion])
))
= Experience

#subheading("Manulife Financial Corporation", "Software Engineer", "May 2026 – Aug 2026", "Toronto, ON, Canada")
- Partnered with Canadian segment and technical teams to refine reusable ServiceNow workflows for *5K+ developers*, automating *1K+ daily operations*; integrated live AKS and certificate checks into a *Foundry LLM agent* to flag GitOps deployment mismatches.
- Replaced plaintext GitHub credentials with *GitHub App token exchange* (PyGithub), adding team-scoped validation, least-privilege permissions, and audit trails.
#gap()
#subheading("University of Waterloo", "Research Assistant", "Jan 2026 – Apr 2026", "Waterloo, ON")
- Trained four DeBERTa expert models and co-designed an aggregator with an advisor; neutral-context training reduced medical/education false positives, with *sub-50ms inference on a T4*.
- Evaluated the ensemble on benchmark data against fixed-threshold fusion and industry models, reaching *~80% F1 and 95%+ end-to-end accuracy*; red-teamed against Llama-3-8B on *5K prompts*.
#gap()
#subheading("Treasury Board Secretariat", "Software Developer", "Sep 2025 – Dec 2025", "Toronto, ON, Canada")
- Automated duplicate/invalid job-title cleanup for a *5K-firm dataset*, reducing manual processing time *85%*; tuned SQL procedures and indexes to cut report load time *30%*.
- Migrated *30 Selenium tests across five suites* to Katalon on Azure DevOps CI/CD; executive demo drove adoption by *two QA teams*.
#gap()
#subheading("Waterloo Aerial Robotics Group", "Autonomy Member", "Jan 2025 – Apr 2025", "Waterloo, ON")
- Rebuilt telemetry for the UAV ground-station console (React/TypeScript, Python WebSocket, ROS), restoring *5 dashboard panels* and adding session record/replay for *~4.2 hours* of flight logs within a *64 MiB* memory bound.
#gap()
#subheading("Lansi Institute of Artificial Intelligence in Medicine", "Data Analyst", "May 2024 – Dec 2024", "Remote")
- Parallelized preprocessing of *~100GB of multi-omics data* with per-sample Python multiprocessing, cutting runtime *89%, from days to hours* for an international T2D research collaboration.
#gap()
#subheading("Sanyang Technology Co., Ltd.", "Software Engineer", "Jun 2024 – Nov 2024", "Guangdong, China")
- Translated business-analyst requirements into implementation design and built a Java/Spring job-shop scheduling algorithm, APIs, and interactive Gantt renderer end-to-end.
- Demoed the workflow, secured team sign-off, and tested against production data; exposed reporting through Spring Boot/MySQL APIs for dashboards and downstream ETL.

= Education
#include "../sections/common/edu.typ"

= Projects
#include "../sections/projects/en/Legos.typ"
#gap()
#include "../sections/projects/en/MiniKV.typ"
#gap()
#include "../sections/projects/en/wlp4-compiler.typ"
= Achievements
- *Velocity Co-op Problem Award* (top submission in cohort); Moonshot Hackathon Winner
- As UX Research Hub Director, owned community growth and programming end-to-end: ran member research, secured a Google UXR guest speaker (*~50 attendees*, *~50 new members*), grew membership *32× (10→318)*, and managed event funding with the executive team.
