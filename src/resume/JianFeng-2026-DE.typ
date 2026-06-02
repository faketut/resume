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

= Projects
#include "../sections/projects/en/CabStream_ETL.typ"
#gap()
#include "../sections/projects/en/MiniKV.typ"

#section-break()

= Certificates & Skills
#include "../sections/certifications/en/coursera-de.typ"

*Skills*: Python, SQL, C\#,
PostgreSQL, MySQL, MongoDB, Redis,
AWS, GCP, Azure, Docker, Kubernetes
