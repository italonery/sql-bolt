/*Find the number of movies each director has directed*/

SELECT movies.director,
       COUNT(boxoffice.movie_id) AS movies_number
FROM movies
JOIN boxoffice ON movies.id = boxoffice.movie_id
GROUP BY movies.director;

/*Find the total domestic and international sales that can be attributed to each director*/

SELECT movies.director,
       SUM(boxoffice.international_sales) + SUM(boxoffice.domestic_sales) AS total_sales
FROM movies
JOIN boxoffice ON movies.id = boxoffice.movie_id
GROUP BY movies.director;
