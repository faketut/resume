#import "../template.typ": resume-defaults, gap, skills

#show: resume-defaults

#include "../header.typ"
= Education
#include "../sections/common/edu.typ"
= Skills
#skills((
  ("Languages", [Python, C/C++, Java, C\#,Go, Bash, Typescript, Javascript, SQL, R]),
  ("AI/ML", [PyTorch, TensorFlow, LangChain, LangGraph, scikit-learn, Microsoft Agent Framework, OpenCV, pandas]),
  ("BI & Pipeline", [Power BI, Tableau, Power Apps, Excel, Airflow, dbt]),
  ("Tools", [Excel, Word, PowerPoint, Power Automate, Power BI, Tableau, SAP, Bloomberg Terminal]),
  ("Databases & Tools", [PostgreSQL, MySQL, MongoDB, Redis, Git, Jira, Confluence]),
  ("Cloud & DevOps", [AWS, GCP, Azure, Docker, K8s, Terraform, GitHub Actions, Linux, Jenkins])
))

= Experience
#include "../sections/experience/en/coop-manulife-fin.typ"
#gap()
#include "../sections/experience/en/coop-tbs-fin.typ"
#gap()
#include "../sections/experience/en/intern-tiptop.typ"
#gap()
#include "../sections/experience/en/coop-lansi-fin.typ"
#gap()
#include "../sections/experience/en/intern-sanyang-fin.typ"

= Achievements
- Scaled UX Research Hub 32× (10→318 members) as Director; negotiated Google UXR keynote at \$0 cost and brokered TikTok chapter cross-promotion for sustained recruitment growth.
- Velocity Co-op Problem Award (top submission among co-op cohort); 3rd Place, SAF Investment Research Challenge; Finalist, SAF Strategy Case Competition, Moonshot Hackathon Winner 