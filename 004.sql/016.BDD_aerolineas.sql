
-- crear nueva base de datos
CREATE DATABASE IF NOT EXISTS aerolinea;
-- usar esta base de datos
USE aerolinea;
-- crear tablas, aviones y vuelos
-- asociación many-to-one, cada vuelo está asociado a un solo avión
-- cadas avión puede realizar múltiples vuelos
CREATE TABLE aviones(
avion_id INT AUTO_INCREMENT PRIMARY KEY,
modelo VARCHAR(50),
capacidad INT
);
CREATE TABLE vuelos(
vuelo_id INT AUTO_INCREMENT PRIMARY KEY,
destino VARCHAR(50),
fecha DATE,
avion_id INT,
FOREIGN KEY(avion_id) REFERENCES aviones(avion_id)
);

-- insertar datos a aviones y vuelos
INSERT INTO aviones (modelo, capacidad) VALUES
('Modelo 1', 50),
('Modelo 2', 60),
('Modelo 3', 100);
INSERT INTO vuelos (destino, fecha, avion_id) VALUES
('Nueva York', '2023-12-15', 1),
('Londres', '2023-12-16', 2),
('Tokio', '2023-12-24', 1);
INSERT INTO vuelos (destino, fecha) VALUES
('Mexico', '2023-12-30'),
('Italia', '2023-12-20');
-- consultas
-- INNER JOIN (aquí no hay nulos)
-- consulta para mostrar cada vuelo con el modelo de avión asociado
/* SELECT tablaA.columna1, tablaB.columna2
-- FROM tablaA -- tabla izquierda
-- INNER JOIN tablaB ON tablaA.columna_clave = TablaB.columna_clave */

SELECT vuelos.destino, vuelos.fecha, aviones.modelo
FROM vuelos 
INNER JOIN aviones ON vuelos.avion_id = aviones.avion_id;

-- LEFT JOIN
-- consulta para mostrar todos los aviones (left) y los vuelos(right) asociados a ellos,
-- incluyendo los aviones sin vuelos asignados
/* SELECT tablaA.columna1, tablaB.columna2
-- FROM tablaA -- tabla izquierda
-- LEFT JOIN tablaB ON tablaA.columna_clave = TablaB.columna_clave */
SELECT aviones.modelo, vuelos.destino
FROM aviones 
LEFT JOIN vuelos ON aviones.avion_id = vuelos.avion_id;

-- RIGHT JOIN
-- mostrar todos los vuelos(r) y aviones(left) asignados a ellos, incluyendo vuelos 
-- que no tiene un avión asignado
/* SELECT tablaA.columna1, tablaB.columna2
-- FROM tablaA -- tabla izquierda
-- RIGHT JOIN tablaB ON tablaA.columna_clave = TablaB.columna_clave */
SELECT aviones.modelo, aviones.capacidad, vuelos.destino
FROM aviones
RIGHT JOIN vuelos ON aviones.avion_id = vuelos.avion_id;

-- utilizar un Right Join para mostrar todos los vuelos y los modelos de aviones
-- asociados, ordenado por fecha (desc)
-- si no especifico que el ORDER BY sea DESC, por default lo ordena ASC
SELECT aviones.modelo, vuelos.destino, vuelos.fecha
FROM aviones
RIGHT JOIN vuelos ON aviones.avion_id = vuelos.avion_id
ORDER BY vuelos.fecha DESC;

-- consulta que devuelva los destinos y fechas de vuelos para un modelo de avión específico (modelo 1)
SELECT aviones.modelo, vuelos.destino, vuelos.fecha
FROM aviones
INNER JOIN vuelos ON aviones.avion_id = vuelos.avion_id
WHERE aviones.modelo = 'Modelo 1';
