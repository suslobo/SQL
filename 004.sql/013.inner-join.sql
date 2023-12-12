
USE universidad;
-- JOIN: se utiliza para realizar consultas donde se combinen filas de dos o más tablas, 
-- basándonos en una columna relacionada con ellas
-- INNER JOIN: selecciona las filas que tienen valores coincidentes en ambas tablas

/* SELECT tablaA.columna1, tablaB.columna2
-- FROM tablaA -- tabla izquierda
-- INNER JOIN tablaB ON tablaA.columna_clave = TablaB.columna_clave */

-- INNER JOIN muestra los solo los datos coincientes, no nulos

-- utilizar un inner join con las tablas departamentos y empleados
-- consulta de todos los empleados con los nombres de sus departamentos

SELECT empleados.nombre, departamentos.nombre AS nombre_departamento
FROM empleados 
INNER JOIN departamentos ON empleados.departamento_id = departamentos.departamento_id;

-- consulta con nombre y apellido de empleados + los nombres de los departamentos
SELECT empleados.nombre, empleados.apellido, departamentos.nombre AS nombre_departamento
FROM empleados 
INNER JOIN departamentos ON empleados.departamento_id = departamentos.departamento_id;

/* SELECT tablaA.columna1, tablaB.columna2
-- FROM tablaA -- tabla izquierda
-- INNER JOIN tablaB ON tablaA.columna_clave = TablaB.columna_clave, es el mismo id de la tablaB */
-- consulta de todos los clientes y los montos de sus ventas2
SELECT clientes.nombre, ventas.monto
FROM clientes -- tabla principal/tabla izquierda
INNER JOIN ventas ON clientes.cliente_id = ventas.cliente_id; -- clave primaria(la primera)/clave foránea(la segunda)

-- mostrar el nombre del estudiante y el nombre del curso asociado
SELECT estudiantes.nombre, cursos.nombre AS curso_asocidado
FROM estudiantes
INNER JOIN cursos ON estudiantes.estudiante_id = cursos.estudiante_id;
-- mostrar a los estudiantes con sus fechas de nacimiento y los cursos que están inscritos
SELECT estudiantes.nombre, estudiantes.fecha_nacimiento, cursos.nombre AS curso_asocidado
FROM estudiantes
INNER JOIN cursos ON estudiantes.estudiante_id = cursos.estudiante_id;

