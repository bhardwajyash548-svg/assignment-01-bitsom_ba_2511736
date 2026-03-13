## ETL Decisions

### Decision 1 — Date Standardization
Problem: The raw dataset contained different date formats which could cause issues during aggregation and reporting.

Resolution: All dates were converted into a standard YYYY-MM-DD format before loading into the data warehouse.

### Decision 2 — Handling Missing Values
Problem: Some rows contained NULL values for product category or store information.

Resolution: Missing values were replaced with default labels such as "Unknown Category" to maintain consistency.

### Decision 3 — Category Standardization
Problem: Product categories appeared in different casing such as "electronics", "Electronics", and "ELECTRONICS".

Resolution: All categories were converted to a consistent format using proper capitalization before inserting into the dimension tables.

