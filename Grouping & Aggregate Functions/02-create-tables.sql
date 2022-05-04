CREATE TYPE table_category AS ENUM('SMALL', 'MEDIUM', 'LARGE');
CREATE TYPE payment_method_name AS ENUM('CASH', 'CREDIT');

CREATE TABLE IF NOT EXISTS tables (
    id SERIAL PRIMARY KEY,
    seats INTEGER CHECK(seats > 0) NOT NULL DEFAULT 1,
    category table_category
);

CREATE TABLE IF NOT EXISTS payment_methods (
    id SERIAL PRIMARY KEY,
    name payment_method_name
);

CREATE TABLE IF NOT EXISTS bookings (
    id SERIAL PRIMARY KEY,
    booking_date DATE NOT NULL,
    guests INTEGER CHECK(guests > 0) NOT NULL,
    amount_billed FLOAT CHECK(amount_billed > 0) NOT NULL,
    amount_tipped FLOAT CHECK(amount_tipped >= 0),
    table_id INTEGER REFERENCES tables (id) ON DELETE NO ACTION ON UPDATE CASCADE,
    payment_method_id INTEGER REFERENCES payment_methods ON DELETE NO ACTION ON UPDATE CASCADE
)