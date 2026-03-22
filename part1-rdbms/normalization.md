## Anomaly Analysis

Insert Anomaly:
If a new product needs to be added to the system but no order has been placed yet, it cannot be inserted in the orders_flat table because product information is stored only when an order exists.

Update Anomaly:
If a customer's city is stored in multiple rows and the customer moves to another city, every row must be updated. If one row is missed, inconsistent data will appear.

Delete Anomaly:
If the only order containing a product is deleted, all information about that product is also lost.

## Normalization Justification

Keeping everything in one table may appear simple at first, but it leads to serious data problems as the dataset grows. In the orders_flat dataset, the same customer information, product details, and sales representative data are repeated across many rows. This repetition creates redundancy and makes the database inefficient.

For example, if a customer's city or email changes, it must be updated in every row where that customer appears. If one row is missed, the database will contain conflicting information, which is known as an update anomaly. Similarly, inserting a new product without an associated order becomes difficult because the structure requires all order fields to be filled. This is an insert anomaly.

Another problem occurs when deleting records. If a row containing the only order for a product is removed, the product information is also lost. This is called a delete anomaly.

Normalization solves these issues by splitting the data into separate related tables such as Customers, Products, Orders, and Sales Representatives. Each table stores information about only one entity. Relationships between tables are maintained using primary keys and foreign keys. This reduces redundancy, improves consistency, and makes the system easier to maintain and scale.
