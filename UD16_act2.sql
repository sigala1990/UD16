
USE actividades;

/*2.1*/ SELECT apellidos FROM empleados;

/*2.2*/ SELECT apellidos FROM empleados GROUP BY apellidos;

/*2.3*/ SELECT * FROM empleados WHERE apellidos='Smith';

/*2.4*/ SELECT * FROM empleados WHERE apellidos='Smith' OR apellidos='Rogers';

/*2.5*/ SELECT * FROM empleados WHERE departamento=14;

/*2.6*/ SELECT * FROM empleados WHERE departamento=37 OR departamento=77;

/*2.7*/ SELECT * FROM empleados WHERE apellidos LIKE 'P%';

/*2.8*/ SELECT sum(presupuesto) FROM departamentos;

/*2.9*/ SELECT COUNT(departamento) , departamento FROM empleados GROUP BY departamento;

/*2.10*/ 
SELECT empleados.dni, empleados.nombre, empleados.apellidos, departamentos.nombre 
FROM empleados 
INNER JOIN departamentos 
ON empleados.departamento=departamentos.codigo;

/*2.11*/ 
SELECT empleados.nombre, empleados.apellidos, departamentos.nombre, departamentos.presupuesto 
FROM empleados 
INNER JOIN departamentos 
ON empleados.departamento=departamentos.codigo;

/*2.12*/ 
SELECT empleados.nombre, empleados.apellidos, departamentos.presupuesto 
FROM empleados 
INNER JOIN departamentos 
ON empleados.departamento=departamentos.codigo
WHERE departamentos.presupuesto>60000;

/*2.13*/ 
SELECT *
FROM departamentos
WHERE presupuesto > ( SELECT avg(presupuesto) FROM departamentos);

/*2.14*/ 
SELECT departamentos.nombre
FROM departamentos
INNER JOIN empleados
ON empleados.departamento=departamentos.codigo
GROUP BY departamento
HAVING COUNT(empleados.departamento) > 2;

/*2.15*/ 
INSERT INTO departamentos (codigo, nombre, presupuesto) VALUES
(11, 'Calidad', 40000);

INSERT INTO empleados (dni, nombre, apellidos, departamento) VALUES
(89267109, 'Esther', 'Vazquez', 11);

/*2.16*/ 
UPDATE departamentos SET presupuesto=presupuesto*0.90;

/*2.17*/ 
UPDATE empleados SET departamento=14 WHERE departamento=77;

/*2.18*/ 
DELETE FROM empleados WHERE departamento=14;

/*2.19*/ 
DELETE 
FROM empleados 
WHERE (SELECT presupuesto FROM departamentos WHERE presupuesto>60000);

/*2.19*/ 
DELETE 
FROM empleados; 











