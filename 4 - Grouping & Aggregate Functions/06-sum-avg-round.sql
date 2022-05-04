-- SELECT SUM(amount_billed) FROM bookings;
-- SELECT SUM(amount_tipped) FROM bookings;
-- SELECT ROUND(SUM(amount_billed) + SUM(amount_tipped)) AS total FROM bookings;

-- USING THE CAST OPERATOR!
-- NOTE: THE AVG OPERATOR IGNORE THE NULLs ENTRIES, SUCH AS IF 20 RECORDS AND 2 IS NULL THEN THE AVG IS BASED ONLY IN 18 NOT NULL RECORDS
SELECT ROUND(AVG(amount_tipped::numeric), 2) AS avg_amount_tipped FROM bookings;