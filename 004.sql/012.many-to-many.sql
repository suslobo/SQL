
-- crear base de datos Concesionario
CREATE DATABASE IF NOT EXISTS concesionario;
-- usar esta base de datos
USE concesionario;
-- crear tabla conductor
CREATE TABLE conductor(
conductor_id INT AUTO_INCREMENT PRIMARY KEY, 
nombre VARCHAR(50),
apellido VARCHAR(50) NOT NULL,
email VARCHAR(100)
);
-- crear tabla coche
CREATE TABLE coche(
coche_id INT AUTO_INCREMENT PRIMARY KEY,
marca VARCHAR(50),
modelo VARCHAR(50)
);
-- crear tabla de unión conductor_coche
CREATE TABLE conductor_coche(
conductor_id INT,
coche_id INT,
PRIMARY KEY (conductor_id, coche_id), -- establece la clave primaria compuesta
FOREIGN KEY (conductor_id) REFERENCES conductor(conductor_id),
FOREIGN KEY (coche_id) REFERENCES coche(coche_id)
);
-- insertar datos a conductor
INSERT INTO conductor (nombre, apellido, email) VALUES
('Carlos', 'González', 'carlosgonzalez@gmail.com'),
('Ana', 'Martínez', 'anamartinez@gmail.com'),
('Luis', 'Fernández', 'luisfernandez@gmail.com');
-- insertar datos a coche
INSERT INTO coche (marca, modelo) VALUES
('Honda', 'Civic'),
('Ford', 'Fiesta'),
('Volkswagen', 'Golf');
-- insertar datos a tabla de unión conductor_coche 
INSERT INTO conductor_coche(conductor_id, coche_id) VALUES
(1, 1), -- carlos conduce un honda civic
(1, 2), -- carlos conduce un ford fiesta
(1, 3), -- carlos conduce un volkswagen golf
(2, 1); -- ana conduce un honda civic




