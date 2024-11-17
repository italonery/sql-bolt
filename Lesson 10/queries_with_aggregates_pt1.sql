/*Find the longest time than an employee has been at the studio*/

SELECT MAX(years_employed) AS longest_time_employee
FROM employees;

/*For each role, find the avarega number of years employed by employees in that role*/

SELECT role, 
       AVG(years_employed) AS average_years_employed
FROM employees
GROUP BY role;

/*Find the total number of employee years worked in each building*/

SELECT building,
       SUM(years_employed) AS total_years_worked
FROM employees
GROUP BY building;
