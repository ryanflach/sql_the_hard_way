-- Add a dead column to person that's like the one in pet.
ALTER TABLE person ADD COLUMN dead INTEGER;

-- Add a phone_number column to person.
ALTER TABLE person ADD COLUMN phone_number VARCHAR(15);

-- Add a salary column to person that is float.
ALTER TABLE person ADD COLUMN salary FLOAT(2);

-- Add a dob column to both person and pet that is a DATETIME.
ALTER TABLE person ADD COLUMN dob DATETIME;
ALTER TABLE pet ADD COLUMN dob DATETIME;

-- Add a purchased_on column to person_pet of type DATETIME.
ALTER TABLE person_pet ADD COLUMN purchased_on DATETIME;

-- Add a parent to pet column that's an INTEGER and holds the id for this pet's parent.
ALTER TABLE pet ADD COLUMN parent INTEGER;

-- Update the existing database records with the new column data using UPDATE statements. Don't forget about the purchased_on column in person_pet relation table to indicate when that person bought the pet.
UPDATE person SET dead = 0;
UPDATE person SET phone_number = '1-800-876-5309';
UPDATE person SET salary = 59000.00;
UPDATE person SET dob = '1960-05-10';
UPDATE pet SET dob = '2016-01-01';
UPDATE pet SET parent = NULL WHERE name = 'Fluffy';
UPDATE pet SET parent = 0 WHERE name = 'Gigantor';
UPDATE person_pet SET purchased_on = '2016-02-14';

-- Add 4 more people and 5 more pets and assign their ownership and what pet's are parents. On this last part remember that you get the id of the parent, then set it in the parent column.
INSERT INTO person (id, first_name, last_name, age, dead, phone_number, salary, dob)
  VALUES (1, 'Ryan', 'Flach', 31, 0, '1-800-000-1234', 0.00, '1985-01-01');
INSERT INTO person VALUES (2, 'Sam', 'Smith', 12, 0, '1-800-000-1234', 0.00, '2004-01-01');
INSERT INTO person VALUES (3, 'Charles', 'Barkley', 46, 0, '1-800-000-1234', 100000.00, '1970-01-01');
INSERT INTO person VALUES (4, 'Wilson', 'Strange', 19, 0, '1-800-000-1234', 25000.00, '1997-01-01');

INSERT INTO pet (id, name, breed, age, dead, dob, parent)
  VALUES (2, 'Stanley', 'Boston Terrier', 5, 0, '2011-01-01', 0);
INSERT INTO pet VALUES (3, 'Jake', 'German Shepherd', 7, 1, '2009-01-01', 0);
INSERT INTO pet VALUES (4, 'Max', 'German Shepher', 9, 1, '2007-01-01', 0);
INSERT INTO pet VALUES (5, 'Karim', 'Wolf', 3, 0, '2013-01-01', 4);
INSERT INTO pet VALUES (6, 'Alaura', 'Cat', 13, 1, '2003-01-01', 0);

INSERT INTO person_pet (person_id, pet_id, purchased_on)
  VALUES (2, 2, '2015-01-01');
INSERT INTO person_pet VALUES (1, 3, '2010-09-01');
INSERT INTO person_pet VALUES (3, 4, '2008-01-01');
INSERT INTO person_pet VALUES (4, 5, '2016-01-01');
INSERT INTO person_pet VALUES (1, 6, '2003-01-01');

-- Write a query that can find all the names of pets and their owners bought after 2004.
-- Key to this is to map the person_pet based on the purchased_on column to the pet and parent.

-- Write a query that can find the pets that are children of a given pet. Again look at the pet.parent to do this. It's actually easy so don't over think it.
