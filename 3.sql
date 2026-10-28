
SELECT t.identifier, COUNT(pt.pokemon_id)
FROM types t
INNER JOIN pokemon_types pt ON t.id = pt.type_id
GROUP BY t.identifier
ORDER BY t.identifier;