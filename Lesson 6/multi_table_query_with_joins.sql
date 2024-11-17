/*Find the domestic and international sales for each movie*/

SELECT movies.title,
       boxoffice.domestic_sales AS domestic,
       boxoffice.international_sales AS international
FROM movies
JOIN boxoffice ON movies.id = boxoffice.movie_id;

/*Show the sales numbers for each movie that did better internationally rather than domestically*/

SELECT movies.title,
       boxoffice.domestic_sales,
       boxoffice.international_sales,
       (domestic_sales + international_sales) AS sales_number
FROM movies
JOIN boxoffice ON movies.id = boxoffice.movie_id
WHERE domestic_sales < international_sales;

/*List all the movies by their ratings in descending order*/

SELECT movies.title,
       boxoffice.rating
FROM movies
JOIN boxoffice ON movies.id = boxoffice.movie_id
ORDER BY rating DESC;
