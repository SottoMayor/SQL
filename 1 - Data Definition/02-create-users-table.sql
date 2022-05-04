-- The POSTGRES approach to define ENUMs
CREATE TYPE employment_status AS ENUM('employed', 'self-employed', 'unemployed');

CREATE TABLE IF NOT EXISTS users (
    yearly_salary INT,
    full_name VARCHAR(255),
    current_status employment_status
);