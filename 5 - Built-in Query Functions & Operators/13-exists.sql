-- SELECT first_name || ' ' || last_name AS "name"
-- FROM customers
-- WHERE email = 'max@test.com';

-- Key concept->EXISTS() returns a BOOLEAN -- SELECT EXISTS(
--     SELECT first_name || ' ' || last_name AS "name"
--     FROM customers
--     WHERE email = 'max@test.com'
-- );


-- We can use EXISTS sometimes to replace the use of joins, since EXISTS can be used as subquery!

-- Below the result with JOINS
-- SELECT o.id
-- FROM orders AS o
--     INNER JOIN customers AS c ON o.customer_id = c.id
-- WHERE email = 'manu@test.com';

-- Below the result with EXISTS
SELECT o.id FROM orders AS o
WHERE EXISTS(
    SELECT c.email FROM customers AS c
    WHERE o.customer_id = c.id AND c.email = 'manu@test.com'
);