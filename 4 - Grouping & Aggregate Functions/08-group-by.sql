-- Here we can mix aggregate functions with other querys
SELECT booking_date,
    SUM(guests) AS total_guest_day
FROM bookings
GROUP BY booking_date
ORDER BY booking_date;