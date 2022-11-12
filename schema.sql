/* Database schema to keep the structure of entire database. */

-- Day1

CREATE TABLE animals(
	id integer PRIMARY KEY NOT NULL,
	name varchar(20),
	date_of_birth date NOT NULL,
	escape_attempts integer NOT NULL,
	neutered boolean NOT NULL,
	weight_kg decimal NOT NULL
);

-- Day2

ALTER TABLE animals ADD species varchar(255);

-- Day3

CREATE TABLE owners(
	id integer PRIMARY KEY NOT NULL,
	full_name VARCHAR(100) NOT NULL,
	age integer
);

CREATE TABLE species (
    id integer PRIMARY KEY NOT NULL,
    name varchar(400)
);

ALTER TABLE animals DROP COLUMN species;

ALTER TABLE animals ADD species_id integer, ADD FOREIGN KEY (species_id) REFERENCES species(id);

ALTER TABLE animals ADD owner_id integer, ADD FOREIGN KEY (owner_id) REFERENCES owners(id);
