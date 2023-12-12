-- Crear base de datos
CREATE DATABASE IF NOT EXISTS universidad;

-- Crear tabla que se llame "profesores"
CREATE TABLE universidad.profesores(
profesor_id INT AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(50) NOT NULL,
apellido VARCHAR(50) NOT NULL,
email VARCHAR(50) NOT NULL,
telefono VARCHAR(20),
direccion TEXT,
fecha_nacimiento DATE,
departamento VARCHAR(50),
salario DECIMAL(10, 2),
activo TINYINT(1) -- BOOLEAN
);

-- SELECT es para consultar datos, NO elimina datos ni inserta datos
-- Especificar la base de datos
USE universidad;

-- Consulta de la tabla para confirmar que se creó, opcional por si no la encontrábamos desde schemas
SELECT * FROM profesores;
-- insertar datos generados desde mockaroo
insert into profesores (nombre, apellido, email, telefono, direccion, fecha_nacimiento, departamento, salario, activo) values ('Karla', 'Lamond', 'klamond0@biglobe.ne.jp', '975-687-3558', 'Room 1630', '2023-05-23', 'Support', 8666.42, 1);
insert into profesores (nombre, apellido, email, telefono, direccion, fecha_nacimiento, departamento, salario, activo) values ('Devina', 'Szach', 'dszach1@angelfire.com', '176-692-7767', 'PO Box 20451', '2023-08-12', 'Product Management', 4686.19, 2);
insert into profesores (nombre, apellido, email, telefono, direccion, fecha_nacimiento, departamento, salario, activo) values ('Nappie', 'Bourgourd', 'nbourgourd2@ning.com', '918-431-1849', 'PO Box 77102', '2023-07-16', 'Sales', 6771.19, 1);
insert into profesores (nombre, apellido, email, telefono, direccion, fecha_nacimiento, departamento, salario, activo) values ('Che', 'Weond', 'cweond3@exblog.jp', '545-359-7769', 'Suite 17', '2023-08-12', 'Support', 5180.83, 0);
insert into profesores (nombre, apellido, email, telefono, direccion, fecha_nacimiento, departamento, salario, activo) values ('Si', 'Works', 'sworks4@com.com', '206-492-0670', '16th Floor', '2023-11-09', 'Product Management', 8882.56, 1);
insert into profesores (nombre, apellido, email, telefono, direccion, fecha_nacimiento, departamento, salario, activo) values ('Jon', 'Flori', 'jflori5@ibm.com', '349-646-4932', 'Suite 7', '2023-07-09', 'Product Management', 6076.5, 1);
insert into profesores (nombre, apellido, email, telefono, direccion, fecha_nacimiento, departamento, salario, activo) values ('Ronna', 'Rootes', 'rrootes6@wp.com', '912-414-8904', 'Suite 18', '2023-01-06', 'Training', 5878.3, 1);
insert into profesores (nombre, apellido, email, telefono, direccion, fecha_nacimiento, departamento, salario, activo) values ('Connie', 'Ackers', 'cackers7@un.org', '746-474-2864', '8th Floor', '2023-08-26', 'Product Management', 4501.34, 1);
insert into profesores (nombre, apellido, email, telefono, direccion, fecha_nacimiento, departamento, salario, activo) values ('Moises', 'Fraschetti', 'mfraschetti8@tinyurl.com', '752-893-3198', '20th Floor', '2022-12-18', 'Marketing', 2247.67, 0);
insert into profesores (nombre, apellido, email, telefono, direccion, fecha_nacimiento, departamento, salario, activo) values ('Skyler', 'Peye', 'speye9@multiply.com', '502-124-6690', 'Apt 1546', '2023-07-02', 'Services', 2401.67, 1);
insert into profesores (nombre, apellido, email, telefono, direccion, fecha_nacimiento, departamento, salario, activo) values ('Vite', 'Timmons', 'vtimmonsa@fema.gov', '687-810-0005', '12th Floor', '2023-04-24', 'Sales', 2555.82, 2);
insert into profesores (nombre, apellido, email, telefono, direccion, fecha_nacimiento, departamento, salario, activo) values ('Hermon', 'Boothebie', 'hboothebieb@tripadvisor.com', '145-624-4521', 'Room 574', '2023-07-23', 'Product Management', 5117.9, 2);
insert into profesores (nombre, apellido, email, telefono, direccion, fecha_nacimiento, departamento, salario, activo) values ('Wilbert', 'Goodlake', 'wgoodlakec@wp.com', '516-186-2223', 'Apt 894', '2023-08-10', 'Marketing', 5517.64, 1);
insert into profesores (nombre, apellido, email, telefono, direccion, fecha_nacimiento, departamento, salario, activo) values ('Letitia', 'Petruszka', 'lpetruszkad@japanpost.jp', '916-687-7350', 'PO Box 78420', '2023-01-04', 'Accounting', 6634.53, 2);
insert into profesores (nombre, apellido, email, telefono, direccion, fecha_nacimiento, departamento, salario, activo) values ('Dotti', 'Shore', 'dshoree@seattletimes.com', '112-434-2995', 'Apt 1465', '2023-10-23', 'Support', 5101.21, 0);
insert into profesores (nombre, apellido, email, telefono, direccion, fecha_nacimiento, departamento, salario, activo) values ('Koo', 'Speak', 'kspeakf@istockphoto.com', '225-679-4985', 'Room 108', '2023-05-31', 'Business Development', 2746.45, 0);
insert into profesores (nombre, apellido, email, telefono, direccion, fecha_nacimiento, departamento, salario, activo) values ('Glori', 'Gullick', 'ggullickg@networksolutions.com', '908-975-8125', '16th Floor', '2023-01-19', 'Engineering', 1523.52, 0);
insert into profesores (nombre, apellido, email, telefono, direccion, fecha_nacimiento, departamento, salario, activo) values ('Ede', 'Pencot', 'epencoth@ocn.ne.jp', '327-732-0979', 'Room 385', '2023-11-28', 'Services', 4270.69, 0);
insert into profesores (nombre, apellido, email, telefono, direccion, fecha_nacimiento, departamento, salario, activo) values ('Jo-anne', 'Yurenev', 'jyurenevi@cloudflare.com', '494-942-3884', 'Suite 9', '2023-11-28', 'Training', 2012.07, 1);
insert into profesores (nombre, apellido, email, telefono, direccion, fecha_nacimiento, departamento, salario, activo) values ('Regina', 'Gilhooly', 'rgilhoolyj@ihg.com', '958-330-1965', 'PO Box 3949', '2023-05-09', 'Marketing', 3909.77, 0);

