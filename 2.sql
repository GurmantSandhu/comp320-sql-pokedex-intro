

SELECT p.identifier, COUNT(pt.type_id)
FROM pokemon p
INNER JOIN pokemon_types pt ON p.id = pt.pokemon_id
GROUP BY p.identifier
ORDER BY p.identifier;