/*List all the Canadian cities and their populations*/

SELECT city,
       population
FROM north_american_cities
WHERE country = 'Canada';

/*Order all the cities in the United States by their latitude from north to south*/

SELECT city
FROM north_american_cities
WHERE country = 'United States'
ORDER BY latitude DESC;

/*
    List all the cities west of Chicago, ordered from west to east

    To solve this situation, we have consider that lontitude is:
        west = more negative
        east = more positive
*/

SELECT city
FROM north_american_cities
WHERE longitude < (SELECT longitude
                   FROM north_american_cities
                   WHERE city = 'Chicago')
ORDER BY longitude ASC;

/*List the two largest cities in Mexico (by population)*/

SELECT city
FROM north_american_cities
WHERE country = 'Mexico'
ORDER BY population DESC
LIMIT 2;

/*List the third and fourth largest cities (by population) in the United States and their population*/

SELECT city,
       population
FROM north_american_cities
WHERE country = 'United States'
ORDER BY population DESC
LIMIT 2
OFFSET 2;
