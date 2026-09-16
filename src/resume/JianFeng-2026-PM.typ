#import "../template.typ": resume-defaults, gap, skills

#show: resume-defaults

#include "../header.typ"
= Education
#include "../sections/common/edu.typ"
= Experience
#include "../sections/experience/en/coop-manulife.typ"
#gap()
#include "../sections/experience/en/coop-tbs.typ"
#gap()
#include "../sections/experience/en/intern-tiptop.typ"
#gap()
#include "../sections/experience/en/coop-lansi.typ"
#gap()
#include "../sections/experience/en/intern-sanyang.typ"

= Skills
#skills((
  ("Languages", [Python, C/C++, Java, C\#, Go, Bash, Typescript, Javascript, SQL, R]),
  ("AI/ML", [PyTorch, TensorFlow, Hugging Face, LangChain, LangGraph, scikit-learn, Microsoft Agent Framework, OpenCV, pandas]),
  ("Frameworks", [.Net, Spring Boot, React, Angular, Node.js, Flask, Rails, FastAPI]),
  ("Databases", [PostgreSQL, MySQL, MongoDB, Redis]),
  ("Cloud & DevOps", [AWS, GCP, Azure, Docker, K8s, Terraform, GitHub Actions, Linux, Jenkins]),
  ("Tools", [Git, Jira, Confluence, Excel, PowerBI])
))
= Projects
#include "../sections/projects/en/CabStream_ETL.typ"
#gap()
#include "../sections/projects/en/ArmyOfSafeguard.typ"
#gap()
#include "../sections/projects/en/GhostPilot.typ"

= Achievements
- Scaled UX Research Hub 32× (10→318 members) as Director; negotiated Google UXR keynote at \$0 cost and brokered TikTok chapter cross-promotion for sustained recruitment growth.
- Velocity Co-op Problem Award (top submission among co-op cohort); 3rd Place, SAF Investment Research Challenge; Finalist, SAF Strategy Case Competition, Moonshot Hackathon Winner 
= Coursework
#include "../sections/certifications/en/coursera-pm.typ"

