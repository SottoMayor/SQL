
-- This not work!!!!
-- CREATE VIEW users_group_1 AS (SELECT * FROM users WHERE id < 3);
-- -- CREATE VIEW users_group_2 AS (SELECT * FROM users WHERE id > 5);
-- users_group_1 UNION users_group_2;

-- This works!
-- SELECT * FROM users WHERE id < 3 UNION  SELECT * FROM users WHERE id > 5;

-- This is an example of unusable data which we can receive with union data
SELECT id, first_name from users UNION SELECT id, name FROM cities ORDER BY id;