#import "../template.typ": resume-defaults, gap, skills, subheading, project

#show: resume-defaults

#include "../header.typ"

= Education
#include "../sections/common/edu.typ"

= Skills
#skills((
  ("Languages & SQL", [Python, SQL, Java, C\#]),
  ("Data Engineering", [ETL/ELT, Apache Airflow, dbt, data modeling, data quality testing]),
  ("Cloud & DevOps", [GCP, Azure, Terraform, Azure DevOps, Docker, Kubernetes]),
  ("Data & ML Platforms", [BigQuery, SQL Server, MySQL, PostgreSQL, PyTorch, Hugging Face, LoRA])
))

= Experience
#subheading("Manulife Financial Corporation", "Software Engineer", "May 2026 – Aug 2026", "Toronto, ON, Canada")
- Built reusable ServiceNow workflows for a platform serving *5K+ developers*, automating *1K+ daily cross-system operations* with a *99% success rate* after refining validation to accept legitimate edge cases.
- Secured platform integrations by replacing plaintext credentials with *GitHub App token exchange* and team-scoped permissions; integrated live AKS and certificate checks into a Foundry agent to flag GitOps deployment mismatches.
#gap()
#subheading("University of Waterloo", "Research Assistant", "Jan 2026 – Apr 2026", "Waterloo, ON")
- Fine-tuned four specialist DeBERTa detectors with LoRA and co-designed a learned aggregator; measured *sub-50ms inference on a T4* and *~80% F1 / 95%+ end-to-end accuracy* on held-out data.
- Compared learned fusion with fixed-threshold baselines and red-teamed against Llama-3-8B on *5K prompts*; used error analysis to reduce medical/education false positives.
#gap()
#subheading("Treasury Board Secretariat", "Software Developer", "Sep 2025 – Dec 2025", "Toronto, ON, Canada")
- Automated validation and normalization of duplicate/invalid titles in a *5K-firm dataset*, reducing manual processing time *85%* and enabling analyst peer-group reporting.
- Tuned SQL stored procedures and indexes to cut report load time *30%*; migrated *30 tests across five suites* to Azure DevOps CI/CD, with the framework adopted by *two QA teams*.
#gap()
#subheading("Waterloo Aerial Robotics Group", "Autonomy Member", "Jan 2025 – Apr 2025", "Waterloo, ON")
- Rebuilt telemetry for the UAV ground-station console (React/TypeScript, Python WebSocket, ROS), restoring *5 dashboard panels* and adding session record/replay for *~4.2 hours* of flight logs within a *64 MiB* memory bound.
#gap()
#subheading("Lansi Institute of Artificial Intelligence in Medicine", "Data Analyst", "May 2024 – Dec 2024", "Remote")
- Built a reproducible Python ETL pipeline for *~100GB of multi-omics data* in an international type 2 diabetes collaboration; per-sample multiprocessing cut preprocessing time *89%, from days to hours*.
- Applied XGBoost and SMR/MR#super[2] across a *68-study meta-analysis* to prioritize candidate drug targets; researchers carried the shortlist into published papers.
#gap()
#subheading("Sanyang Technology Co., Ltd.", "Software Engineer", "Jun 2024 – Nov 2024", "Guangdong, China")
- Built a Gantt visualizer for job-shop scheduling benchmarks and shipped Spring Boot/MySQL APIs serving dashboards and downstream ETL; demoed with production data and secured team sign-off.

= Projects
#project("CabStream ETL | Airflow, dbt, BigQuery, GCP", url: "https://github.com/faketut/CabStream-ETL")
- Implemented and ran an end-to-end NYC taxi data pipeline: Airflow ingestion to GCS/BigQuery, dbt staging/dimensional models and marts, and Looker Studio reporting.
- Provisioned infrastructure with Terraform; added dbt freshness/uniqueness checks and CI tests for Airflow DAG logic.
#gap()
#project("Anchor | Python", url: "https://github.com/faketut/Anchor")
- Built a Splunk monitoring agent that learns healthy baselines, ranks anomalous events, and generates LLM-assisted SPL investigation suggestions.
- Added feedback-driven signal reweighting to surface recurring unresolved deviations and monitoring blind spots.

= Achievements
- *Velocity Co-op Problem Award* (top submission in cohort); Moonshot Hackathon Winner; Grew UX Research Hub *32× (10→318 members)*.
