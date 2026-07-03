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
#include "../sections/experience/en/coop-lansi.typ"
#gap()
#include "../sections/experience/en/intern-sanyang.typ"

#section-break()

= Projects
#include "../sections/projects/en/ArmyOfSafeguard.typ"
#gap()
#include "../sections/projects/en/GhostPilot.typ"
#gap()
#include "../sections/projects/en/MiniKV.typ"
#gap()
#include "../sections/projects/en/Anchor.typ"
#gap()
#include "../sections/projects/en/ChefCopilot.typ"
#gap()
#include "../sections/projects/en/CabStream_ETL.typ"

#section-break()

= Organizations
#include "../sections/experience/en/director-uxr.typ"

#section-break()

= Certificates & Skills
#include "../sections/certifications/en/coursera-mle.typ"

#tight[
  *Skills*: Python, SQL, C\#, C++, Java, Git, Go, Kotlin, JavaScript,
  Linux, Windows, MacOS,
  .Net, React, Node.js, Flask,
  PostgreSQL, MySQL, MongoDB, Redis,
  AWS, GCP, Azure, Docker, Kubernetes, Terraform, GitHub Actions,
  Jira, Confluence,
  PyTorch, TensorFlow, Scikit-learn, OpenCV, pandas, Microsoft Agent Framework
]