-- SELECT * FROM memberships;

-- SELECT (price * billing_frequency) AS annual_revenue FROM memberships;

-- SELECT SUM(price * billing_frequency) AS total_annual_revenue FROM memberships;

-- CEIL() | FLOOR() | ROUND() | TRUNC() -> postgres TRUNCATE -> mysql
SELECT TRUNC(consumption, 0) FROM memberships;
