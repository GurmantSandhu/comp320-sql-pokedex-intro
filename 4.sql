
SELECT DISTINCT s.identifier
FROM pokemon_species s
INNER JOIN pokemon_egg_groups peg ON s.id = peg.species_id
INNER JOIN egg_groups eg ON peg.egg_group_id = eg.id
INNER JOIN pokemon_habitats h ON s.habitat_id = h.id
WHERE eg.identifier = 'humanshape'
   OR h.identifier = 'urban'
ORDER BY s.identifier;