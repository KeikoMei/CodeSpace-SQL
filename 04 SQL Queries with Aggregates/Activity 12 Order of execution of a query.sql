-- 1. Find the number of movies each director has directed
SELECT director, COUNT (director) FROM movies GROUP BY director

-- 2. Find the total domestic and international sales that can be attributed to each director
SELECT director, SUM (domestic_sales + international_sales) as sales
FROM movies
JOIN boxoffice ON id=movie_id
GROUP BY director

