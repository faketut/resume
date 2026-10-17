#import "../../../template.typ": project

#project("CabStream ETL | NYC Taxi Analytics", url: "https://github.com/faketut/CabStream-ETL")
- Built an Airflow pipeline to ingest NYC taxi data into GCS and BigQuery, transform it into dbt marts, and visualize trip patterns in Looker Studio.
- Defined reproducible GCP infrastructure with Terraform and added DAG logic tests and dbt freshness/uniqueness checks.
