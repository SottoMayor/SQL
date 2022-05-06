-- IN operator should simplify our query, it can perform a query more shorter

-- Not using IN
-- SELECT first_name || ' ' || last_name FROM customers
-- WHERE email != 'max@test.com' AND email != 'manu@test.com';

-- Using IN
-- SELECT first_name || ' ' || last_name FROM customers
-- WHERE email NOT IN('max@test.com', 'manu@test.com');

-- In addition, we can use IN with subqueries!
SELECT id, first_name || ' ' || last_name FROM customers
WHERE id IN (
    SELECT customer_id FROM orders
)
ORDER BY id ASC;