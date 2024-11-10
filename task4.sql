SELECT COUNT(pet.id) 
FROM pet;

SELECT COUNT(pet.kind_id) kind_counter, pet_kind.name 
FROM pet 
JOIN pet_kind ON pet.kind_id = pet_kind.id 
GROUP BY pet_kind.name;

SELECT COUNT(pet.kind_id) kind_counter, pet_kind.name 
FROM pet 
JOIN pet_kind ON pet.kind_id = pet_kind.id 
GROUP BY pet_kind.name 
ORDER BY COUNT(pet_kind.name) ASC;

SELECT SUM(pet.weight_in_kg) kind_weight, pet_kind.name 
FROM pet 
JOIN pet_kind ON pet.kind_id = pet_kind.id 
GROUP BY pet_kind.name;

SELECT SUM(pet.weight_in_kg) kind_weight, pet_kind.name 
FROM pet 
JOIN pet_kind ON pet.kind_id = pet_kind.id 
GROUP BY pet_kind.name 
HAVING SUM(pet.weight_in_kg) > 10;

SELECT pet_owner.name, count(pet.owner_id)
FROM pet_owner
JOIN pet ON pet_owner.id = pet.owner_id
GROUP BY pet_owner.name
ORDER BY count(pet.owner_id) DESC
LIMIT 1

SELECT pet_owner.name, count(pet.owner_id)
FROM pet_owner
JOIN pet ON pet_owner.id = pet.owner_id
WHERE pet.kind_id = 2
GROUP BY pet_owner.name
ORDER BY count(pet.owner_id) DESC
LIMIT 1

SELECT ROUND(AVG(pet.age), 2) average_pet_age, pet_owner.name owner_name 
FROM pet 
JOIN pet_owner ON pet_owner.id = pet.owner_id 
GROUP BY pet_owner.id;