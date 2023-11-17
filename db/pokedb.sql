CREATE TABLE trainers (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    instagram_profile VARCHAR(255) NOT NULL
);

CREATE TABLE pokemon (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    experience INT NOT NULL,
    trainer_id INT,
    FOREIGN KEY (trainer_id) REFERENCES trainers(id)
);

CREATE TABLE abilities (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE pokemon_abilities (
    pokemon_id INT,
    ability_id INT,
    PRIMARY KEY (pokemon_id, ability_id),
    FOREIGN KEY (pokemon_id) REFERENCES pokemon(id),
    FOREIGN KEY (ability_id) REFERENCES abilities(id)
);
