CREATE TABLE customers (
    customer_id VARCHAR(10) PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    city VARCHAR(100) NOT NULL
);

CREATE TABLE products (
    product_id VARCHAR(10) PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    price INT NOT NULL
);

CREATE TABLE sales_reps (
    rep_id VARCHAR(10) PRIMARY KEY,
    rep_name VARCHAR(100) NOT NULL
);

CREATE TABLE orders (
    order_id VARCHAR(10) PRIMARY KEY,
    customer_id VARCHAR(10),
    order_date DATE,
    total_amount INT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY,
    order_id VARCHAR(10),
    product_id VARCHAR(10),
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO customers VALUES
('CUST001','Rahul Sharma','Mumbai'),
('CUST002','Anita Verma','Delhi'),
('CUST003','Amit Gupta','Bangalore'),
('CUST004','Neha Kapoor','Mumbai'),
('CUST005','Rohit Mehta','Pune');

INSERT INTO products VALUES
('PROD001','Laptop',65000),
('PROD002','Headphones',2999),
('PROD003','Keyboard',1999),
('PROD004','Mouse',999),
('PROD005','Monitor',12000);

INSERT INTO sales_reps VALUES
('REP001','Arjun Singh'),
('REP002','Karan Patel'),
('REP003','Riya Shah'),
('REP004','Aman Verma'),
('REP005','Sneha Iyer');

INSERT INTO orders VALUES
('ORD1001','CUST001','2023-01-10',65000),
('ORD1002','CUST002','2023-02-05',2999),
('ORD1003','CUST003','2023-03-11',12000),
('ORD1004','CUST004','2023-04-20',1999),
('ORD1005','CUST005','2023-05-12',999);

INSERT INTO order_items VALUES
(1,'ORD1001','PROD001',1),
(2,'ORD1002','PROD002',1),
(3,'ORD1003','PROD005',1),
(4,'ORD1004','PROD003',1),
(5,'ORD1005','PROD004',1);

