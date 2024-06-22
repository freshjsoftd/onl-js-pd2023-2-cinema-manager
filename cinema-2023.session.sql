SELECT CASE
        WHEN nationality_id = 1 THEN 'USA'
        WHEN nationality_id = 2 THEN 'UK'
        WHEN nationality_id = 3 THEN 'UA'
        WHEN nationality_id = 4 THEN 'DE'
        WHEN nationality_id = 5 THEN 'FR'
        WHEN nationality_id = 6 THEN 'AUS'
        WHEN nationality_id = 10 THEN 'DK'
        WHEN nationality_id = 13 THEN 'IE'
        WHEN nationality_id = 15 THEN 'CA'
        WHEN nationality_id = 16 THEN 'CN'
        WHEN nationality_id = 30 THEN 'NZ'
        WHEN nationality_id = 31 THEN 'PUR'
        WHEN nationality_id = 32 THEN 'MLT'
        WHEN nationality_id = 33 THEN 'BEN'
        WHEN nationality_id = 34 THEN 'SWE'
        WHEN nationality_id = 35 THEN 'FIN'
        WHEN nationality_id = 36 THEN 'RU'
        WHEN nationality_id = 37 THEN 'ISL'
    END AS national,
    count(nationality_id)
FROM actors
GROUP BY nationality_id
ORDER BY count DESC;