#import "../../../template.typ": project

#project("CabStream ETL | Python", url: "https://github.com/faketut/CabStream-ETL")
- Terraform-provisioned GCP stack (GCS + BigQuery + Airflow); whole pipeline tears down and rebuilds from one `apply`.
- dbt three-layer model (staging → dims/facts → marts) with `schema.yml` freshness/uniqueness tests; Airflow DAG logic unit-tested in CI.
- External-table-then-CTAS pattern keeps raw parquet cheap on GCS while marts stay query-optimised in BigQuery.

/*
这个项目是一个基于 GCP 的数据工程 ETL 平台，目标是把 NYC Yellow Taxi 的原始交通数据加工成可分析的事实表和报表，并最终展示在 Looker Studio。整体架构采用 Terraform 管理基础设施、Airflow 编排 ETL 任务、GCS 作为数据湖、BigQuery 作为数据仓库、dbt 负责数据建模、Looker Studio 做可视化。这样设计的原因是它非常适合大规模分析型数据场景，需要明确的批处理流程、低成本存储和强查询能力。最关键的实现模块是从数据下载到报表生成的整条 ETL 流程，我把它拆成数据源、任务调度、数据湖、数据仓库、建模和交付层。这个项目最大的亮点是整体链路完整，工程性强；改进点主要在实时性、数据质量治理和成本优化上。如果数据规模更大，我会考虑接入流式处理和更完善的表设计优化。
*/