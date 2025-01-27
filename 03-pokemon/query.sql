-- What pokemon belongs to Brock?


SELECT
  t.name,
  p.id,
  p.name
FROM
  trainers t
JOIN
  trainersPokemon tp
ON
  tp.trainerId = t.id
JOIN
  pokemon p
ON
  tp.pokemonId = p.id
WHERE
  t.name = 'Brock'



-- What gym does Brock belong to?

SELECT
  t.name,
  g.name
FROM
  gyms g
JOIN
  trainers t
ON
  t.id = g.leaderId
WHERE
  t.name LIKE '%B%'



-- What trainer has a pokemon with both Water and Psychic types

SELECT
  t.name,
  p.id AS pokemonId,
  p.name,
  p.typeOne,
  p.typeTwo
FROM
  trainers t
JOIN
  trainersPokemon tp
ON
  tp.trainerId = t.id
JOIN
  pokemon p
ON
  tp.pokemonId = p.id
WHERE
  typeOne = 'Water' AND typeTwo = 'Psychic'
