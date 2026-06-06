#import "../template.typ": resume-defaults, gap, section-break, tight

#show: resume-defaults

#include "../header.typ"

#section-break()

= Education
#include "../sections/common/edu.typ"

#section-break()

= Experience
#include "../sections/experience/en/coop-manulife.typ"
#gap()
#include "../sections/experience/en/coop-tbs.typ"
#gap()
#include "../sections/experience/en/intern-tiptop.typ"
#gap()
#include "../sections/experience/en/coop-lansi.typ"

#section-break()

= Organizations
#include "../sections/experience/en/analyst-uwfintech.typ"
#include "../sections/experience/en/director-uxr.typ"

#section-break()

= Activities
#include "../sections/common/activ4finance.typ"

#section-break()

= Projects
#include "../sections/projects/en/qmj-tsx.typ"
#gap()
#include "../sections/projects/en/audited-pa.typ"

#section-break()

= Certificates & Skills
#include "../sections/certifications/en/coursera-finance.typ"

#tight[
  *Skills*:
  Excel, Word, PowerPoint, Power Automate, Power BI, Tableau, SQL, SAP, Python, Bloomberg Terminal,
  Financial Modeling, Valuation, GAAP/IFRS,
  GenAI tools
]
