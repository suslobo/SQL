-- RIGHT JOIN (derecho)
-- lo opuesto al LEFT
/* SELECT tablaA.columna1, tablaB.columna2
-- FROM tablaA -- tabla izquierda
-- RIGHT JOIN tablaB ON tablaA.columna_clave = TablaB.columna_clave */
USE universidad;

-- Mostar tods los departamentos (left) con los nombre de los empleados (right)
-- incluyendo empleados sin departamentos (nulos)
SELECT departamentos.nombre, empleados.nombre AS empleados_departamentos
FROM departamentos 
RIGHT JOIN empleados ON departamentos.departamento_id = empleados.departamento_id;

-- mostrar las ventas con los nombres de los clientes, incluyendo las ventas sin clientes asociados
/* SELECT tablaA.columna1, tablaB.columna2
-- FROM tablaA -- tabla izquierda
-- RIGHT JOIN tablaB ON tablaA.columna_clave = TablaB.columna_clave */
SELECT clientes.nombre, ventas.monto
FROM clientes
RIGHT JOIN ventas ON clientes.cliente_id = ventas.cliente_id;

