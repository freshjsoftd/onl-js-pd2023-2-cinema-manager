SELECT ac.full_name,
       dir.full_name
FROM actors AS ac,
     directors AS dir
WHERE ac.full_name LIKE 'S%'
AND dir.full_name LIKE 'M%';