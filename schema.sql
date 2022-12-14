/* Database schema to keep the structure of entire database. */

CREATE TABLE animals (
    id INT GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(100) NOT NULL,
    date_of_birth DATE NOT NULL,
    escape_attempts INT NOT NULL,
    neutered BOOLEAN NOT NULL,
    weight_kg DECIMAL NOT NULL,
    PRIMARY KEY(id)
);
ALTER TABLE animals ADD species VARCHAR;

CREATE TABLE owners(
    id INT GENERATED ALWAYS AS IDENTITY,
    full_name VARCHAR,
    age INT,
    PRIMARY KEY(id)
);

CREATE TABLE species(
    id INT GENERATED ALWAYS AS IDENTITY,
    name VARCHAR,
    PRIMARY KEY(id)
);

ALTER TABLE animals DROP COLUMN species;
ALTER TABLE animals
    ADD species_id INT,
    ADD CONSTRAINT animal_species FOREIGN KEY(species_id) REFERENCES species(id);
ALTER TABLE animals
    ADD owner_id INT,
    ADD CONSTRAINT animal_owner FOREIGN KEY(species_id) REFERENCES owners(id);

CREATE TABLE vets(
    id INT GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(25),
    age INT,
    date_of_graduation DATE,
    PRIMARY KEY(id)
);

CREATE TABLE specializations (
    id INT GENERATED ALWAYS AS IDENTITY,
    species_id INT,
    vet_id INT,
    FOREIGN KEY (species_id) REFERENCES species (id),
    FOREIGN KEY (vet_id) REFERENCES vets (id)
);

CREATE TABLE visits (
    id INT GENERATED ALWAYS AS IDENTITY,
    date_of_visit DATE,
    animal_id INT,
    vet_id INT,
    PRIMARY KEY (id),
    FOREIGN KEY (animal_id)
    REFERENCES animals (id),
    FOREIGN KEY (vet_id) REFERENCES vets (id)
);

ALTER TABLE owners ADD COLUMN email VARCHAR(120);

CREATE INDEX IF NOT EXISTS an_idx ON visits USING btree (animal_id ASC NULLS LAST) TABLESPACE pg_default;
CREATE INDEX vet_idx ON visits (vet_id ASC NULLS LAST);
CREATE INDEX e_idx ON owners (email ASC NULLS LAST);
