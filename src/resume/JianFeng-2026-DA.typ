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
#include "../sections/experience/en/coop-manulife.typ"
#gap()
#include "../sections/experience/en/research-uw.typ"
#gap()
#include "../sections/experience/en/coop-tbs.typ"
#gap()
#include "../sections/experience/en/intern-tiptop.typ"
#gap()
#include "../sections/experience/en/coop-lansi.typ"
#gap()
#include "../sections/experience/en/intern-sanyang.typ"


= Achievements
- 3rd Place, SAF Investment Research Challenge; finalist, 7th Annual SAF Strategy Case Competition.
- Grew UX Research Hub *32× (10→318 members)*