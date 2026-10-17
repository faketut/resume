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
  ("Machine Learning", [PyTorch, Hugging Face Transformers, LoRA, scikit-learn, XGBoost]),
  ("Methods", [model fine-tuning, ensemble learning, statistical analysis, evaluation, error analysis]),
  ("Programming", [Python, Java, C/C++, SQL, TypeScript]),
  ("Systems", [Azure, GCP, Kubernetes, Docker, Git, Linux, REST, WebSockets])
))
= Experience

#subheading("Manulife Financial Corporation", "Software Engineer", "May 2026 – Aug 2026", "Toronto, ON, Canada")
- Built and refined reusable ServiceNow workflows for *5K+ developers*, automating *1K+ daily operations*; integrated live AKS and certificate checks into a *Foundry LLM agent* to flag GitOps deployment mismatches.
- Replaced plaintext GitHub credentials with *GitHub App token exchange*, adding team-scoped validation, least-privilege permissions, and audit trails.
#gap()
#subheading("University of Waterloo", "Research Assistant", "Jan 2026 – Apr 2026", "Waterloo, ON")
- Fine-tuned four specialist DeBERTa safety models with LoRA and co-designed a learned aggregator; neutral-context training reduced medical/education false positives, with *sub-50ms inference on a T4*.
- Compared learned fusion with fixed-threshold baselines (*~80% F1, 95%+ end-to-end accuracy on held-out data*) and red-teamed against Llama-3-8B on *5K prompts*.
#gap()
#subheading("Treasury Board Secretariat", "Software Developer", "Sep 2025 – Dec 2025", "Toronto, ON, Canada")
- Automated duplicate/invalid job-title cleanup in a *5K-firm dataset*, reducing manual processing time *85%*; tuned SQL to cut report load time *30%*.
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
#include "../sections/projects/en/ArmyOfSafeguard.typ"
#gap()
#include "../sections/projects/en/AccessibilityAlly.typ"
= Achievements
- *Velocity Co-op Problem Award* (top cohort submission); Moonshot Hackathon Top 100 finalist (solo entrant among 646); grew UX Research Hub *32× (10→318 members)*.
