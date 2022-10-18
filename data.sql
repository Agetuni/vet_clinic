/* Populate database with sample data. */
INSERT INTO animals VALUES (1,'Agumon', '03-02-2020',0,true,10.23);
INSERT INTO animals VALUES (3,'Gabumon', '15-11-2018',2,true,8);
INSERT INTO animals VALUES (4,'Pikachu', '7-01-2021',1,false,15.04);
INSERT INTO animals VALUES (2,'Devimon', '12-05-2017',5,true,11);

--
INSERT INTO animals VALUES (5,'Charmander', '2020-02-08',0,false,11);
INSERT INTO animals VALUES (6,'Plantmon', '2021-11-15',2,true,5.7);
INSERT INTO animals VALUES (7,'Squirtle', '1993-04-02',3,false,12.13);
INSERT INTO animals VALUES (8,'Angemon', '2005-06-12',1,true,45);
INSERT INTO animals VALUES (9,'Boarmon', '2005-07-07',7,true,20.4);
INSERT INTO animals VALUES (10,'Blossom', '1998-10-13',3,true,17);
INSERT INTO animals VALUES (11,'Ditto', '2022-05-14',4,true,22);

--
INSERT INTO owners (full_name, age) VALUES('Sam Smith', 34);
INSERT INTO owners (full_name, age) VALUES('Jennifer Orwell', 19);
INSERT INTO owners (full_name, age) VALUES('Bob', 45);
INSERT INTO owners (full_name, age) VALUES('Melody Pond', 77);
INSERT INTO owners (full_name, age) VALUES('Dean Winchester', 14);
INSERT INTO species (name) VALUES('Pokemon'), ('Digimon');
ALTER TABLE animals ADD CONSTRAINT fk_species FOREIGN KEY(species_id) REFERENCES species(id);
UPDATE animals SET species_id=2 WHERE name LIKE '%mon%';
UPDATE animals SET species_id=1 WHERE species_id IS NULL;
ALTER TABLE animals ADD CONSTRAINT fk_owner FOREIGN KEY(owner_id) REFERENCES owners(id);
UPDATE animals SET owner_id=1 WHERE name = 'Agumon';
UPDATE animals SET owner_id=2 WHERE name = 'Gabumon';
UPDATE animals SET owner_id=2 WHERE name = 'Pikachu';
UPDATE animals SET owner_id=3 WHERE name = 'Devimon';
UPDATE animals SET owner_id=3 WHERE name = 'Plantmon';
UPDATE animals SET owner_id=4 WHERE name = 'Charmander';
UPDATE animals SET owner_id=4 WHERE name = 'Squirtle';
UPDATE animals SET owner_id=4 WHERE name = 'Blossom';
UPDATE animals SET owner_id=5 WHERE name = 'Angemon';
UPDATE animals SET owner_id=5 WHERE name = 'Boarmon';