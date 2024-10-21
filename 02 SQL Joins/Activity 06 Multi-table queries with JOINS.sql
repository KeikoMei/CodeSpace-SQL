-- 1. Find the domestic and international sales for each movie
SELECT title, domestic_sales, international_sales
FROM movies
INNER JOIN boxoffice ON id=movie_id

-- 2. Show the sales numbers for each movie that did better internationally rather than domestically
SELECT title, domestic_sales, international_sales
FROM movies
INNER JOIN boxoffice ON id=movie_id
WHERE domestic_sales < international_sales

-- 3. List all the movies by their ratings in descending order
SELECT title, rating
FROM movies
INNER JOIN boxoffice ON id=movie_id
ORDER BY rating DESC
