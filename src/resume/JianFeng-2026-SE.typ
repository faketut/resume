#import "../template.typ": resume-defaults, gap, skills

#show: resume-defaults.with(
  bullet-spacing: 8.4pt,
  list-spacing-above: 7.2pt,
  section-spacing-above: 17.5pt,
  section-spacing-below: 6.6pt,
)

#include "../header.typ"

= Skills
#skills((
  ("Languages", [Python, C/C++, Java, C\#, Go, Bash, SQL]),
  ("Frameworks", [.NET, Spring Boot, FastAPI, Node.js]),
  ("Databases", [PostgreSQL, MySQL, MongoDB, Redis]),
  ("AI/ML", [PyTorch, TensorFlow, Hugging Face, scikit-learn, LangChain, LangGraph, Microsoft Agent Framework]),
  ("Cloud & DevOps", [AWS, GCP, Azure, Docker, Kubernetes, Terraform, GitHub Actions, Linux, Jenkins])
))
= Experience

#include "../sections/experience/en/coop-manulife.typ"
#gap()
#include "../sections/experience/en/research-uw.typ"
#gap()
#include "../sections/experience/en/coop-tbs.typ"
#gap()
#include "../sections/experience/en/club-warg.typ"
#gap()
#include "../sections/experience/en/coop-lansi.typ"
#gap()
#include "../sections/experience/en/intern-sanyang.typ"

= Education
#include "../sections/common/edu.typ"

= Projects
#include "../sections/projects/en/wlp4-compiler.typ"
= Achievements
- *Velocity Co-op Problem Award* (top submission in cohort); Moonshot Hackathon Winner.
- Grew UX Research Hub *32× (10→318 members)*
