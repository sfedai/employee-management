INSERT INTO department (name)
VALUES ('Legal'),
    ('Sales'),
    ('Engineering');
INSERT INTO roles (title, salary, department_id)
VALUES ('Legal Team Lead', 250000, 1),
    ('Lawyer', 170000, 1),
    ('Sales Lead', 100000, 2),
    ('Salesperson', 70000, 2),
    ('Lead Engineer', 150000, 3),
    ('Engineer', 120000, 3);
INSERT INTO employee (
        first_name,
        last_name,
        role_id,
        manager_id,
        manager_confirm
    )
VALUES ('Jerry', 'Seinfield', 1, null, true),
    ('Bob', 'Sheldon', 2, 1, false),
    ('Jason', 'Mendoza', 2, 1, false),
    ('Michael', 'Jackson', 3, null, true),
    ('Peter', 'Parker', 4, 2, false),
    ('Alison', 'Decker', 4, 2, false),
    ('Jeffery', 'Winger', 4, 2, false),
    ('Pete', 'McFall', 5, null, true),
    ('Alexis', 'Day', 6, 3, false),
    ('Robert', 'Johnson', 6, 3, false);
INSERT INTO manager (first_name, last_name)
SELECT first_name,
    last_name
FROM employee
WHERE manager_confirm = 1;