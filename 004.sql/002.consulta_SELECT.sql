
-- para usar base de datos también se puede utilizar. HAy que ejecutar USE SAKILA para que entre en la base de datos
USE sakila;
-- Consultar  o recuperar datos de una o varias tablas (* ES PARA TODAS LAS COLUMNAS)
SELECT * FROM actor;
SELECT * FROM category;
-- Consultar eligiendo las columnas y especificando de qué tabla (en este caso la primera y segunda columna)
SELECT actor_id, first_name FROM actor;
SELECT actor_id, first_name, last_update FROM actor;

-- Consultar de una tabla
SELECT * FROM city;
-- Consultar eligiendo las columnas
SELECT city_id, city FROM city;
-- Consulta con where
SELECT actor_id, first_name FROM actor WHERE actor_id > 5;
SELECT * FROM actor WHERE first_name = "JULIA";

-- Consulta con where donde seleccione dos apellidos
SELECT * FROM actor WHERE last_name IN ('MCQUEEN', 'BARRYMORE');

-- consultar todas las columnas de la tabla fila
SELECT * FROM film;
-- Consultar de la tabla de film, con 3 columnas y la condicion de que el film_id >500
SELECT film_id, title, description FROM film WHERE film_id > 500;

-- seleccionar a los actores que no tengan cierto apellido = MCQUEEN
SELECT * FROM actor WHERE last_name != 'MCQUEEN';
SELECT * FROM actor WHERE actor_id != 4;

-- Seleccionar películas con duración mayor a 60 y menor a 100 minutos
SELECT * FROM film WHERE length > 60 AND length < 100;

-- Seleccionar film con duración mayor a 60minutos, que traiga todas las columnas
SELECT * FROM film WHERE length > 60;

-- Seleccionar en la tabla de customer que la columna "active" sea true
SELECT * FROM customer WHERE active = true AND (address_id <50 OR address_id >=100);

-- Seleccionar todos los customers que no tengan el last_name williams
SELECT * FROM customer WHERE NOT last_name = 'williams';
-- Seleccionar todos los qu eno tienen store_id = 2
SELECT * FROM customer WHERE NOT active = true;
SELECT * FROM customer WHERE NOT store_id = 2;

-- Operador de coincidencia de patrones
-- Seleccionar todos los actores cuyo nombre comience con la letra "a"
SELECT * FROM actor WHERE first_name LIKE 'A%';
-- Seleccionar todos los actores cuyo apellido comience con la letra "s"
SELECT * FROM actor WHERE last_name LIKE 'S%';
-- Seleccionar todos los actores cuyo apellido termienen con la letra "s"
SELECT * FROM actor WHERE last_name LIKE '%s';

-- Operadores de rango 
-- Seleccionar películas con una duración entre 90 y 120 minutos inclusive
SELECT * FROM film WHERE length BETWEEN 90 AND 120;

-- Seleccionar películas con ciertas clasificaciones específicas
SELECT * FROM film WHERE rating IN ('PG', 'G'); 

-- Seleccionar películas ordenadas por su duración (lenght) de manera descendente
SELECT * FROM film ORDER BY length DESC;

-- Seleccionar películas ordenadas alfabéticamente por título
SELECT * FROM film ORDER BY title;










