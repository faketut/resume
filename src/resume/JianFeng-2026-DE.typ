#import "../template.typ": resume-defaults, gap, skills

#show: resume-defaults

#include "../header.typ"
= Education
#include "../sections/common/edu.typ"
= Skills
#skills((
  ("Languages", [Python, SQL, Java]),
  ("Data Engineering", [Airflow, dbt, BigQuery, Kafka]),
  ("Cloud & Infrastructure", [GCP, AWS, Azure, Terraform, Docker, Kubernetes]),
  ("Databases & Tools", [PostgreSQL, MySQL, MongoDB, Redis, Git, Linux, Jenkins])
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
#include "../sections/projects/en/CabStream_ETL.typ"
#gap()
#include "../sections/projects/en/Anchor.typ"

= Achievements
- Velocity Co-op Problem Award (top submission in cohort); Moonshot Hackathon Winner.
- Grew UX Research Hub 32× (10→318 members); built budget tracking that cut planning time 40% for a six-person team.

= Coursework
#include "../sections/certifications/en/coursera-de.typ"
