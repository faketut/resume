#import "../template.typ": resume-defaults, gap, skills

#show: resume-defaults

#include "../header.typ"

= Skills
#skills((
  ("Languages", [Python, R, SQL]),
  ("Tools", [Excel, Word, PowerPoint, Power Automate, Power BI, Tableau, SAP, Bloomberg Terminal]),
  ("Financial Analysis", [Financial Modeling, Valuation, DCF modeling, FP&A]),
  ("Accounting", [GAAP/IFRS, Reconciliation, IFRS 16]),
  ("AI/ML", [PyTorch, TensorFlow, LangChain, LangGraph, scikit-learn, Microsoft Agent Framework, OpenCV, pandas]),
  ("Databases", [PostgreSQL, MySQL, MongoDB, Redis])
))
= Experience
#include "../sections/experience/en/coop-manulife-fin.typ"
#gap()
#include "../sections/experience/en/coop-tbs-fin.typ"
#gap()
#include "../sections/experience/en/intern-tiptop.typ"
#gap()
#include "../sections/experience/en/coop-lansi-fin.typ"

= Education
#include "../sections/common/edu.typ"

= Projects
#include "../sections/projects/en/qmj-tsx.typ"

= Achievements
- 3rd Place, SAF Investment Research Challenge; finalist, 7th Annual SAF Strategy Case Competition; finalist, Alpha FMC x CODE 2025 Case Competition.
- Grew UX Research Hub 32× (10→318 members); built a budget tracker that cut planning time 40% for a six-person team and allocated seed funding to three on-time projects.
