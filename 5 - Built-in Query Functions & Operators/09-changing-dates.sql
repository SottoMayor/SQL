-- We can add a DAY interval!
-- SELECT membership_start - 7 AS start_limit,
--     membership_end,
--     membership_end + 7 AS end_limit
-- FROM memberships;

-- For months or years, is the follow...
SELECT membership_end,
    (membership_end + INTERVAL '7 MONTHS')::TIMESTAMP::DATE
    AS plus_7_months
FROM memberships;