## Storage Systems

The hospital data platform uses multiple storage systems optimized for different workloads. Patient records and operational transactions are stored in a relational database such as PostgreSQL to ensure strong ACID consistency. Real-time ICU monitoring data is streamed through a messaging system such as Kafka and stored in a time-series or streaming database for efficient real-time ingestion.

For analytics and reporting, the system loads processed data into a data warehouse where management can generate reports such as bed occupancy and departmental costs. For AI applications such as natural language patient history queries, a vector database is used to store embeddings of medical notes and patient documents.

## OLTP vs OLAP Boundary

The OLTP system includes operational hospital databases where patient admissions, treatments, prescriptions, and billing transactions occur. These systems prioritize fast transactional updates and strict data consistency.

The OLAP layer begins once the transactional data is extracted and transformed into the data warehouse. In the warehouse, the data is structured into analytical schemas such as star schemas to support reporting, forecasting, and machine learning models.

## Trade-offs

One major trade-off in this architecture is system complexity. Using multiple storage systems increases operational overhead and requires careful data integration. However, this complexity is necessary because no single database system can efficiently handle transactional workloads, analytical queries, real-time streaming, and semantic search simultaneously.

To mitigate this challenge, a centralized data pipeline and orchestration system such as Apache Airflow can manage data movement between systems and ensure data consistency across the platform.

