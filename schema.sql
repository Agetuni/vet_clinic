CREATE DATABASE vet_clinic;
CREATE TABLE animals ( id INT GENERATED BY DEFAULT AS IDENTITY, name CHAR(80), date_of_birth DATE, escape_attempts INT, neutered BOOLEAN, weight_kg DOUBLE PRECISION);
--
ALTER TABLE animals ADD species CHAR(50);

--
CREATE TABLE owners(id INT GENERATED ALWAYS AS IDENTITY,full_name VARCHAR(255),age INT,PRIMARY KEY(id));
CREATE TABLE species(id INT GENERATED ALWAYS AS IDENTITY,name VARCHAR(25),PRIMARY KEY(id));
--to do
ALTER TABLE animals ALTER column id Set GENERATED ALWAYS;
ALTER TABLE animals DROP COLUMN species;
ALTER TABLE animals ADD species_id INT REFERENCES species(id);
ALTER TABLE animals ADD owner_id INT REFERENCES owners(id);