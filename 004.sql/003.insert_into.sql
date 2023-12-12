
/* INSERT - Insertar datos en las tablas. 
Agrega nuevos registros 
*/
-- Insertar un nuevo actor con nombre Juan y apellido López
INSERT INTO actor (first_name, last_name) VALUE ('Juan', 'Lopez');
SELECT * FROM actor;
-- Insertar una actriz con nombre "Maria" y apellido "Garcia"
INSERT INTO actor (first_name, last_name) VALUE ('Maria', 'Garcia');

/* Cuando se insertan valores en todas la columnas, se puede omitir el nombre de las columnas. Solo se va agregando contenido de la fila en orden*/
INSERT INTO actor VALUES (206, 'Roberto', 'Garza', '2020-10-10 22:22:22');

-- insertar en la tabla "Category" una nueva categoría
-- dos filas, una con id autogenerado, y una con un id dado
SELECT * FROM category;
INSERT INTO category (name) VALUE ('Gore');
INSERT INTO category VALUES (18, 'Country', '2020-10-10 12:12:12');

-- insertar 4 registros (filas) de actores, solo agregando nombre y apellido
SELECT * FROM actor;
INSERT INTO actor (first_name, last_name) 
VALUES ('Maria', 'Garcia'),
('Marcos', 'Tellez'),
('Lucia', 'Lopez'),
('Fernanda', 'Olivera');




