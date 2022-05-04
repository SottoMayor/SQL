-- That returns a RESULT SET
SELECT
    'Result ->',
    date_created,
    customer_name,
    product_name,
    volume/1000 AS total_sales
FROM sales_table;