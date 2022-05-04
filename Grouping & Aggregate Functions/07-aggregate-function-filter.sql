-- A.F. with JOINS
-- SELECT MAX(b.guests) AS max_guest,
--     MAX(t.seats) AS max_seats
-- FROM bookings AS b
--     INNER JOIN tables as t ON b.table_id = t.id;

-- A.F. with WHERE filters
-- SELECT ROUND(AVG(amount_tipped::numeric), 2) FROM bookings
-- WHERE amount_billed > 15 AND guests > 2;

-- A.F. with WHERE filters and JOINS
SELECT MIN(t.seats) AS min_seats, MAX(b.amount_billed) 
AS max_billed, MAX(amount_tipped) AS max_tipped
FROM bookings AS b INNER JOIN tables AS t ON b.table_id = t.id
INNER JOIN payment_methods AS p ON b.payment_method_id = p.id
WHERE t.category != 'SMALL' AND p.name = 'CASH';