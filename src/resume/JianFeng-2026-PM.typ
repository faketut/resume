#import "../template.typ": resume-defaults, gap, section-break

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

= Organizations
#include "../sections/experience/en/analyst-uwfintech.typ"
#include "../sections/experience/en/director-uxr.typ"

#section-break()

= Projects
#include "../sections/projects/en/GhostPilot.typ"

#section-break()

= Certificates & Skills
#include "../sections/certifications/en/coursera-pm.typ"

*Skills*: Python, SQL, C\#, C++, Java, Git, Go, Kotlin, JavaScript,
Linux, Windows, MacOS,
.Net, Spring Boot, React, Node.js, Express.js, Flask,
PostgreSQL, MySQL, MongoDB, Redis,
AWS, GCP, Azure, Docker, Kubernetes, Terraform, GitHub Actions,
Jira, Confluence,
PyTorch, TensorFlow, Scikit-learn, OpenCV, GenAI tools
