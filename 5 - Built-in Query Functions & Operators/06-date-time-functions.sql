SELECT EXTRACT(
        DAY
        FROM last_checkin
    ) AS day,
    EXTRACT(
        MONTH
        FROM last_checkin
    ) AS month,
    EXTRACT(
        YEAR
        FROM last_checkin
    ) AS year,
    last_checkin
FROM memberships;

-- SELECT EXTRACT(MINUTE FROM last_checkin), last_checkin FROM memberships;