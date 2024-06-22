-- SELECT title, genre_id + studio_id AS summ
-- FROM movies
-- WHERE title = 'Gladiator';
-- SELECT ac.full_name, dir.full_name
-- FROM actors AS ac, directors AS dir
-- WHERE ac.full_name LIKE 'Se%';
-- SELECT nationality_id, count(*) AS summ
-- FROM actors
-- WHERE birth_year > '1950-1-1'
-- GROUP BY nationality_id
-- HAVING count(*) <= 5
-- ORDER BY summ DESC;
-- LIMIT 10 OFFSET 10;
-- CONSTRAINT uniq_m_a UNIQUE(movie_id, actorid)
-- SELECT actor_id, count(*) sum
-- FROM movies_actors
-- GROUP BY actor_id
-- ORDER BY sum DESC;
-- SELECT m.title
-- FROM movies m 
-- JOIN movies_actors AS ma
-- USING (movie_id)
-- WHERE ma.actor_id = (SELECT actor_id
-- FROM actors
-- WHERE full_name LIKE 'Sig%')
SELECT full_name,
    birth_year
FROM actors ac
    JOIN movies_actors ma -- ON ac.actor_id = ma.actor_id
    USING(actor_id)
WHERE ma.movie_id = (
        SELECT movie_id
        FROM movies -- WHERE title LIKE 'Vik%'
        WHERE title ~ '^Vik\w+'
    )
ORDER BY birth_year;