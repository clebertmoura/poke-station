-- CRIA A BASE DE DADOS DO KEYCLOAK
CREATE USER keycloak WITH PASSWORD 'keycloak@admin';
CREATE DATABASE dbkeycloak WITH OWNER = keycloak ENCODING = 'UTF8';

-- CRIA A BASE DE DADOS DO POKE STATION
CREATE TABLE ability
(
    id bigint NOT NULL,
    name character varying(255),
    CONSTRAINT ability_pkey PRIMARY KEY (id)
);

CREATE TABLE pokemon
(
    id bigint NOT NULL,
    experience integer,
    name character varying(255),
    trainer_id bigint,
    CONSTRAINT pokemon_pkey PRIMARY KEY (id),
    CONSTRAINT pokemon_fk_trainer_id FOREIGN KEY (trainer_id) REFERENCES trainer (id)
);

CREATE TABLE pokemon_ability
(
    pokemon_id bigint NOT NULL,
    ability_id bigint NOT NULL,
    CONSTRAINT pokemon_ability_fk_ability_id FOREIGN KEY (ability_id)
        REFERENCES ability (id),
    CONSTRAINT pokemon_ability_fk_pokemon_id FOREIGN KEY (pokemon_id)
        REFERENCES pokemon (id)
);

CREATE TABLE trainer
(
    id bigint NOT NULL,
    email character varying(255),
    instagram_link character varying(255),
    name character varying(255),
    CONSTRAINT trainer_pkey PRIMARY KEY (id)
);

CREATE SEQUENCE seq_ability
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;
CREATE SEQUENCE seq_pokemon
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;
CREATE SEQUENCE seq_trainer
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;


-- Insert test data for 'ability' table
INSERT INTO ability (id, name) VALUES
    (nextval('seq_ability'), 'Electric Shock'),
    (nextval('seq_ability'), 'Fire Blast'),
    (nextval('seq_ability'), 'Aqua Jet'),
    (nextval('seq_ability'), 'Earthquake'),
    (nextval('seq_ability'), 'Ice Beam'),
    (nextval('seq_ability'), 'Thunderbolt'),
    (nextval('seq_ability'), 'Solar Beam'),
    (nextval('seq_ability'), 'Hydro Pump'),
    (nextval('seq_ability'), 'Psychic'),
    (nextval('seq_ability'), 'Shadow Ball'),
    (nextval('seq_ability'), 'Dragon Pulse');

-- Insert test data for 'trainer' table
INSERT INTO trainer (id, name, email, instagram_link) VALUES
    (nextval('seq_trainer'), 'Ash Ketchum', 'ash@example.com', 'ash_ketchum_insta'),
    (nextval('seq_trainer'), 'Misty Waterflower', 'misty@example.com', 'misty_insta'),
    (nextval('seq_trainer'), 'Brock Pewter', 'brock@example.com', 'brock_insta'),
    (nextval('seq_trainer'), 'Gary Oak', 'gary@example.com', 'gary_insta'),
    (nextval('seq_trainer'), 'Serena Kalos', 'serena@example.com', 'serena_insta'),
    (nextval('seq_trainer'), 'May Hoenn', 'may@example.com', 'may_insta'),
    (nextval('seq_trainer'), 'Dawn Sinnoh', 'dawn@example.com', 'dawn_insta'),
    (nextval('seq_trainer'), 'Cynthia Elite', 'cynthia@example.com', 'cynthia_insta'),
    (nextval('seq_trainer'), 'Red Kanto', 'red@example.com', 'red_insta'),
    (nextval('seq_trainer'), 'Ethan Johto', 'ethan@example.com', 'ethan_insta'),
    (nextval('seq_trainer'), 'Nate Unova', 'nate@example.com', 'nate_insta');

-- Insert test data for 'pokemon' table
INSERT INTO pokemon (id, name, experience, trainer_id) VALUES
    (nextval('seq_pokemon'), 'Pikachu', 100, 1),
    (nextval('seq_pokemon'), 'Charmander', 80, 1),
    (nextval('seq_pokemon'), 'Squirtle', 90, 2),
    (nextval('seq_pokemon'), 'Bulbasaur', 85, 3),
    (nextval('seq_pokemon'), 'Vulpix', 75, 4),
    (nextval('seq_pokemon'), 'Eevee', 110, 4),
    (nextval('seq_pokemon'), 'Gyarados', 120, 5),
    (nextval('seq_pokemon'), 'Lapras', 95, 6),
    (nextval('seq_pokemon'), 'Garchomp', 130, 7),
    (nextval('seq_pokemon'), 'Lucario', 105, 8),
    (nextval('seq_pokemon'), 'Snorlax', 150, 9),
    (nextval('seq_pokemon'), 'Typhlosion', 115, 10);

-- Insert test data for 'pokemon_ability' table
INSERT INTO pokemon_ability (pokemon_id, ability_id) VALUES
    (1, 1), -- Pikachu has Electric Shock ability
    (2, 2), -- Charmander has Fire Blast ability
    (3, 3), -- Squirtle has Aqua Jet ability
    (4, 1), -- Bulbasaur has Electric Shock ability
    (4, 3), -- Bulbasaur has Aqua Jet ability
    (5, 2), -- Vulpix has Fire Blast ability
    (6, 4), -- Eevee has Earthquake ability
    (7, 5), -- Gyarados has Ice Beam ability
    (8, 6), -- Lapras has Thunderbolt ability
    (9, 7), -- Garchomp has Solar Beam ability
    (10, 8), -- Lucario has Hydro Pump ability
    (11, 9), -- Snorlax has Psychic ability
    (12, 10); -- Typhlosion has Shadow Ball ability
