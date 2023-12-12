
-- id: Un identificador único para cada producto.
-- nombre: El nombre del producto.
-- categoria: La categoría a la que pertenece el producto.
-- precio: El precio del producto.
-- en_stock: Un valor booleano que indica si el producto está en stock (true o false).
CREATE DATABASE IF NOT EXISTS BDD;
Use BDD;
CREATE TABLE Productos(
producto_id INT AUTO_INCREMENT PRIMARY KEY, 
nombre VARCHAR(50),
categoria VARCHAR(50) NOT NULL,
precio DECIMAL(10, 2),
en_stock INT
);

SELECT * FROM BDD;
SELECT * FROM BDD WHERE precio > 50;
-- SELECT * FROM BDD WHERE nombre AND  precio = 'Electronicos';
SELECT nombre, precio FROM Productos;
-- SELECT * FROM Productos WHERE categoria = "Electronicos";
SELECT nombre, precio, en_stock, categoria FROM Productos WHERE categoria = 'Electronicos';





