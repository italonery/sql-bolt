/*Find the name and role of all employees who have not been assigned to a building*/

SELECT name,
       role
FROM employees
WHERE building IS NULL;

SELECT b.building_name
FROM buildings AS b
LEFT JOIN employees AS e ON b.building_name = e.building
WHERE e.name IS NULL;
