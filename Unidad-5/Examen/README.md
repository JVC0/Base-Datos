-- Nombre:Joseph Vanegas Caicedo
--Dificultad: 8

-- 1. Realiza la inserción de, al menos, 2 alumnos.

/** Estado anterior
SELECT * FROM alumno ;
┌────────────┬────────┬───────────┬──────┬──────────┐
│    dni     │ nombre │ apellido  │ nota │ id_clase │
├────────────┼────────┼───────────┼──────┼──────────┤
│ DNI123456A │ Juan   │ Pérez     │ 85   │ 1        │
│ DNI789012B │ María  │ Martínez  │ 92   │ 2        │
│ DNI345678C │ Pedro  │ Gómez     │ 78   │ 1        │
│ DNI901234D │ Ana    │ Martínez  │ 89   │ 3        │
│ DNI567890E │ David  │ Fernández │ 95   │ 2        │
│ DNI123890F │ Laura  │ Pérez     │ 75   │ 1        │
│ DNI456789G │ Carlos │ Pérez     │ 88   │ 3        │
│ DNI234567H │ Sara   │ García    │ 67   │ 2        │
│ DNI890123I │ Javier │ López     │ 76   │ 1        │
│ DNI345678J │ Elena  │ Martínez  │ 94   │ 3        │
└────────────┴────────┴───────────┴──────┴──────────┘


**/
-- Consulta:INSERT INTO alumno (dni, nombre, apellido, nota, id_clase) VALUES('DNI14726L', 'Jose', 'la', 87, 2), ('DNI145356O', 'Kai', 'Lopez', 70, 8);

/** Estado posterior
SELECT * FROM alumno ;
┌────────────┬────────┬───────────┬──────┬──────────┐
│    dni     │ nombre │ apellido  │ nota │ id_clase │
├────────────┼────────┼───────────┼──────┼──────────┤
│ DNI123456A │ Juan   │ Pérez     │ 85   │ 1        │
│ DNI789012B │ María  │ Martínez  │ 92   │ 2        │
│ DNI345678C │ Pedro  │ Gómez     │ 78   │ 1        │
│ DNI901234D │ Ana    │ Martínez  │ 89   │ 3        │
│ DNI567890E │ David  │ Fernández │ 95   │ 2        │
│ DNI123890F │ Laura  │ Pérez     │ 75   │ 1        │
│ DNI456789G │ Carlos │ Pérez     │ 88   │ 3        │
│ DNI234567H │ Sara   │ García    │ 67   │ 2        │
│ DNI890123I │ Javier │ López     │ 76   │ 1        │
│ DNI345678J │ Elena  │ Martínez  │ 94   │ 3        │
│ DNI14726L  │ Jose   │ la        │ 87   │ 2        │
│ DNI145356O │ Kai    │ Lopez     │ 70   │ 8        │
└────────────┴────────┴───────────┴──────┴──────────┘


**/

-- 2. Obtener los apellidos de los alumnos.

/** Estado anterior


**/
-- Consulta:SELECT apellido FROM alumno ;

/** Estado posterior
┌───────────┐
│ apellido  │
├───────────┤
│ Pérez     │
│ Martínez  │
│ Gómez     │
│ Martínez  │
│ Fernández │
│ Pérez     │
│ Pérez     │
│ García    │
│ López     │
│ Martínez  │
│ la        │
│ Lopez     │
└───────────┘


**/


-- 3. Obtener los apellidos de los alumnos sin repeticiones.

/** Estado anterior


**/
-- Consulta:SELECT apellido FROM alumno GROUP BY  apellido;

/** Estado posterior
┌───────────┐
│ apellido  │
├───────────┤
│ Fernández │
│ García    │
│ Gómez     │
│ Lopez     │
│ López     │
│ Martínez  │
│ Pérez     │
│ la        │
└───────────┘

**/


-- 4. Obtener todos los datos de los alumnos que se apellidan Martínez.

/** Estado anterior


**/
-- Consulta:SELECT * FROM alumno WHERE apellido="Martínez";


/** Estado posterior

┌────────────┬────────┬──────────┬──────┬──────────┐
│    dni     │ nombre │ apellido │ nota │ id_clase │
├────────────┼────────┼──────────┼──────┼──────────┤
│ DNI789012B │ María  │ Martínez │ 92   │ 2        │
│ DNI901234D │ Ana    │ Martínez │ 89   │ 3        │
│ DNI345678J │ Elena  │ Martínez │ 94   │ 3        │
└────────────┴────────┴──────────┴──────┴──────────┘
**/


-- 5. Obtener todos los datos de los alumnos que se apellidan Martínez y los que se apellidan Pérez.

/** Estado anterior


**/
-- Consulta:SELECT * FROM alumno WHERE apellido="Martínez" or apellido="Pérez";

