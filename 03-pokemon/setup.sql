-- Run this file with `cat 03-pokemon/setup.sql | sqlite3 03-pokemon.db`


DROP TABLE IF EXISTS pokemon;
DROP TABLE IF EXISTS trainers;
DROP TABLE IF EXISTS gyms;
DROP TABLE IF EXISTS trainersPokemon;

CREATE TABLE pokemon (
  id         INTEGER      NOT NULL,
  name       VARCHAR(255) NOT NULL,
  typeOne    VARCHAR(255) NOT NULL,
  typeTwo    VARCHAR(255) NULL,
  PRIMARY KEY(id)
);

CREATE TABLE trainers (
  id       INTEGER      NOT NULL,
  name     VARCHAR(255) NOT NULL,
  PRIMARY KEY(id)
);

CREATE TABLE gyms (
  id       INTEGER      NOT NULL,
  name     VARCHAR(255) NOT NULL,
  leaderId INTEGER      NOT NULL,
  PRIMARY KEY(id),
  FOREIGN KEY(leaderId) REFERENCES trainers(id)
);

CREATE TABLE trainersPokemon (
  id        INTEGER NOT NULL,
  trainerId INTEGER NOT NULL,
  pokemonId INTEGER NOT NULL,
  PRIMARY KEY(id),
  FOREIGN KEY(trainerId) REFERENCES trainers(id),
  FOREIGN KEY(pokemonId) REFERENCES pokemon(id)
);

INSERT INTO
  trainers (id, name)
VALUES
  (NULL, 'Ash'),
  (NULL, 'Misty'),
  (NULL, 'Brock'),
  (NULL, 'Lt. Surge'),
  (NULL, 'Erika'),
  (NULL, 'Team Rocket');

INSERT INTO
  gyms (id, name, leaderId)
VALUES
  (NULL, 'Pewter Gym', 3),
  (NULL, 'Cerulean Gym', 2),
  (NULL, 'Vermilion Gym', 4),
  (NULL, 'Celadon Gym', 5);

INSERT INTO
  trainersPokemon (id, trainerId, pokemonId)
VALUES
  (NULL, 1, 1),
  (NULL, 1, 4),
  (NULL, 1, 7),
  (NULL, 1, 25),
-- Misty
  (NULL, 2, 121),
  (NULL, 2, 54),
  (NULL, 2, 118),
-- Brock
  (NULL, 3, 74),
  (NULL, 3, 95),
  (NULL, 3, 140),
-- Lt. Surge
  (NULL, 4, 125),
  (NULL, 4, 82),
  (NULL, 4, 81),
-- Erika
  (NULL, 5, 44),
  (NULL, 5, 70),
  (NULL, 5, 114);

INSERT INTO
  pokemon (id, name, typeOne, typeTwo)
