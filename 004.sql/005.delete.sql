/* DELETE - Es para eliminar registros */
-- Eliminar un actor específico por su id

SELECT * FROM actor;
DELETE FROM actor WHERE actor_id = 210; 

-- Eliminar un actor por su nombre y apellido
DELETE FROM actor WHERE first_name = 'Lucia' AND last_name = 'Lopez';

-- Eliminar todos los actores que tengan un apellido especifico
DELETE FROM actor WHERE last_name = 'Tellez';

-- Eliminar todos los actores. NO FUNCIONA POR FOREING KEYS Y SAFE MODE
DELETE FROM actor;