/** Estado posterior
┌────────────┬────────┬──────────┬──────┬──────────┐
│    dni     │ nombre │ apellido │ nota │ id_clase │
├────────────┼────────┼──────────┼──────┼──────────┤
│ DNI123456A │ Juan   │ Pérez    │ 85   │ 1        │
│ DNI789012B │ María  │ Martínez │ 92   │ 2        │
│ DNI901234D │ Ana    │ Martínez │ 89   │ 3        │
│ DNI123890F │ Laura  │ Pérez    │ 75   │ 1        │
│ DNI456789G │ Carlos │ Pérez    │ 88   │ 3        │
│ DNI345678J │ Elena  │ Martínez │ 94   │ 3        │
└────────────┴────────┴──────────┴──────┴──────────┘


**/


-- 6. Obtener todos los datos de los alumnos que asisten a la clase 10.

/** Estado anterior


**/
-- Consulta:SELECT * FROM alumno as a,clase as c WHERE a.id_clase=c.id and nombre="clase 10";



/** Estado posterior


**/


-- 7. Obtener todos los datos de los alumnos que asisten a la clase 8 y para el clase 5.

/** Estado anterior


**/
-- Consulta:SELECT * FROM alumno as a,clase as c WHERE a.id_clase=c.id and nombre="clase 10" AND nombre="clase 5";


/** Estado posterior


**/


-- 8. Obtener todos los datos de los alumnos cuyo apellido comience por P.

/** Estado anterior


**/
-- Consulta:select * from alumno where (nombre like 'P%');

/** Estado posterior
┌────────────┬────────┬──────────┬──────┬──────────┐
│    dni     │ nombre │ apellido │ nota │ id_clase │
├────────────┼────────┼──────────┼──────┼──────────┤
│ DNI345678C │ Pedro  │ Gómez    │ 78   │ 1        │
└────────────┴────────┴──────────┴──────┴──────────┘


**/


-- 9. Obtener el número máximo de alumnos por en todas las clases.

/** Estado anterior


**/
-- Consulta:SELECT SUM(max_alumnos)as total_de_alumnos FROM clase ;

/** Estado posterior

┌──────────────────┐
│ total_de_alumnos │
├──────────────────┤
│ 75               │
└──────────────────┘

**/


-- 10. Obtener el número de alumnos en cada clase.

/** Estado anterior


**/
-- Consulta:SELECT max_alumnos from clase ;


/** Estado posterior
┌─────────────┐
│ max_alumnos │
├─────────────┤
│ 30          │
│ 25          │
│ 20          │
└─────────────┘


**/


-- 11. Obtener un listado completo de alumnos, incluyendo los datos de su clase a la que asisten.

/** Estado anterior


**/
-- Consulta:SELECT * FROM alumno as a,clase as c WHERE a.id_clase=c.id;

/** Estado posterior
┌────────────┬────────┬───────────┬──────┬──────────┬────┬─────────────┐
│    dni     │ nombre │ apellido  │ nota │ id_clase │ id │ max_alumnos │
├────────────┼────────┼───────────┼──────┼──────────┼────┼─────────────┤
│ DNI123456A │ Juan   │ Pérez     │ 85   │ 1        │ 1  │ 30          │
│ DNI789012B │ María  │ Martínez  │ 92   │ 2        │ 2  │ 25          │
│ DNI345678C │ Pedro  │ Gómez     │ 78   │ 1        │ 1  │ 30          │
│ DNI901234D │ Ana    │ Martínez  │ 89   │ 3        │ 3  │ 20          │
│ DNI567890E │ David  │ Fernández │ 95   │ 2        │ 2  │ 25          │
│ DNI123890F │ Laura  │ Pérez     │ 75   │ 1        │ 1  │ 30          │
│ DNI456789G │ Carlos │ Pérez     │ 88   │ 3        │ 3  │ 20          │
│ DNI234567H │ Sara   │ García    │ 67   │ 2        │ 2  │ 25          │
│ DNI890123I │ Javier │ López     │ 76   │ 1        │ 1  │ 30          │
│ DNI345678J │ Elena  │ Martínez  │ 94   │ 3        │ 3  │ 20          │
│ DNI14726L  │ Jose   │ la        │ 87   │ 2        │ 2  │ 25          │
└────────────┴────────┴───────────┴──────┴──────────┴────┴─────────────┘


**/


-- 12. Muestra todos los alumnos ordenando por nombre de forma descendiente y por nota de forma ascendente .

/** Estado anterior


**/
-- Consulta:SELECT nombre,nota FROM alumno ORDER BY nombre DESC;

/** Estado posterior


**/


-- 13. Obtener los nombres y apellido de los alumnos que asisten a la clase 4 y cuyo máximo de alumnos es mayor 10.

/** Estado anterior


**/
-- Consulta:SELECT a.nombre,c.apellido FROM alumno as a,clase as c WHERE a.id_clase=c.id and nombre="clase 4" and max_alumnos>10;

