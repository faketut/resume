#import "../template.typ": resume-defaults, gap, skills, subheading, project

#show: resume-defaults

#include "../header.typ"
= Education
#include "../sections/common/edu.typ"
= Skills
#skills((
  ("Programming & SQL", [Python, SQL, R, pandas]),
  ("Data Science", [scikit-learn, XGBoost, PyTorch, Hugging Face Transformers, LoRA, time series]),
  ("Data Platforms", [Airflow, dbt, BigQuery, PostgreSQL, MySQL, SQL Server]),
  ("Analytics & BI", [statistical analysis, feature engineering, Excel, Power BI, Tableau, Looker Studio]),
  ("Finance", [equity research, DCF/IRR, portfolio analysis, risk management, factor investing, derivatives, fixed income, credit])
))

= Experience
#subheading("Manulife Financial Corporation", "Software Engineer", "May 2026 – Aug 2026", "Toronto, ON, Canada")
- Partnered with Canadian segment and technical teams to refine reusable ServiceNow workflows for *5K+ developers*, automating *1K+ daily operations*; integrated live AKS and certificate checks into a *Foundry LLM agent* to flag GitOps deployment mismatches.
- Replaced plaintext GitHub credentials with *GitHub App token exchange* (PyGithub), adding team-scoped validation, least-privilege permissions, and audit trails.
#gap()
#subheading("University of Waterloo", "Research Assistant", "Jan 2026 – Apr 2026", "Waterloo, ON")
- Fine-tuned four specialist *DeBERTa safety detectors* with LoRA; neutral-context training reduced medical/education false positives, with *sub-50ms inference* on a single T4.
- Built a learned, per-axis aggregator that beat fixed-threshold fusion (*~80% F1, 95%+ end-to-end accuracy* on held-out Hugging Face data); red-teamed against Llama-3-8B on *5K prompts*.
#gap()
#subheading("Treasury Board Secretariat", "Software Developer", "Sep 2025 – Dec 2025", "Toronto, ON, Canada")
- Automated duplicate and invalid job-title cleanup in a *5K-firm public dataset*, reducing manual processing time *85%* and enabling peer-group and governance analysis.
- Migrated *30 Selenium tests across five suites* to Katalon on Azure DevOps CI/CD; the executive demo led two other QA teams to adopt the framework and cut their no-code onboarding.
#gap()
#subheading("GuangDong Tiptop Asset Management Co., Ltd", "Analyst", "Jan 2025 – Apr 2025", "China")
- Screened *500+ listed equities* on earnings quality, moat durability, and capital intensity, distilling the universe into a *weekly portfolio-manager shortlist*.
- Supported company diligence and three-to-five-year forecasts; built DCF/IRR/MOIC scenarios and contributed to investment-committee materials and sell/hold recommendations.
#gap()
#subheading("Lansi Institute of Artificial Intelligence in Medicine", "Data Analyst", "May 2024 – Dec 2024", "Remote")
- Built a reproducible genomic ETL pipeline for *~100GB of multi-omics data* in an international type 2 diabetes collaboration; parallel preprocessing cut runtime *89%, from days to hours*.
- Applied XGBoost and SMR/MR#super[2] across a *68-study meta-analysis* to screen evidence and prioritize candidate drug targets for published research.

= Projects
#include "../sections/projects/en/cfm301-efficient-portfolio.typ"
#gap()
#include "../sections/projects/en/cfm301-ey-factor.typ"
#gap()
#include "../sections/projects/en/CabStream_ETL.typ"


= Achievements
- *3rd of 45 teams*, SAF Investment Research Challenge; finalist, 7th Annual SAF Strategy Case Competition; WorldQuant Brain Gold Level (*20 quality alphas; Research Consultant candidate*), Velocity Co-op Problem Award (top submission in cohort).
- As UX Research Hub Director, owned community growth and programming end-to-end: ran member research, secured a Google UXR guest speaker (*~50 attendees*, *~50 new members*), grew membership *32× (10→318)*, and managed event funding with the executive team.