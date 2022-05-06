-- The INTERVAL type...
-- SELECT last_checkout - last_checkin AS interval FROM memberships;


-- SELECT (membership_end - membership_start) AS membership_interval 
-- FROM memberships WHERE membership_end IS NOT NULL;

-- Using the function NOW()
SELECT (NOW() - membership_start) AS membership_interval 
FROM memberships WHERE membership_end IS NULL;