/** Estado posterior


**/


-- 14. Obtener los datos de los clases cuyo número de alumnos es superior a la media de todos los clases.

/** Estado anterior


**/
-- Consulta:a.nota > SELECT AVG(nota),c.id,c.max_alumnos WHERE alumno as a, clase as c where a.nota > (SELECT AVG(nota) FROM alumno);


/** Estado posterior


**/


-- 15. Obtener los nombres (únicamente los nombres) de los clases que tiene más de dos alumnos.

/** Estado anterior


**/
-- Consulta:SELECT nombre FROM alumno as a , clase as c WHERE a.id_clase=c.id and max_alumnos>2;


/** Estado posterior

┌────────┐
│ nombre │
├────────┤
│ Juan   │
│ María  │
│ Pedro  │
│ Ana    │
│ David  │
│ Laura  │
│ Carlos │
│ Sara   │
│ Javier │
│ Elena  │
│ Jose   │
└────────┘

**/


-- 16. Añadir un nuevo clase, con un número máximo de alumnos es 20.

/** Estado anterior


**/
-- Consulta:INSERT INTO clase (id, max_alumnos) VALUES (4, 20);


/** Estado posterior
┌────┬─────────────┐
│ id │ max_alumnos │
├────┼─────────────┤
│ 1  │ 30          │
│ 2  │ 25          │
│ 3  │ 20          │
│ 4  │ 20          │
└────┴─────────────┘

**/


-- 17. Añadir dos nuevos alumnos vinculando a la clase creada.

/** Estado anterior


**/
-- Consulta:INSERT INTO alumno (dni, nombre, apellido, nota, id_clase) VALUES('DNI83546P', 'Francisco', 'tran', 90, 4), ('DNI175353K', 'Davis', 'la', 70, 4);

/** Estado posterior
┌────────────┬───────────┬───────────┬──────┬──────────┐
│    dni     │  nombre   │ apellido  │ nota │ id_clase │
├────────────┼───────────┼───────────┼──────┼──────────┤
│ DNI123456A │ Juan      │ Pérez     │ 85   │ 1        │
│ DNI789012B │ María     │ Martínez  │ 92   │ 2        │
│ DNI345678C │ Pedro     │ Gómez     │ 78   │ 1        │
│ DNI901234D │ Ana       │ Martínez  │ 89   │ 3        │
│ DNI567890E │ David     │ Fernández │ 95   │ 2        │
│ DNI123890F │ Laura     │ Pérez     │ 75   │ 1        │
│ DNI456789G │ Carlos    │ Pérez     │ 88   │ 3        │
│ DNI234567H │ Sara      │ García    │ 67   │ 2        │
│ DNI890123I │ Javier    │ López     │ 76   │ 1        │
│ DNI345678J │ Elena     │ Martínez  │ 94   │ 3        │
│ DNI14726L  │ Jose      │ la        │ 87   │ 2        │
│ DNI145356O │ Kai       │ Lopez     │ 70   │ 8        │
│ DNI83546P  │ Francisco │ tran      │ 90   │ 4        │
│ DNI175353K │ Davis     │ la        │ 70   │ 4        │
└────────────┴───────────┴───────────┴──────┴──────────┘


**/


-- 18. Calcula el 10% de los alumnos por clase.

/** Estado anterior


**/
-- Consulta:

/** Estado posterior


**/


-- 19. Elimina a todos los alumnos que asisten a la clase con id 2.

/** Estado anterior


**/
-- Consulta:DELETE FROM alumno where id_clase=2;


/** Estado posterior
┌────────────┬───────────┬──────────┬──────┬──────────┐
│    dni     │  nombre   │ apellido │ nota │ id_clase │
├────────────┼───────────┼──────────┼──────┼──────────┤
│ DNI123456A │ Juan      │ Pérez    │ 85   │ 1        │
│ DNI345678C │ Pedro     │ Gómez    │ 78   │ 1        │
│ DNI901234D │ Ana       │ Martínez │ 89   │ 3        │
│ DNI123890F │ Laura     │ Pérez    │ 75   │ 1        │
│ DNI456789G │ Carlos    │ Pérez    │ 88   │ 3        │
│ DNI890123I │ Javier    │ López    │ 76   │ 1        │
│ DNI345678J │ Elena     │ Martínez │ 94   │ 3        │
│ DNI145356O │ Kai       │ Lopez    │ 70   │ 8        │
│ DNI83546P  │ Francisco │ tran     │ 90   │ 4        │
│ DNI175353K │ Davis     │ la       │ 70   │ 4        │
└────────────┴───────────┴──────────┴──────┴──────────┘


**/


-- 20. Elimina a todos los alumnos cuyo nota sea inferior al 30%.

/** Estado anterior


**/
-- Consulta:

/** Estado posterior


**/