-- insert de una fila (registro) sin mockaroo
-- si introduzco todoslos datos de las columnas puedo omitir especificar el nombre de las columnas
-- si marca error probar con el id, no es lo recomendable
insert into profesores (nombre, apellido, email, telefono, direccion, fecha_nacimiento, departamento, salario, activo)
values ('Daniela', 'Estrada', 'daniela@certidevs.com', '999999999', 'Corazón de María #56', '2022-12-12', 'Ventas', 900.00, 1);

-- consulta de todos los profesores
-- otra opción es desde schemas clic derecho en la tabla y dar clic a select rows
SELECT * FROM profesores;

-- Seleccionar a los profesores con el departamento "support"
SELECT * FROM profesores WHERE departamento = 'Support';

-- seleccionar a todos los profesores que estén activo
SELECT * FROM profesores WHERE activo = 1;

-- seleccionar a todos los profesores con fecha de nacimiento después de 2023-10-10 (AAAA-MM-DD)
SELECT * FROM profesores WHERE fecha_nacimiento > '2023-10-10';

-- seleccionar a todos los profesores con un salario mayor a 2000 y menor a 2500
SELECT * FROM profesores WHERE salario > 2000 AND salario < 2500;

-- Seleccionar a los profesores ordenados por apellido de forma ascendente
SELECT * FROM profesores ORDER BY apellido ASC;

