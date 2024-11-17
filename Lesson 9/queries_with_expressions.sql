/*List all movies and their combined sales in milions of dollars*/

SELECT movies.title,
       boxoffice.domestic_sales,
       boxoffice.international_sales,
       (domestic_sales + international_sales) / 1000000 AS total_milion_sales
FROM movies
JOIN boxoffice ON movies.id = boxoffice.movie_id;

/*List all movies and their ratings in percent*/

SELECT movies.title,
       ROUND(boxoffice.rating / 10, 2) * 100 AS percent_rating
FROM movies
JOIN boxoffice ON movies.id = boxoffice.movie_id
ORDER BY percent_rating DESC;

/*List all movies that were released on even number years*/

SELECT title,
       year
FROM movies
WHERE year % 2 = 0;
