-- SELECT actor_id, count(*)
-- FROM movies_actors
-- GROUP BY actor_id
-- ORDER BY count;
-- SELECT title, release_year "year"
-- FROM movies m
-- JOIN movies_actors ma
-- -- USING(movie_id)
-- ON m.movie_id = ma.movie_id
-- WHERE actor_id = (SELECT actor_id
--     FROM actors
--     WHERE full_name ~'^Cate Bl\w+'
-- );
-- SELECT title, release_year "year"
-- FROM movies m 
-- JOIN movies_directors
-- USING(movie_id)
-- WHERE director_id = (SELECT director_id
-- FROM directors
-- WHERE full_name LIKE 'Ridl%'
-- );
-- Vikings
SELECT full_name,
    birth_year "year"
FROM actors
    JOIN movies_actors USING(actor_id)
WHERE movie_id = (
        SELECT movie_id
        FROM movies
        WHERE title LIKE 'Vik%'
    )
ORDER BY "year";