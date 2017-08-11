/*
 Homework Assignment 8-11
 Org Chart
 */
 
DROP TABLE IF EXISTS org;

CREATE TABLE org
(
employee_id int NOT NULL,
employee_name varchar(30) NOT NULL,
employee_title varchar(50) NOT NULL,
supervisor_id int NULL
);

INSERT INTO org (employee_id, employee_name, employee_title, supervisor_id) VALUES (1, 'Michael Scott', 'CEO', NULL);
INSERT INTO org (employee_id, employee_name, employee_title, supervisor_id) VALUES (2, 'Jim Halpert', 'VP Sales', 1);
INSERT INTO org (employee_id, employee_name, employee_title, supervisor_id) VALUES (3, 'Dwight Schrute', 'Assistant TO the CEO', 1);
INSERT INTO org (employee_id, employee_name, employee_title, supervisor_id) VALUES (4, 'Pam Beesly', 'Executive Assistant', 2);
INSERT INTO org (employee_id, employee_name, employee_title, supervisor_id) VALUES (5, 'Erin Hannon', 'Executive Assistant', 2);
INSERT INTO org (employee_id, employee_name, employee_title, supervisor_id) VALUES (6, 'Ryan Howard', 'Intern', 3);
INSERT INTO org (employee_id, employee_name, employee_title, supervisor_id) VALUES (7, 'Angela Kinsey', 'Sales Associate', 3);

Select
employees.employee_name AS `Employee`,
employees.employee_title AS 'Title',
supervisors.employee_name AS `Supervisor`
FROM org AS employees
Left Join org AS supervisors
on employees.supervisor_id = supervisors.employee_id
ORDER BY `Employee`

