-- SELECT customer_name,
--     product_name
-- FROM (
--         SELECT *
--         FROM sales_table
-- WHERE volume > 1000 ) AS base_result;


-- Below is a more elegant and reusable way, the VIEW stores a query not a table!

-- CREATE VIEW base_result AS (
--     SELECT *
--     FROM sales_table
--     WHERE volume > 1000
-- );

SELECT customer_name product_name from base_result;
