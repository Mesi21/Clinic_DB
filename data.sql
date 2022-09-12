/* Populate database with sample data. */

-- INSERT INTO animals (name) VALUES ('Luna');
-- INSERT INTO animals (name) VALUES ('Daisy');
-- INSERT INTO animals (name) VALUES ('Charlie');
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES ('Agumon', '2020-02-03', 0, TRUE, 10.23);
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES ('Gabumon', '2018-11-15', 2, TRUE, 8);
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES ('PIKACHU', '2021-01-07', 1, FALSE, 15.04);
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES ('Devimon', '2017-05-12', 5, TRUE, 11);
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES ('CHARMANDER', '2021-02-08',0, False, -11),
       ('PLANTMON', '2021-11-15', 2, True, -5.7),
       ('SQUIRTLE', '1993-04-02', 3, False, -12.13),
       ('ANGEMON', '2005-06-12', 1, True, -45),
       ('BOARMON', '2005-06-07', 7, True, 20.4),
       ('BLOSSOM', '1998-10-13', 3, True, 17),
       ('DITTO', '2022-05-14', 4, True, 22)
;
