CREATE TABLE sales_table (
    id SERIAL PRIMARY KEY,
    date_created DATE DEFAULT CURRENT_DATE,
    date_fulfilled DATE,
    customer_name VARCHAR(255) NOT NULL,
    product_name VARCHAR(255) NOT NULL,
    volume NUMERIC(10,2) CHECK( volume >= 0) NOT NULL,
    is_recurring BOOLEAN DEFAULT FALSE,
    is_disputed BOOLEAN DEFAULT FALSE
)