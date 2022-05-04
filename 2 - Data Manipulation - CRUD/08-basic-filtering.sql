-- SELECT * FROM sales_table WHERE volume > 1000;

-- SELECT * FROM sales_table WHERE is_recurring IS TRUE;

-- SELECT * FROM sales_table WHERE (is_disputed IS TRUE) OR (volume > 5000);

SELECT * FROM sales_table WHERE (is_disputed IS TRUE) AND (volume > 5000);

