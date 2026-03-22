-- Dimension Table: Date
CREATE TABLE dim_date (
date_id INTEGER PRIMARY KEY,
full_date DATE NOT NULL,
month INTEGER NOT NULL,
year INTEGER NOT NULL
);

INSERT INTO dim_date VALUES
(1,'2024-01-01',1,2024),
(2,'2024-01-02',1,2024),
(3,'2024-01-03',1,2024),
(4,'2024-02-01',2,2024),
(5,'2024-02-02',2,2024);

-- Dimension Table: Store
CREATE TABLE dim_store (
store_id INTEGER PRIMARY KEY,
store_name TEXT NOT NULL,
city TEXT NOT NULL
);

INSERT INTO dim_store VALUES
(1,'Store A','Mumbai'),
(2,'Store B','Delhi'),
(3,'Store C','Pune');

-- Dimension Table: Product
CREATE TABLE dim_product (
product_id INTEGER PRIMARY KEY,
product_name TEXT NOT NULL,
category TEXT NOT NULL
);

INSERT INTO dim_product VALUES
(1,'Laptop','Electronics'),
(2,'Shirt','Clothing'),
(3,'Milk','Groceries'),
(4,'Headphones','Electronics');

-- Fact Table
CREATE TABLE fact_sales (
sale_id INTEGER PRIMARY KEY,
date_id INTEGER,
store_id INTEGER,
product_id INTEGER,
quantity INTEGER,
sales_amount INTEGER,
FOREIGN KEY(date_id) REFERENCES dim_date(date_id),
FOREIGN KEY(store_id) REFERENCES dim_store(store_id),
FOREIGN KEY(product_id) REFERENCES dim_product(product_id)
);

INSERT INTO fact_sales VALUES
(1,1,1,1,1,60000),
(2,1,2,2,2,2000),
(3,2,1,3,5,400),
(4,2,3,4,1,2500),
(5,3,1,1,1,60000),
(6,3,2,3,4,320),
(7,4,3,2,3,3000),
(8,4,2,4,2,5000),
(9,5,1,3,6,480),
(10,5,3,1,1,60000);
