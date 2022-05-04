-- SELECT * FROM sales_table ORDER BY volume DESC LIMIT 10;

-- SELECT * FROM sales_table ORDER BY volume ASC LIMIT 10;

-- SELECT * FROM sales_table WHERE is_recurring is TRUE  ORDER BY volume ASC LIMIT 3;

SELECT * FROM sales_table WHERE is_recurring is TRUE  ORDER BY volume DESC LIMIT 3 OFFSET 1;