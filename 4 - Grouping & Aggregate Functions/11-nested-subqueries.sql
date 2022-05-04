SELECT booking_date
FROM bookings
GROUP BY booking_date
HAVING SUM(amount_billed) = (
    SELECT MIN(daily_billed)
    FROM (
            SELECT booking_date,
                SUM(amount_billed) AS daily_billed
            FROM bookings
            GROUP BY booking_date
        ) AS daily_table
);