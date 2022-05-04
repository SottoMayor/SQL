INSERT INTO buildings (name)
VALUES 
  ('Main Building'), 
  ('Research Lab'), 
  ('Darkroom');

INSERT INTO teams (name, building_id)
VALUES 
  ('Admin', 1), 
  ('Data Analysts', 3),
  ('R&D', 2);

INSERT INTO employees 
  (first_name, last_name, birthdate, email, team_id)
VALUES 
  ('Julie', 'Barnes', '1988-10-01', 'julie1@test.com', 3),
  ('Max', 'Schwarz', '1989-06-10', 'max1@test.com', 1),
  ('Manuel', 'Lorenz', '1987-01-29', 'manu1@test.com', 2),
  ('Michael', 'Smith', '1977-05-12', 'michael1@test.com', 2);

INSERT INTO intranet_accounts (email, password)
VALUES 
  ('max1@test.com', 'abcae1'),
  ('manu1@test.com', 'fdasfdas1'),
  ('julie1@test.com', 'adsfsaf3'),
  ('michael1@test.com', 'adsfsaf3');

INSERT INTO projects (title, deadline)
VALUES 
  ('Mastering SQL', '2024-10-01'),
  ('New Hire Onboarding', '2022-02-28'),
  ('New Course Evaluation', '2022-01-01');

INSERT INTO employees_projects (employer_id, project_id)
VALUES 
  (1, 2),
  (2, 2),
  (1, 3),
  (3, 1),
  (3, 3),
  (2, 3);