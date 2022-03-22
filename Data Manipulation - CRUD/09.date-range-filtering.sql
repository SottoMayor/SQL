-- SELECT * FROM sales_table WHERE date_created > '2021-09-12';

-- SELECT * FROM sales_table WHERE date_created >= '2021-09-12' AND date_created <= '2022-09-12';

-- SELECT * FROM sales_table WHERE date_created BETWEEN '2021-09-12' AND '2022-09-12';

SELECT * FROM sales_table WHERE volume BETWEEN 1000 AND 5000