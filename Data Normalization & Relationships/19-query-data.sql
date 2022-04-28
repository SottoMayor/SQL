-- SELECT employees.id as employee_id,
--     first_name,
--     last_name,
--     name as team_name
-- FROM employees
--     INNER JOIN teams ON employees.team_id = teams.id
-- WHERE employees.first_name LIKE 'M%';

-- SELECT first_name, last_name, title as project_name, email
-- from employees
--     LEFT JOIN employees_projects ON employees.id = employees_projects.employer_id
--     LEFT JOIN projects ON projects.id = employees_projects.project_id
--     ORDER BY first_name ASC;

-- SELECT first_name, last_name, title as project_name, email
-- from employees
--     LEFT JOIN employees_projects ON employees.id = employees_projects.employer_id
--     INNER JOIN projects ON projects.id = employees_projects.project_id
--     ORDER BY first_name ASC;

-- SELECT emp.id as employeer_id, emp.first_name, emp.last_name, name as employee_name
-- FROM employees AS emp
--     INNER JOIN teams AS t ON emp.team_id = t.id
--     WHERE t.id = 2;

SELECT emp.first_name, emp.last_name, b.name as building_name
FROM employees AS emp
    INNER JOIN teams as t ON emp.team_id = t.id
    INNER JOIN buildings AS b ON t.building_id = b.id
    WHERE b.id = 3;