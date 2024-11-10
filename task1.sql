INSERT INTO pet_owner (name, age) 
VALUES ("Gabi", 37);

INSERT INTO pet (name, age, weight_in_kg, kind_id, owner_id) 
VALUES ("Ka", 2, 3.1, 3, 11);

UPDATE pet 
SET name = 'Mr Ka' 
WHERE id = 19;

UPDATE pet 
SET age += 5 
WHERE age > 5;

DELETE FROM pet 
WHERE name = Simba;