-- Seleccionar a los profesores ordenados por apellido de forma descendente
SELECT * FROM profesores ORDER BY apellido DESC;

-- Seleccionar a los profesores que su email contenga .com
SELECT * FROM profesores WHERE email LIKE '%.com';

-- consulta para contar el número total de profesores
-- total_profesores crea un alias/variable intermedia
-- AS sería para asignar el nombre de esta columna que se crea momentaneamente (en este caso sería total_profesores)
SELECT COUNT(*) AS total_profesores FROM profesores;

-- consulta para obtener el salario promedio de todos los profesores
SELECT AVG(salario) AS salario_promedio FROM profesores;

-- consulta para seleccionar a los profesores con salario mayor a la media
SELECT * FROM profesores WHERE salario > (SELECT AVG(salario) FROM profesores);

-- seleccionar a los profesores que nacieron en enero
SELECT * FROM profesores WHERE MONTH(fecha_nacimiento) =1;

-- seleccionar a los profesores con salario entre 6000 y 7000
-- usando el bewteen
SELECT * FROM profesores WHERE salario BETWEEN 6000 AND 7000;

-- seleccionar a los profesores no activos (activo = 0) y que tenga un departamento específico 'Sales'
SELECT * FROM profesores WHERE activo =0 AND departamento = 'Sales';

-- insert con datos null
insert into profesores (nombre, apellido, email) value ('resgistro', 'prueba', 'prueba@biglobe.ne.jp');

-- seleccionar a los profesores con telefono especificado
-- operadores de comparación
-- != significa diferente de
SELECT * FROM profesores WHERE telefono IS NOT NULL AND telefono !='';

-- seleccionar a los profesores inactivos y ordenado por fecha de nacimiento ascendente
SELECT * FROM profesores WHERE activo=0 ORDER BY fecha_nacimiento ASC;

-- seleccionar al profesor con salario maximo
SELECT * FROM profesores WHERE salario = (SELECT MAX(salario) FROM profesores);

-- seleccionar * profesores con el salario minimo y maximo
SELECT * FROM profesores WHERE salario = (SELECT MIN(salario) FROM profesores) OR salario = (SELECT MAX(salario) FROM profesores);

-- UPDATE - actualizar/modificar datos existentes
-- actualizar el telefono del profesor con id=1
UPDATE profesores SET telefono ='555555555'WHERE profesor_id=1;
UPDATE profesores SET telefono ='888888888'WHERE profesor_id=2;

-- actualizar o cambiar el departamento del profesor con ID =3
UPDATE profesores SET departamento ='Ventas' WHERE profesor_id=3;

-- modificar el telefono y el email del profesor con id=3
UPDATE profesores SET telefono = '111111111', email = 'juan@gmail.com'WHERE profesor_id=3;

-- modificar el salario del profesor con id=4
UPDATE profesores SET salario = 20000 WHERE profesor_id=4;

-- modificar el nombre de un departamento, todos los que dicen support se modifiquen a ventas
UPDATE profesores SET departamento = 'ventas' WHERE departamento = 'support';

-- actualizar la dirección y el salario del profesor id=5
UPDATE profesores SET direccion = 'corazon de maria', salario = 50000 WHERE profesor_id=5;

-- DELETE eliminar datos
-- eliminar al profesor con un id=1
DELETE FROM profesores WHERE profesores_id=1;

-- eliminar al profesor con id=21
DELETE FROM profesores WHERE profesores_id=21;

-- eliminar todas las filas/registros de la tabla
-- no nos deja si tenemos el safe mode (modificar desde edit-> preferences-> SQL Editor,
-- deseleccionar el safe mode y cerrar y abrir Workbench)
DELETE FROM profesores;
