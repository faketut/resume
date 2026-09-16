#import "../../../template.typ": project

#project("CabStream ETL | Python", url: "https://github.com/faketut/CabStream-ETL")
- Terraform-provisioned GCP stack (GCS + BigQuery + Airflow); whole pipeline tears down and rebuilds from one `apply`.
- dbt three-layer model (staging → dims/facts → marts) with `schema.yml` freshness/uniqueness tests; Airflow DAG logic unit-tested in CI.
- External-table-then-CTAS pattern keeps raw parquet cheap on GCS while marts stay query-optimised in BigQuery.
