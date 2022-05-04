-- SELECT p.name,
--     SUM(guests) AS total_guest_day
-- FROM bookings AS b
--     INNER JOIN payment_methods AS p ON b.payment_method_id = p.id
-- GROUP BY p.name;

SELECT p.name, b.booking_date,
    SUM(guests) AS total_guest_day
FROM bookings AS b
    INNER JOIN payment_methods AS p ON b.payment_method_id = p.id
GROUP BY p.name, b.booking_date
ORDER BY b.booking_date;