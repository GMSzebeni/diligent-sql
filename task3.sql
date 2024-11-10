SELECT pet.*, pet_kind.name kind_name 
FROM pet 
JOIN pet_kind ON pet.kind_id = pet_kind.id;

SELECT pet_owner.name, pet.* 
FROM pet_owner 
JOIN pet ON pet_owner.id = pet.owner_id

SELECT pet_owner.name, pet.* 
FROM pet_owner 
RIGHT JOIN pet ON pet_owner.id = pet.owner_id

SELECT pet.*, pet_owner.name owner_name 
FROM pet 
RIGHT JOIN pet_owner ON pet.owner_id = pet_owner.id;

SELECT pet.*, pet_owner.name owner_name 
FROM pet 
FULL JOIN pet_owner ON pet.owner_id = pet_owner.id;