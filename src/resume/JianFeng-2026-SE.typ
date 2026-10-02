#import "../template.typ": resume-defaults, gap, skills

#show: resume-defaults.with(
  bullet-spacing: 8.4pt,
  list-spacing-above: 7.2pt,
  section-spacing-above: 17.5pt,
  section-spacing-below: 6.6pt,
)

#include "../header.typ"

= Education
#include "../sections/common/edu.typ"
= Skills
#skills((
  ("Languages", [Python, C/C++, Java, C\#, Go, Bash, SQL]),
  ("Backend & Systems", [.NET, Spring Boot, FastAPI, Node.js]),
  ("Databases", [PostgreSQL, MySQL, MongoDB, Redis]),
  ("Cloud & DevOps", [AWS, GCP, Azure, Docker, Kubernetes, Terraform, GitHub Actions, Linux, Jenkins])
))
= Experience
#include "../sections/experience/en/coop-manulife-fin.typ"
#gap()
#include "../sections/experience/en/coop-tbs-fin.typ"
#gap()
#include "../sections/experience/en/coop-lansi-fin.typ"
#gap()
#include "../sections/experience/en/intern-sanyang-fin.typ"


= Projects
#include "../sections/projects/en/MiniKV.typ"
#gap()
#include "../sections/projects/en/wlp4-compiler.typ"
= Achievements
- *Velocity Co-op Problem Award* (top submission in cohort); Moonshot Hackathon Winner.
- Grew UX Research Hub *32× (10→318 members)* as Director; secured a Google UXR keynote at no cost.

= Coursework
#include "../sections/certifications/en/coursera-se.typ"