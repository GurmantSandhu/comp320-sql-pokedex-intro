
SELECT COUNT(DISTINCT p.id)
FROM pokemon p
INNER JOIN pokemon_species s ON p.species_id = s.id
INNER JOIN pokemon_abilities pa ON p.id = pa.pokemon_id
WHERE pa.is_hidden = 1
AND s.is_legendary = 1;