
-- Funciones
-- podemos realizar cálculos de grupo de filas y nos dan un único resultado por grupo

-- COUNT (), SUM, MAX, MIN

-- COUNT: cuenta el número de filas de la columna que especifiquemos
USE universidad;
-- contar el número total de filas en la tabla de profesores
SELECT COUNT(*)
FROM profesores;
-- lo mismo que lo anterior pero modificando el nombre dela columna con el resultado
SELECT COUNT(*) AS total_profesores FROM profesores;

-- contar el total de filas de profesores que SI tienen datos en la columna de salario
SELECT COUNT(salario) FROM profesores;

-- contar el total de filar de profesores que SI tienen datos en teléfono
SELECT COUNT(telefono) FROM profesores;

-- función SUM(): sumaría todos los valores de una columna específica
-- sintaxis de SUM
SELECT SUM(nombre_columna) FROM nombre_tabla
-- sumar todos los valores de salarios
SELECT SUM(salario) FROM profesores;

-- sumar los salarios SOLO de los profesores activos
SELECT SUM(salario) FROM profesores WHERE activo=1;

-- GROUP BY: nos sirve para agrupar filar que tienen los mismo valores en columnas específicas,
-- por ejemplo, departamento (sales, ventas, support, etc)
-- Sumar salarios por departamento
SELECT departamento, SUM(salario) FROM profesores GROUP BY departamento;

-- AVG: sirve para calcular el promedio
-- calcular el salario promedio de todos los profesores
SELECT AVG(salario) FROM profesores;

-- calcular el salario promedio SOLO de profesores activos
SELECT AVG(salario) FROM profesores WHERE activo=1;

-- calcular el salario promedio por departamento
SELECT departamento, AVG(salario) FROM profesores GROUP BY departamento;

-- MAX y MIN: encontrar el máximo y el mínimo por columna
-- encontrar el salario máximo por departamento
SELECT departamento, MAX(salario) FROM profesores GROUP BY departamento;
-- encontrar el salario mínimo por departamento
SELECT departamento, MIN(salario) FROM profesores GROUP BY departamento;

-- GROUP BY: agrupando por dos columnas
-- agrupar por departamento y estado (activo o no activo)
SELECT departamento, activo, COUNT(*) AS cantidad_profesores
FROM profesores
GROUP BY departamento, activo;

-- calcular el salario promedio por departamento y estado activo o no activoz
SELECT departamento, activo, AVG(salario) AS salario_promedio
FROM profesores
GROUP BY departamento, activo;

-- HAVING: filtrar resultados de grupos
-- filtrar departamentos con un salario promedio mayor que 5000
SELECT departamento, AVG(salario) AS salario_promedio
FROM profesores
GROUP BY departamento 
HAVING salario_promedio>5000;

-- filtrar rango de salario promedio por departamento, que me aparezcan solo los que tienen un salario promedio entre 4000 y 5000
SELECT departamento, AVG(salario) AS salario_promedio
FROM profesores
GROUP BY departamento 
HAVING salario_promedio BETWEEN 3000 AND 6000;

-- filtro por departamento con dos o mas profesores activos
SELECT departamento, COUNT(*) AS cantidad_profesores
FROM profesores
WHERE activo=1
GROUP BY departamento
HAVING cantidad_profesores >=2;












