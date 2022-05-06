-- SELECT first_name LIKE 'Max' from memberships;

-- % is generic and _ is specific
-- SELECT first_name FROM memberships WHERE first_name LIKE '_o%';

-- Case insensitive in PostgreSQL -> ILIKE
SELECT first_name FROM memberships WHERE first_name ILIKE 'j____';
