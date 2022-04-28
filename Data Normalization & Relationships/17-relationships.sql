CREATE TABLE buildings (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE teams (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    building_id INT REFERENCES buildings (id) ON DELETE SET NULL
);

CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    birthdate DATE NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    team_id INT DEFAULT 1 REFERENCES teams (id) ON DELETE SET DEFAULT
);

CREATE TABLE intranet_accounts (
    id SERIAL PRIMARY KEY,
    email VARCHAR(255) REFERENCES employees (email) ON DELETE CASCADE,
    password VARCHAR(255) NOT NULL
);

CREATE TABLE projects (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    deadline TIMESTAMP NOT NULL
);

CREATE TABLE employees_projects (
    id SERIAL PRIMARY KEY,
    employer_id INT REFERENCES employees (id) ON DELETE CASCADE,
    project_id INT REFERENCES projects (id) ON DELETE CASCADE
);
