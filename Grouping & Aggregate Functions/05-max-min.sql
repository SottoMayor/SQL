-- Applied to numbers
-- SELECT MAX(seats) from tables;
-- SELECT MIN(seats) from tables;

-- Combined query with aggregate functions
-- SELECT MAX(amount_billed) AS max_billed, MIN(amount_tipped) AS min_tipped FROM bookings;

-- Applied to strings
-- SELECT MAX(category) AS max_category_name, MIN(category) AS min_category_name FROM tables;

-- Applied to dates
SELECT MAX(booking_date), MIN(booking_date) from bookings;