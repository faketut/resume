#import "../../../template.typ": project

#project("CabStream ETL", url: "https://github.com/faketut/CabStream-ETL")
- 编排 Airflow DAG：将 NYC TLC 出租车数据摄取到 GCS，并以百万行批次加载至 BigQuery，用于车费、行程时长与路线维度分析。
- 使用 dbt 建模整理后的表（staging → marts，并加入 source freshness 与 schema tests），确保司机、行程与营收指标在定时刷新中保持稳定一致。
- 基于 BigQuery 发布 Looker Studio 仪表盘，替代零散表格；提供可筛选的 KPI 视图，用于分区/时间维度的营收与利用率趋势分析。
