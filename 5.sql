
SELECT p.identifier, a.identifier
FROM pokemon p
INNER JOIN pokemon_abilities pa ON p.id = pa.pokemon_id
INNER JOIN abilities a ON pa.ability_id = a.id
WHERE pa.is_hidden = 1
ORDER BY p.identifier limit 10;