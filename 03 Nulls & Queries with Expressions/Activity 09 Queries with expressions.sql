-- 1. List all movies and their combined sales in millions of dollars
SELECT title, (domestic_sales + international_sales)/1000000 AS combined_sales
FROM movies
JOIN boxoffice ON id= movie_id

-- 2. List all movies and their ratings in percent
SELECT title, rating * 10 AS percent_rating
FROM movies
JOIN boxoffice ON id= movie_id

-- 3. List all movies that were released on even number years
SELECT title, year FROM movies WHERE year%2 = 0