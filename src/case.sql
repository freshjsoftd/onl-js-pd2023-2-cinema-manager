SELECT CASE
        WHEN nationality_id = 1 THEN 'USA'
        WHEN nationality_id = 2 THEN 'GB'
        WHEN nationality_id = 3 THEN 'UA'
        WHEN nationality_id = 4 THEN 'DE'
        WHEN nationality_id = 5 THEN 'FR'
        WHEN nationality_id = 6 THEN 'AUS'
        WHEN nationality_id = 7 THEN 'BEL'
        WHEN nationality_id = 8 THEN 'BRA'
        WHEN nationality_id = 9 THEN 'GE'
        WHEN nationality_id = 10 THEN 'DK'
        WHEN nationality_id = 11 THEN 'IL'
    END national,
    count(*) summ
FROM actors
WHERE nationality_id <= 11
GROUP BY nationality_id
ORDER BY summ DESC,
    national;