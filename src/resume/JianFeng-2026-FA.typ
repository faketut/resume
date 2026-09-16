#import "../template.typ": resume-defaults, gap, skills

#show: resume-defaults

#include "../header.typ"

= Education
#include "../sections/common/edu.typ"
= Skills
#skills((
  ("Languages", [Python, R, SQL]),
  ("Tools", [Excel, Word, PowerPoint, Power Automate, Power BI, Tableau, SAP, Bloomberg Terminal]),
  ("Financial Analysis", [Financial Modeling, Valuation, DCF modeling, FP&A]),
  ("Accounting", [GAAP/IFRS, Reconciliation, IFRS 16]),
  ("AI/ML", [PyTorch, TensorFlow, Hugging Face, LangChain, LangGraph, scikit-learn, Microsoft Agent Framework, OpenCV, pandas]),
  ("Databases", [PostgreSQL, MySQL, MongoDB, Redis])
))
= Experience
#include "../sections/experience/en/coop-manulife.typ"
#gap()
#include "../sections/experience/en/coop-tbs.typ"
#gap()
#include "../sections/experience/en/intern-tiptop.typ"
#gap()
#include "../sections/experience/en/coop-lansi.typ"


= Projects
#include "../sections/projects/en/qmj-tsx.typ"
#gap()
#include "../sections/projects/en/schl-take-private-lbo.typ"
#gap()
#include "../sections/projects/en/audited-pa.typ"

= Achievements
- Scaled UX Research Hub 32× (10→318 members) as Director; negotiated Google UXR keynote at \$0 cost and brokered TikTok chapter cross-promotion for sustained recruitment growth.
- Velocity Co-op Problem Award (top submission among co-op cohort); 3rd Place, SAF Investment Research Challenge; Finalist, SAF Strategy Case Competition, Moonshot Hackathon Winner 

= Coursework
#include "../sections/certifications/en/coursera-finance.typ"