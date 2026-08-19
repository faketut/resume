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
#include "../sections/experience/en/coop-lansi.typ"
#gap()
#include "../sections/experience/en/intern-sanyang.typ"

#section-break()

= Education
#include "../sections/common/edu.typ"
- Certifications: #include "../sections/certifications/en/coursera-da.typ"

#section-break()

= Personal Projects
#include "../sections/projects/en/CabStream_ETL.typ"
#gap()
#include "../sections/projects/en/qmj-tsx.typ"
#gap()
#include "../sections/projects/en/audited-pa.typ"
#gap()
#include "../sections/projects/en/ArmyOfSafeguard.typ"

#section-break()

= Skills

#set terms(separator: h(6pt), hanging-indent: 78pt)
#tight[
Python, SQL, C\#,
PostgreSQL, MySQL, MongoDB, BigQuery, Parquet,
AWS, GCP, Azure, Docker, Kubernetes, Terraform,
dbt, Airflow,
Power BI, Tableau, Power Apps, Excel,
Git, Statistics, Foundry,
]
  ],
)
