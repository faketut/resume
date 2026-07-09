#import "../template.typ": resume-defaults, gap, section-break, tight, fit-resume

#show: resume-defaults

#fit-resume(
  include "../header.typ",
  [
    #section-break()

    = Employment
#include "../sections/experience/en/coop-manulife.typ"
#gap()
#include "../sections/experience/en/coop-tbs.typ"
#gap()
#include "../sections/experience/en/intern-tiptop.typ"
#gap()
#include "../sections/experience/en/coop-lansi.typ"

#section-break()

= Education
#include "../sections/common/edu.typ"
- Certifications: #include "../sections/certifications/en/coursera-finance.typ"

#section-break()

= Personal Projects
#include "../sections/projects/en/qmj-tsx.typ"
#gap()
#include "../sections/projects/en/schl-take-private-lbo.typ"
#gap()
#include "../sections/projects/en/audited-pa.typ"

#section-break()

= Skills

#set terms(separator: h(6pt), hanging-indent: 78pt)
#tight[
Excel, Word, PowerPoint, Power Automate, Power BI, Tableau, SQL, SAP, Python, Bloomberg Terminal,
Financial Modeling, Valuation, GAAP/IFRS,
Reconciliation, DCF modeling, IFRS 16, FP&A, 
]
  ],
)
