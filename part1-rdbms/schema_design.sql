CREATE TABLE customers (
customer_id TEXT PRIMARY KEY,
customer_name TEXT NOT NULL,
customer_email TEXT NOT NULL,
customer_city TEXT NOT NULL
);

INSERT INTO customers VALUES
('C1','Rahul Sharma','rahul@email.com','Mumbai'),
('C2','Priya Mehta','priya@email.com','Delhi'),
('C3','Amit Shah','amit@email.com','Pune'),
('C4','Sneha Patil','sneha@email.com','Mumbai'),
('C5','Rohit Gupta','rohit@email.com','Bangalore');

CREATE TABLE products (
product_id TEXT PRIMARY KEY,
product_name TEXT NOT NULL,
category TEXT NOT NULL,
unit_price INTEGER NOT NULL
);

INSERT INTO products VALUES
('P1','Laptop','Electronics',60000),
('P2','Mouse','Electronics',500),
('P3','Keyboard','Electronics',1500),
('P4','Headphones','Electronics',2000),
('P5','Monitor','Electronics',12000);

CREATE TABLE sales_reps (
sales_rep_id TEXT PRIMARY KEY,
sales_rep_name TEXT NOT NULL,
sales_rep_email TEXT NOT NULL,
office_address TEXT NOT NULL
);

INSERT INTO sales_reps VALUES
('S1','Amit Verma','amit@company.com','Mumbai'),
('S2','Rohit Singh','rohit@company.com','Delhi'),
('S3','Neha Sharma','neha@company.com','Pune'),
('S4','Karan Mehta','karan@company.com','Mumbai'),
('S5','Pooja Shah','pooja@company.com','Bangalore');

CREATE TABLE orders (
order_id TEXT PRIMARY KEY,
customer_id TEXT NOT NULL,
sales_rep_id TEXT NOT NULL,
order_date DATE NOT NULL
);

INSERT INTO orders VALUES
('O1','C1','S1','2024-01-01'),
('O2','C2','S2','2024-01-03'),
('O3','C3','S3','2024-01-05'),
('O4','C4','S1','2024-01-06'),
('O5','C5','S4','2024-01-10');

CREATE TABLE order_items (
order_item_id INTEGER PRIMARY KEY,
order_id TEXT,
product_id TEXT,
quantity INTEGER
);

INSERT INTO order_items VALUES
(1,'O1','P1',1),
(2,'O1','P2',2),
(3,'O2','P3',1),
(4,'O3','P4',2),
(5,'O4','P5',1);
