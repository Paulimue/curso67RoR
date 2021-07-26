use world;

-- ¿Qué consulta ejecutarías para mostrar el número total de ciudades para cada país?--
-- Su consulta debe devolver el nombre del país y el número total de ciudades. --
-- Tu consulta debe organizar el resultado por el número de ciudades en orden descendente. --
select countries.name, count(cities.id) as cantidad_ciudades
from countries
join cities
on countries.id = cities.country_id 
group by countries.name 
order by cantidad_ciudades desc;


-- ¿Qué consulta harías para obtener todas las ciudades de México con una población de más de 
-- 500,000? Tu consulta debe organizar el resultado por población en orden descendente.--
select * from countries where name like '%mexi%';
select name, population, country_id
from cities
where country_id = 136 -- o where country.id = Mexico--
order by population desc;

-- ¿Qué consulta ejecutarías para obtener todos los idiomas en cada país con un porcentaje 
-- superior al 89%? Tu consulta debe organizar el resultado por porcentaje en orden descendente.--






