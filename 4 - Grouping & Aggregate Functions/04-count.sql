-- SELECT COUNT(*) FROM bookings;

-- SELECT COUNT(amount_tipped) from bookings;

-- SELECT COUNT(booking_date) FROM bookings;
SELECT COUNT(DISTINCT booking_date) FROM bookings;