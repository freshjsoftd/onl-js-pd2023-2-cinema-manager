SELECT movie_id,
    actor_id,
    count(*) summ
FROM movies_actors -- GROUP BY GROUPING SETS ((movie_id), (actor_id), ())
GROUP BY ROLLUP (movie_id, actor_id);