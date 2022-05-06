-- SELECT amount_billed,
--         (
--         CASE WHEN amount_billed > 15 AND amount_billed <= 30 THEN 'Normal day'
--              WHEN amount_billed > 30 THEN 'Good day'
--              ELSE 'Bad day'
--         END
--         ) AS day_statement
-- FROM orders;

-- The conditional can help us with writter more clear and intuitive queries.
-- SELECT * from memberships
SELECT last_checkin, extract_dayweek, (
    CASE WHEN extract_dayweek = 1 THEN 'Monday'
         WHEN extract_dayweek = 2 THEN 'Tuesday'
         WHEN extract_dayweek = 3 THEN 'Wednesday'
         WHEN extract_dayweek = 4 THEN 'Thursday'
         WHEN extract_dayweek = 5 THEN 'Friday'
         WHEN extract_dayweek = 6 THEN 'Saturday'
         WHEN extract_dayweek = 7 THEN 'Sunday'
    END
) AS day_last_checking
FROM (
    SELECT EXTRACT(ISODOW FROM last_checkin) 
        AS extract_dayweek, last_checkin
    FROM memberships
) AS extract_dayweeks;

