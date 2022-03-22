-- SELECT * FROM sales_table WHERE date_fulfilled IS NOT NULL;

SELECT * FROM sales_table WHERE (date_fulfilled - date_created) <= 5;

-- If we're working with timestamps, we can use EXTRACT
-- SELECT * FROM sales_table WHERE EXTRACT(DAY FROM date_fulfilled - date_created) <= 5;