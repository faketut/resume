#import "../template.typ": resume-defaults, gap, skills

#show: resume-defaults

#include "../header.typ"
= Education
#include "../sections/common/edu.typ"
= Skills
#skills((
  ("Languages", [Python, C/C++, Java, C\#, Go, Bash, Typescript, Javascript, SQL, R, VBA]),
  ("AI/ML", [PyTorch, TensorFlow, LangChain, LangGraph, scikit-learn, Microsoft Agent Framework, OpenCV, pandas]),
  ("Frameworks", [.Net, Spring Boot, React, Angular, Node.js, Flask, Rails, FastAPI]),
  ("Databases", [PostgreSQL, MySQL, MongoDB, Redis]),
  ("Cloud & DevOps", [AWS, GCP, Azure, Docker, K8s, Terraform, GitHub Actions, Linux, Jenkins]),
  ("Tools", [Git, Jira, Confluence, Excel, PowerBI])
))
= Experience
#include "../sections/experience/en/coop-manulife-fin.typ"
#gap()
#include "../sections/experience/en/coop-tbs-fin.typ"
#gap()
#include "../sections/experience/en/intern-tiptop.typ"
#gap()
#include "../sections/experience/en/coop-lansi-fin.typ"


= Projects
#include "../sections/projects/en/VoxFlow.typ"

= Achievements
- Scaled UX Research Hub 32× (10→318 members) as Director; negotiated Google UXR keynote at \$0 cost and brokered TikTok chapter cross-promotion for sustained recruitment growth.
- Velocity Co-op Problem Award (top submission among co-op cohort); 3rd Place, SAF Investment Research Challenge; Finalist, SAF Strategy Case Competition, Moonshot Hackathon Winner 
= Coursework
#include "../sections/certifications/en/coursera-pm.typ"

