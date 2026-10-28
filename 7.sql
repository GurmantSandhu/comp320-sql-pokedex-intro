

SELECT n.name, sh.identifier, h.identifier, f.flavor_text
FROM pokemon_species s
INNER JOIN pokemon_species_names n ON s.id = n.pokemon_species_id
INNER JOIN languages l ON n.local_language_id = l.id
INNER JOIN pokemon_species_flavor_text f ON s.id = f.species_id AND f.language_id = l.id
INNER JOIN pokemon_shapes sh ON s.shape_id = sh.id
INNER JOIN pokemon_habitats h ON s.habitat_id = h.id
WHERE l.identifier = 'fr'
AND sh.identifier = 'humanoid'
ORDER BY n.name;