VALUES
  (NULL, 'Bulbasaur', 'Grass', 'Poison'),
  (NULL, 'Ivysaur', 'Grass', 'Poison'),
  (NULL, 'Venusaur', 'Grass', 'Poison'),
  (NULL, 'Charmander', 'Fire', NULL),
  (NULL, 'Charmeleon', 'Fire', NULL),
  (NULL, 'Charizard', 'Fire', 'Flying'),
  (NULL, 'Squirtle', 'Water', NULL),
  (NULL, 'Wartortle', 'Water', NULL),
  (NULL, 'Blastoise', 'Water', NULL),
  (NULL, 'Caterpie', 'Bug', NULL),
  (NULL, 'Metapod', 'Bug', NULL),
  (NULL, 'Butterfree', 'Bug', 'Flying'),
  (NULL, 'Weedle', 'Bug', 'Poison'),
  (NULL, 'Kakuna', 'Bug', 'Poison'),
  (NULL, 'Beedrill', 'Bug', 'Poison'),
  (NULL, 'Pidgey', 'Normal', 'Flying'),
  (NULL, 'Pidgeotto', 'Normal', 'Flying'),
  (NULL, 'Pidgeot', 'Normal', 'Flying'),
  (NULL, 'Rattata', 'Normal', NULL),
  (NULL, 'Raticate', 'Normal', NULL),
  (NULL, 'Spearow', 'Normal', 'Flying'),
  (NULL, 'Fearow', 'Normal', 'Flying'),
  (NULL, 'Ekans', 'Poison', NULL),
  (NULL, 'Arbok', 'Poison', NULL),
  (NULL, 'Pikachu', 'Electric', NULL),
  (NULL, 'Raichu', 'Electric', NULL),
  (NULL, 'Sandshrew', 'Ground', NULL),
  (NULL, 'Sandslash', 'Ground', NULL),
  (NULL, 'Nidoran', 'Poison', NULL),
  (NULL, 'Nidorina', 'Poison', NULL),
  (NULL, 'Nidoqueen', 'Poison', 'Ground'),
  (NULL, 'Nidoran', 'Poison', NULL),
  (NULL, 'Nidorino', 'Poison', NULL),
  (NULL, 'Nidoking', 'Poison', 'Ground'),
  (NULL, 'Clefairy', 'Fairy', NULL),
  (NULL, 'Clefable', 'Fairy', NULL),
  (NULL, 'Vulpix', 'Fire', NULL),
  (NULL, 'Ninetales', 'Fire', NULL),
  (NULL, 'Jigglypuff', 'Normal', 'Fairy'),
  (NULL, 'Wigglytuff', 'Normal', 'Fairy'),
  (NULL, 'Zubat', 'Poison', 'Flying'),
  (NULL, 'Golbat', 'Poison', 'Flying'),
  (NULL, 'Oddish', 'Grass', 'Poison'),
  (NULL, 'Gloom', 'Grass', 'Poison'),
  (NULL, 'Vileplume', 'Grass', 'Poison'),
  (NULL, 'Paras', 'Bug', 'Grass'),
  (NULL, 'Parasect', 'Bug', 'Grass'),
  (NULL, 'Venonat', 'Bug', 'Poison'),
  (NULL, 'Venomoth', 'Bug', 'Poison'),
  (NULL, 'Diglett', 'Ground', NULL),
  (NULL, 'Dugtrio', 'Ground', NULL),
  (NULL, 'Meowth', 'Normal', NULL),
  (NULL, 'Persian', 'Normal', NULL),
  (NULL, 'Psyduck', 'Water', NULL),
  (NULL, 'Golduck', 'Water', NULL),
  (NULL, 'Mankey', 'Fighting', NULL),
  (NULL, 'Primeape', 'Fighting', NULL),
  (NULL, 'Growlithe', 'Fire', NULL),
  (NULL, 'Arcanine', 'Fire', NULL),
  (NULL, 'Poliwag', 'Water', NULL),
  (NULL, 'Poliwhirl', 'Water', NULL),
  (NULL, 'Poliwrath', 'Water', 'Fighting'),
  (NULL, 'Abra', 'Psychic', NULL),
  (NULL, 'Kadabra', 'Psychic', NULL),
  (NULL, 'Alakazam', 'Psychic', NULL),
  (NULL, 'Machop', 'Fighting', NULL),
  (NULL, 'Machoke', 'Fighting', NULL),
  (NULL, 'Machamp', 'Fighting', NULL),
  (NULL, 'Bellsprout', 'Grass', 'Poison'),
  (NULL, 'Weepinbell', 'Grass', 'Poison'),
  (NULL, 'Victreebel', 'Grass', 'Poison'),
  (NULL, 'Tentacool', 'Water', 'Poison'),
  (NULL, 'Tentacruel', 'Water', 'Poison'),
  (NULL, 'Geodude', 'Rock', 'Ground'),
  (NULL, 'Graveler', 'Rock', 'Ground'),
  (NULL, 'Golem', 'Rock', 'Ground'),
  (NULL, 'Ponyta', 'Fire', NULL),
  (NULL, 'Rapidash', 'Fire', NULL),
  (NULL, 'Slowpoke', 'Water', 'Psychic'),
  (NULL, 'Slowbro', 'Water', 'Psychic'),
  (NULL, 'Magnemite', 'Electric', 'Steel'),
  (NULL, 'Magneton', 'Electric', 'Steel'),
  (NULL, 'Farfetch', ' ' ,'Normal'),
  (NULL, 'Doduo', 'Normal', 'Flying'),
  (NULL, 'Dodrio', 'Normal', 'Flying'),
  (NULL, 'Seel', 'Water', NULL),
  (NULL, 'Dewgong', 'Water', 'Ice'),
  (NULL, 'Grimer', 'Poison', NULL),
  (NULL, 'Muk', 'Poison', NULL),
  (NULL, 'Shellder', 'Water', NULL),
  (NULL, 'Cloyster', 'Water', 'Ice'),
  (NULL, 'Gastly', 'Ghost', 'Poison'),
  (NULL, 'Haunter', 'Ghost', 'Poison'),
  (NULL, 'Gengar', 'Ghost', 'Poison'),
  (NULL, 'Onix', 'Rock', 'Ground'),
  (NULL, 'Drowzee', 'Psychic', NULL),
  (NULL, 'Hypno', 'Psychic', NULL),
  (NULL, 'Krabby', 'Water', NULL),
  (NULL, 'Kingler', 'Water', NULL),
  (NULL, 'Voltorb', 'Electric', NULL),
  (NULL, 'Electrode', 'Electric', NULL),
  (NULL, 'Exeggcute', 'Grass', 'Psychic'),
  (NULL, 'Exeggutor', 'Grass', 'Psychic'),
  (NULL, 'Cubone', 'Ground', NULL),
  (NULL, 'Marowak', 'Ground', NULL),
  (NULL, 'Hitmonlee', 'Fighting', NULL),
  (NULL, 'Hitmonchan', 'Fighting', NULL),
  (NULL, 'Lickitung', 'Normal', NULL),
  (NULL, 'Koffing', 'Poison', NULL),
  (NULL, 'Weezing', 'Poison', NULL),
  (NULL, 'Rhyhorn', 'Ground', 'Rock'),
  (NULL, 'Rhydon', 'Ground', 'Rock'),
  (NULL, 'Chansey', 'Normal', NULL),
  (NULL, 'Tangela', 'Grass', NULL),
  (NULL, 'Kangaskhan', 'Normal', NULL),
  (NULL, 'Horsea', 'Water', NULL),
  (NULL, 'Seadra', 'Water', NULL),
  (NULL, 'Goldeen', 'Water', NULL),
  (NULL, 'Seaking', 'Water', NULL),
  (NULL, 'Staryu', 'Water', NULL),
  (NULL, 'Starmie', 'Water', 'Psychic'),
  (NULL, 'MrMime', 'Psychic', 'Fairy'),
  (NULL, 'Scyther', 'Bug', 'Flying'),
  (NULL, 'Jynx', 'Ice', 'Psychic'),
  (NULL, 'Electabuzz', 'Electric', NULL),
  (NULL, 'Magmar', 'Fire', NULL),
  (NULL, 'Pinsir', 'Bug', NULL),
  (NULL, 'Tauros', 'Normal', NULL),
  (NULL, 'Magikarp', 'Water', NULL),
  (NULL, 'Gyarados', 'Water', 'Flying'),
  (NULL, 'Lapras', 'Water', 'Ice'),
  (NULL, 'Ditto', 'Normal', NULL),
  (NULL, 'Eevee', 'Normal', NULL),
  (NULL, 'Vaporeon', 'Water', NULL),
  (NULL, 'Jolteon', 'Electric', NULL),
  (NULL, 'Flareon', 'Fire', NULL),
  (NULL, 'Porygon', 'Normal', NULL),
  (NULL, 'Omanyte', 'Rock', 'Water'),
  (NULL, 'Omastar', 'Rock', 'Water'),
  (NULL, 'Kabuto', 'Rock', 'Water'),
  (NULL, 'Kabutops', 'Rock', 'Water'),
  (NULL, 'Aerodactyl', 'Rock', 'Flying'),
  (NULL, 'Snorlax', 'Normal', NULL),
  (NULL, 'Articuno', 'Ice', 'Flying'),
  (NULL, 'Zapdos', 'Electric', 'Flying'),
  (NULL, 'Moltres', 'Fire', 'Flying'),
  (NULL, 'Dratini', 'Dragon', NULL),
  (NULL, 'Dragonair', 'Dragon', NULL),
  (NULL, 'Dragonite', 'Dragon', 'Flying'),
  (NULL, 'Mewtwo', 'Psychic', NULL),
  (NULL, 'Mew', 'Psychic', NULL);

