use sakila;

-- 1. ¿Qué consulta ejecutarías para obtener todos los clientes dentro de city_id = 312? 
-- Su consulta debe devolver el nombre, apellido, correo electrónico y dirección del cliente.

select * from customer;
select * from city where city_id = 312;
select * from address where city_id = 312;

select first_name, last_name, email, address_id from customer;

SELECT city, customer.first_name, customer.last_name, customer.email, address.address
FROM city
JOIN address
ON city.city_id = address.city_id
JOIN customer
ON address.address_id = customer.address_id
WHERE city.city_id = 312;


-- 2.¿Qué consulta harías para obtener todas las películas de comedia? Su consulta debe 
-- devolver el título de la película, la descripción, el año de estreno, la calificación, 
-- las características especiales y el género (categoría).





