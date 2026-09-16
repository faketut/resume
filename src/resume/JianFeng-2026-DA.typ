#import "../template.typ": resume-defaults, gap, skills

#show: resume-defaults

#include "../header.typ"
= Education
#include "../sections/common/edu.typ"
= Skills
#skills((
  ("Languages", [Python, C/C++, Java, C\#,Go, Bash, Typescript, Javascript, SQL, R]),
  ("AI/ML", [PyTorch, TensorFlow, Hugging Face, LangChain, LangGraph, scikit-learn, Microsoft Agent Framework, OpenCV, pandas]),
  ("Pipelines", [Airflow, dbt]),
  ("BI & Reporting", [Power BI, Tableau, Power Apps, Excel]),
  ("Tools", [Excel, Word, PowerPoint, Power Automate, Power BI, Tableau, SAP, Bloomberg Terminal]),
  ("Financial Analysis", [Financial Modeling, Valuation, DCF modeling, FP&A]),
  ("Accounting", [GAAP/IFRS, Reconciliation, IFRS 16]),
  ("Databases", [PostgreSQL, MySQL, MongoDB, Redis]),
  ("Cloud & DevOps", [AWS, GCP, Azure, Docker, K8s, Terraform, GitHub Actions, Linux, Jenkins]),
  ("Tools", [Git, Jira, Confluence])
))

= Experience
#include "../sections/experience/en/coop-manulife.typ"
#gap()
#include "../sections/experience/en/coop-tbs.typ"
#gap()
#include "../sections/experience/en/intern-tiptop.typ"
#gap()
#include "../sections/experience/en/coop-lansi.typ"
#gap()
#include "../sections/experience/en/intern-sanyang.typ"
= Projects
#include "../sections/projects/en/CabStream_ETL.typ"
#gap()
#include "../sections/projects/en/qmj-tsx.typ"
#gap()
#include "../sections/projects/en/audited-pa.typ"

= Achievements
- Scaled UX Research Hub 32× (10→318 members) as Director; negotiated Google UXR keynote at \$0 cost and brokered TikTok chapter cross-promotion for sustained recruitment growth.
- Velocity Co-op Problem Award (top submission among co-op cohort); 3rd Place, SAF Investment Research Challenge; Finalist, SAF Strategy Case Competition, Moonshot Hackathon Winner 
= Coursework
#include "../sections/certifications/en/coursera-da.typ"