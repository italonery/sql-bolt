/*Find the number of Artists in the studio (without a HAVING clause)*/

SELECT COUNT(role) AS total_artists
FROM employees
WHERE role = 'Artist';

/*Find the number of employees of each role in the studio*/

SELECT role,
       COUNT(*) AS total_employees
FROM employees
GROUP BY role;

/*Find the total number of years employed by all Engineers*/

SELECT SUM(years_employed) AS engineer_employed_years
FROM employees
WHERE role = 'Engineer';
