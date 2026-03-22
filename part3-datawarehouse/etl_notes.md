## ETL Decisions

### Decision 1 — Standardizing Date Formats
Problem: The raw dataset contained dates in multiple formats such as DD-MM-YYYY and YYYY/MM/DD. This inconsistency makes it difficult to analyze time-based trends.

Resolution: All dates were converted into a standard ISO format (YYYY-MM-DD) before loading them into the dim_date table. This ensures consistency and simplifies time-based analysis.

### Decision 2 — Handling NULL Values
Problem: Some rows in the raw data contained NULL values for fields such as store or product category. This can break relationships in a data warehouse.

Resolution: Missing values were either filled using default values or those rows were excluded from the fact table to maintain data integrity.

### Decision 3 — Fixing Category Casing
Problem: Product categories appeared with inconsistent casing such as "electronics", "Electronics", and "ELECTRONICS".

Resolution: All category names were standardized using proper casing (e.g., Electronics, Clothing, Groceries) before loading them into the dim_product table.
