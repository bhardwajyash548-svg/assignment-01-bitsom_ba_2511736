## Anomaly Analysis

### Insert Anomaly
In the flat dataset, it is not possible to add a new product unless an order exists for that product.

Example:
If a new product "Wireless Keyboard" needs to be added to the catalog but no order has been placed yet, the dataset cannot store the product information without creating a fake order.

Columns involved:
product_id, product_name, product_price

### Update Anomaly
If the price or name of a product changes, it must be updated in multiple rows.

Example:
If the price of a product changes from 2999 to 3499, every row containing that product must be updated. Missing even one row leads to inconsistent data.

Columns involved:
product_id, product_name, product_price

### Delete Anomaly
If the only order containing a product is deleted, the product information is also lost.

Example:
If an order containing a rare product is deleted, the system loses the information that the product ever existed.

Columns involved:
order_id, product_id, product_name

## Normalization Justification

Keeping all information in a single table may appear simple at first, but it creates serious problems when the dataset grows. The orders_flat dataset mixes information about customers, products, orders, and sales representatives in a single table. This design leads to data redundancy and multiple types of anomalies.

For example, customer information such as customer name and city may appear in many rows because the same customer can place multiple orders. If the customer changes their address or city, the update must be performed in every row where that customer appears. Missing even one row will lead to inconsistent data.

Similarly, product information such as product name and price is repeated across multiple orders. If the price of a product changes, all rows must be updated. This creates update anomalies and increases the chance of errors.

Another issue is delete anomalies. If an order row is deleted and that row contained the only reference to a product or sales representative, important information about that entity is permanently lost.

Normalization solves these issues by separating the data into multiple related tables such as Customers, Products, Orders, and Sales Representatives. Each table stores information about one entity, and relationships are maintained using primary keys and foreign keys.

By normalizing the schema to Third Normal Form (3NF), redundancy is minimized, updates become easier, and the overall data integrity of the system improves significantly.

