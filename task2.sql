SELECT name, age, weight_in_kg 
FROM pet

SELECT * 
FROM pet
ORDER BY -age;

SELECT * 
FROM pet
ORDER BY -age, -weight_in_kg;

SELECT * 
FROM pet
ORDER BY -weight_in_kg
OFFSET 1
LIMIT 4

SELECT * 
FROM pet
WHERE age >= 5 AND weight_in_kg > 5

SELECT owner_id 
FROM pet 
WHERE owner_id IS NOT NULL 
GROUP BY owner_id 
ORDER BY owner_id;

SELECT * 
FROM pet 
WHERE owner_id IS NULL