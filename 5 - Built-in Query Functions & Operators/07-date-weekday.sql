-- PostgreSQL approach -> DOW and ISODOW
-- One number = One weekday
-- SELECT EXTRACT(ISODOW FROM last_checkin), last_checkin FROM memberships;

-- PostgreSQL approach -> Extract date and time of Timestamp record
-- We use the so-called sufixes
SELECT last_checkin::TIMESTAMP::DATE AS "date", last_checkin::TIMESTAMP::TIME AS "time"
FROM memberships;
