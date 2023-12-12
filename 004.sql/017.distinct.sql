
-- DISTINCT: elimina registros duplicados de los resultados de una búsqueda
-- es útil cuando se desea mostrar solo los resultados únicos

-- utilizar la BAse de datos SAKILA
USE sakila;
-- consulta de todas las columnas y filas de una tabla
SELECT * FROM actor; -- 207 filas

SELECT first_name FROM actor; -- 207 filas

-- consulta del first_name de la tabla actor y que los ordene por el first_name
-- si no pongo nel DESC lo pone en  ASC por default
SELECT first_name FROM actor ORDER BY first_name;

-- consulta del first_name de la tabla actor, sin nombres repetidos
SELECT DISTINCT first_name FROM actor;

-- consulta del release_year de la tabla film (peliculas)
SELECT DISTINCT release_year FROM film;
