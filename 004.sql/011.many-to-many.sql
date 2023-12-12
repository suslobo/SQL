
-- Crear base de datos biblioteca
CREATE DATABASE IF NOT EXISTS biblioteca;
-- Usar la base de datos biblioteca
USE biblioteca;
-- Asociación one-to-one
CREATE TABLE usuario(
usuario_id INT AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(50) NOT NULL,
apellido VARCHAR(50) NOT NULL,
email VARCHAR(100) NOT NULL
);

CREATE TABLE tarjetas_biblioteca(
tarjeta_id INT AUTO_INCREMENT PRIMARY KEY,
fecha_expiracion DATE,
usuario_id INT UNIQUE,
FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id)
);
-- fk apunta a la primera tabla

-- insertar datos
INSERT INTO usuario(nombre, apellido, email) VALUES
('Juan', 'Pérez', 'juanperez@gmail.com'),
('María', 'Gómez', 'mariagomez@gmail.com'),
('Carlos', 'Martínez', 'carlosmartinez@gmail.com'),
('Laura', 'López', 'lauralopez@gmail,com');

INSERT INTO tarjetas_biblioteca(fecha_expiracion, usuario_id) VALUES
('2023-12-31', 1),
('2023-12-31', 2),
('2023-12-31', 3),
('2023-12-31', 4);

INSERT INTO tarjetas_biblioteca(fecha_expiracion, usuario_id) VALUES
('2023-12-31', 1);


-- Asociación Muchos a Uno / Uno a Muchos
-- Many-to-one / One-to-Many

CREATE TABLE autores(
autor_id INT AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(50) NOT NULL,
apellido VARCHAR(50) NOT NULL
);

CREATE TABLE libros(
libro_id INT AUTO_INCREMENT PRIMARY KEY,
titulo VARCHAR(100), 
autor_id INT,
FOREIGN KEY (autor_id) REFERENCES autores(autor_id)
);

-- un autor puede tener mucho libros (ONE-TO-MANY)
INSERT INTO autores(nombre, apellido) VALUES
('autor 1', 'apellido 1'),
('autor 2', 'apellido 2'),
('autor 3', 'apellido 3'),
('autor 4', 'apellido 4');
-- insertar libros
INSERT INTO libros(titulo, autor_id) VALUES
('libro 1', 1),
('libro 2', 2),
('libro 3', 3),
('libro 4', 4),
('libro 5', 4),
('libro 6', 3);

-- Asociación many-to-many (muchos a muchos)
-- crear tabla de eventos que se realizan en una biblioteca, como talleres, conferencias...
CREATE TABLE eventos(
evento_id INT AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(100) NOT NULL,
descripcion TEXT,
fecha_evento DATE
);
-- crear tabla de salas
CREATE TABLE salas(
salas_id INT AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(100),
capacidad INT
);

-- crear la TABLA DE UNIÓN DE LA TABLA EVENTOS Y TABLA SALAS (que relacione eventos con las salas)
-- un evento puede tener varias salas, y una sala puede ser utilizada para varios eventos
-- las dos tienen su clave primaria
-- crear tabla eventos_salas
CREATE TABLE eventos_salas(
evento_id INT, 
salas_id INT,
PRIMARY KEY (evento_id, salas_id), -- establece la clave primaria compuesta
FOREIGN KEY (evento_id) REFERENCES eventos(evento_id),
FOREIGN KEY (salas_id) REFERENCES salas(salas_id)
);

-- clave primara compuesta tiene que ser única
-- introducir datos
INSERT INTO eventos(nombre, descripcion, fecha_evento) VALUES
('Taller de escritura', 'Un taller para aspirantes a escritores', '2023-01-15'),
('Club de lectura', 'Discusión sobre libros', '2023-02-12'),
('Conferencia de historia', 'Charla de historia', '2023-03-18');

-- insertar datos a la tabla salas
INSERT INTO salas(nombre, capacidad) VALUES
('Sala A', 50),
('Sala B', 100),
('Sala A', 30);

-- insertar datos a la tabla eventos_salas
INSERT INTO eventos_salas(evento_id, salas_id) VALUES
(1, 1), -- Taller de escritura/sala a
(1, 2), -- Taller de escritura/sala b
(1, 3), -- Taller de escriutra/sala c
(2, 1), -- Club de lectura/sala a
(2, 2), -- Club de lectura/sala b
(2, 3), -- Club de lectura/sala c
(3, 1), -- Conferencia de historia/sala a
(3, 2), -- Conferencia de historia/sala b
(3, 3); -- Conferencia de historia/sala c

-- esta linea es de prueba para ver que no se pueden repetir las claves primarias compuestas
-- INSERT INTO eventos_salas(evento_id, salas_id) VALUES (1, 1);
-- para mostrar las columnas de una tabla
show columns from libros;

-- Asociación Many-to-many
-- libros y categorias, podemos categorizar los libros en diferentes géneros 
-- y un libro puede pertener a varias categorías a la vez
-- crear tabla de categorias
CREATE TABLE categorias(
categoria_id INT AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(50) NOT NULL
);
-- crear LA TABLA DE UNIÓN DE LIBROS Y CATEGORÍAS
CREATE TABLE libros_categoria(
libro_id INT, 
categoria_id INT,
PRIMARY KEY (libro_id, categoria_id), -- establece la clave primaria compuesta
FOREIGN KEY (libro_id) REFERENCES libros(libro_id),
FOREIGN KEY (categoria_id) REFERENCES categorias(categoria_id)
);

-- ON DELETE CASCADE= asegura que los registros de una tabla se eliminen automaticamente
-- si se elimina un libro o una categoría
 
-- insertar datos a categorias
INSERT INTO categorias(nombre) VALUES
('Ficción'),
('Ciencia'),
('Libros de arte');

-- insertar datos a la tabla de UNIÓN libros_categoria
INSERT INTO libros_categoria (libro_id, categoria_id) VALUES
(1, 1), -- libro 1 está categorizado como de ficción
(1, 2), -- libro 1 está categorizado como ciencia
(2, 3), -- libro 2 tiene la categoria como libros de arte
(3, 1); -- libro 3 tiene la categoria ficcion



