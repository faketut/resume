#import "../template.typ": resume-defaults, gap, skills

#show: resume-defaults

#include "../header.typ"
= Education
#include "../sections/common/edu.typ"
= Skills
#skills((
  ("Languages", [Python, R, SQL]),
  ("Analytics", [pandas, scikit-learn, XGBoost, Time Series, Financial Modeling, DCF]),
  ("BI & Reporting", [Excel, Power BI, Tableau]),
  ("Data", [PostgreSQL, MySQL, dbt, Airflow, Bloomberg Terminal])
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

= Projects
#include "../sections/projects/en/qmj-tsx.typ"

= Achievements
- 3rd Place, SAF Investment Research Challenge; Alpha FMC x CODE finalist, with a restructuring plan modeled to yield \$48K+ in potential savings.
- Built budget tracking for a six-person UX Research Hub team, cutting planning time 40%; grew membership 32× (10→318).

= Coursework
#include "../sections/certifications/en/coursera-da.typ"