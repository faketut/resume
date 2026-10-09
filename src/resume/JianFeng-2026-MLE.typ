#import "../template.typ": resume-defaults, gap, skills

#show: resume-defaults

#include "../header.typ"
= Education
#include "../sections/common/edu.typ"
= Skills
#skills((
  ("Languages", [Python, C/C++, Java, Go, SQL]),
  ("ML", [PyTorch, TensorFlow, Hugging Face, scikit-learn, XGBoost, OpenCV, pandas]),
  ("LLM & Agents", [LangChain, LangGraph, Microsoft Agent Framework]),
  ("Data & Cloud", [PostgreSQL, MongoDB, Redis, AWS, Azure, GCP, Docker, Kubernetes])
))
= Experience
#include "../sections/experience/en/coop-manulife.typ"
#gap()
#include "../sections/experience/en/coop-tbs.typ"
#gap()
#include "../sections/experience/en/coop-lansi.typ"
#gap()
#include "../sections/experience/en/intern-sanyang.typ"




= Projects
#include "../sections/projects/en/ArmyOfSafeguard.typ"
#gap()
#include "../sections/projects/en/PantryPilot.typ"

= Achievements
- *Moonshot Hackathon Winner*; Velocity Co-op Problem Award (top submission in cohort).
- Grew UX Research Hub *32× (10→318 members)* as Director.

= Coursework
#include "../sections/certifications/en/coursera-mle.typ"

