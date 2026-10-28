SELECT p.identifier
FROM pokemon p
INNER JOIN pokemon_species s ON p.species_id = s.id
WHERE s.is_legendary = 1
ORDER BY s.identifier, p.identifier;