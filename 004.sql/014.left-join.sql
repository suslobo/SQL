-- LEFT JOIN: selecciona todas las filas de tabla izquierda (tablaA, la primera que se menciona)
-- y nos muestra las filas coincidentes de la tabla derecha (tablaB, la segunda que se menciona)
-- si no hay coincidencia la tabla derecha (tablaB) el valor es NULO

-- la sintaxis es esta:
/* SELECT tablaA.columna1, tablaB.columna2
-- FROM tablaA -- tabla izquierda
-- LEFT JOIN tablaB ON tablaA.columna_clave = TablaB.columna_clave */

USE universidad;

-- consulta en las tablas departamentos y empleados utilizando LEFT JOIN
-- para relacionar los datos de ambas tablas

-- insertar datos de empleados sin departamento asociado
INSERT INTO empleados(nombre, apellido) VALUES
('Roberto', 'Martínez'),
('Lucía', 'García');
-- insertar datos a departamentos sin asignarle un empleado
INSERT INTO departamentos(nombre) VALUES
('Cocina'),
('Informática');

/* SELECT tablaA.columna1, tablaB.columna2
-- FROM tablaA -- tabla izquierda
-- LEFT JOIN tablaB ON tablaA.columna_clave = TablaB.columna_clave */
-- ejercicio: consulta de todos los empleados de sus departamentos, incluyendo a los empleados sin departamento
SELECT empleados.nombre, empleados.apellido, departamentos.nombre AS nombre_departamento
FROM empleados
LEFT JOIN departamentos ON empleados.departamento_id = departamentos.departamento_id;

-- consulta de departamentos y sus empleados, icluidos los departamentos sin empleados
SELECT departamentos.nombre AS nombre_departamento, empleados.nombre 
FROM departamentos
LEFT JOIN empleados ON departamentos.departamento_id = empleados.departamento_id;

-- LEFT JOIN con la tabla de clientes y ventas
-- insertar datos de clientes nuevos y ventas sin cliente asignado
INSERT INTO clientes(nombre, direccion) VALUES
('Luis Gomez', 'Avenida 1'),
('Angel Lopez', 'Corazon de Maria 67');

INSERT INTO ventas(monto) VALUES
(100),
(900);

/* SELECT tablaA.columna1, tablaB.columna2
-- FROM tablaA -- tabla izquierda
-- LEFT JOIN tablaB ON tablaA.columna_clave = TablaB.columna_clave */
-- Mostrar clientes y todas sus ventas, incluyendo los clientes sin ventas
SELECT clientes.nombre, ventas.monto
FROM clientes
LEFT JOIN ventas ON clientes.cliente_id = ventas.cliente_id;


-- mostrar todas las ventas (left) y los clientes (right) asociados
SELECT ventas.monto, clientes.nombre 
FROM ventas
LEFT JOIN clientes ON ventas.cliente_id = clientes.cliente_id;






