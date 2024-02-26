Consultas de una única tabla
--Devuelve un listado con el primer apellido, segundo apellido y el nombre de todos los alumnos. El listado deberá estar ordenado alfabéticamente de menor a mayor por el primer apellido, segundo apellido y nombre.
SELECT nombre,apellido1,apellido2 From persona Where tipo="alumno" ORDER BY nombre;
┌──────────┬───────────┬───────────┐
│  nombre  │ apellido1 │ apellido2 │
├──────────┼───────────┼───────────┤
│ Antonio  │ Domínguez │ Guerrero  │
│ Daniel   │ Herman    │ Pacocha   │
│ Inma     │ Lakin     │ Yundt     │
│ Irene    │ Hernández │ Martínez  │
│ Ismael   │ Strosin   │ Turcotte  │
│ José     │ Koss      │ Bayer     │
│ Juan     │ Saez      │ Vega      │
│ Juan     │ Gutiérrez │ López     │
│ Pedro    │ Heller    │ Pagac     │
│ Ramón    │ Herzog    │ Tremblay  │
│ Salvador │ Sánchez   │ Pérez     │
│ Sonia    │ Gea       │ Ruiz      │
└──────────┴───────────┴───────────┘

--Averigua el nombre y los dos apellidos de los alumnos que no han dado de alta su número de teléfono en la base de datos.
SELECT nombre,apellido1,apellido2 From persona Where telefono is not null and tipo="alumno";
┌──────────┬───────────┬───────────┐
│  nombre  │ apellido1 │ apellido2 │
├──────────┼───────────┼───────────┤
│ Salvador │ Sánchez   │ Pérez     │
│ Juan     │ Saez      │ Vega      │
│ José     │ Koss      │ Bayer     │
│ Ramón    │ Herzog    │ Tremblay  │
│ Daniel   │ Herman    │ Pacocha   │
│ Inma     │ Lakin     │ Yundt     │
│ Juan     │ Gutiérrez │ López     │
│ Antonio  │ Domínguez │ Guerrero  │
│ Irene    │ Hernández │ Martínez  │
│ Sonia    │ Gea       │ Ruiz      │
└──────────┴───────────┴───────────┘


--Devuelve el listado de los alumnos que nacieron en 1999.
SELECT * FROM  persona WHERE fecha_nacimiento REGEXP '1999/' and tipo="alumno"; 
┌────┬───────────┬─────────┬───────────┬───────────┬─────────┬─────────────────┬───────────┬──────────────────┬──────┬────────┐
│ id │    nif    │ nombre  │ apellido1 │ apellido2 │ ciudad  │    direccion    │ telefono  │ fecha_nacimiento │ sexo │  tipo  │
├────┼───────────┼─────────┼───────────┼───────────┼─────────┼─────────────────┼───────────┼──────────────────┼──────┼────────┤
│ 7  │ 97258166K │ Ismael  │ Strosin   │ Turcotte  │ Almería │ C/ Neptuno      │           │ 1999/05/24       │ H    │ alumno │
│ 22 │ 41491230N │ Antonio │ Domínguez │ Guerrero  │ Almería │ C/ Cabo de Gata │ 626652498 │ 1999/02/11       │ H    │ alumno │
└────┴───────────┴─────────┴───────────┴───────────┴─────────┴─────────────────┴───────────┴──────────────────┴──────┴────────┘

--Devuelve el listado de profesores que no han dado de alta su número de teléfono en la base de datos y además su nif termina en K.
SELECT  * FROM persona WHERE telefono is NULL and nif REGEXP 'K$'and tipo="profesor";
┌────┬───────────┬───────────┬───────────┬───────────┬─────────┬───────────────────────────┬──────────┬──────────────────┬──────┬──────────┐
│ id │    nif    │  nombre   │ apellido1 │ apellido2 │ ciudad  │         direccion         │ telefono │ fecha_nacimiento │ sexo │   tipo   │
├────┼───────────┼───────────┼───────────┼───────────┼─────────┼───────────────────────────┼──────────┼──────────────────┼──────┼──────────┤
│ 16 │ 10485008K │ Antonio   │ Fahey     │ Considine │ Almería │ C/ Sierra de los Filabres │          │ 1982/03/18       │ H    │ profesor │
│ 17 │ 85869555K │ Guillermo │ Ruecker   │ Upton     │ Almería │ C/ Sierra de Gádor        │          │ 1973/05/05       │ H    │ profesor │
└────┴───────────┴───────────┴───────────┴───────────┴─────────┴───────────────────────────┴──────────┴──────────────────┴──────┴──────────┘

--Devuelve el listado de las asignaturas que se imparten en el primer cuatrimestre, en el tercer curso del grado que tiene el identificador 7.
SELECT * From asignatura Where cuatrimestre=1 and curso=3 and id_grado=7;
┌────┬───────────────────────────────────────────┬──────────┬─────────────┬───────┬──────────────┬─────────────┬──────────┐
│ id │                  nombre                   │ creditos │    tipo     │ curso │ cuatrimestre │ id_profesor │ id_grado │
├────┼───────────────────────────────────────────┼──────────┼─────────────┼───────┼──────────────┼─────────────┼──────────┤
│ 72 │ Bases moleculares del desarrollo vegetal  │ 4.5      │ obligatoria │ 3     │ 1            │             │ 7        │
│ 73 │ Fisiología animal                         │ 4.5      │ obligatoria │ 3     │ 1            │             │ 7        │
│ 74 │ Metabolismo y biosíntesis de biomoléculas │ 6.0      │ obligatoria │ 3     │ 1            │             │ 7        │
│ 75 │ Operaciones de separación                 │ 6.0      │ obligatoria │ 3     │ 1            │             │ 7        │
│ 76 │ Patología molecular de plantas            │ 4.5      │ obligatoria │ 3     │ 1            │             │ 7        │
│ 77 │ Técnicas instrumentales básicas           │ 4.5      │ obligatoria │ 3     │ 1            │             │ 7        │
└────┴───────────────────────────────────────────┴──────────┴─────────────┴───────┴──────────────┴─────────────┴──────────┘

Consultas multitabla (Join)
--Devuelve un listado con los datos de todas las alumnas que se han matriculado alguna vez en el Grado en Ingeniería Informática (Plan 2015).
SELECT p.* FROM persona as p JOIN alumno_se_matricula_asignatura as m on p.id=m.id_alumno JOIN asignatura as a on a.id=m.id_asignatura join grado as g on g.id=a.id_grado Where g.nombre REGEXP 'Ingeniería Informática' and p.sexo="M"; 
┌────┬───────────┬────────┬───────────┬───────────┬─────────┬────────────────────┬───────────┬──────────────────┬──────┬────────┐
│ id │    nif    │ nombre │ apellido1 │ apellido2 │ ciudad  │     direccion      │ telefono  │ fecha_nacimiento │ sexo │  tipo  │
├────┼───────────┼────────┼───────────┼───────────┼─────────┼────────────────────┼───────────┼──────────────────┼──────┼────────┤
│ 24 │ 85135690V │ Sonia  │ Gea       │ Ruiz      │ Almería │ C/ Mercurio        │ 678812017 │ 1995/04/13       │ M    │ alumno │
│ 24 │ 85135690V │ Sonia  │ Gea       │ Ruiz      │ Almería │ C/ Mercurio        │ 678812017 │ 1995/04/13       │ M    │ alumno │
│ 24 │ 85135690V │ Sonia  │ Gea       │ Ruiz      │ Almería │ C/ Mercurio        │ 678812017 │ 1995/04/13       │ M    │ alumno │
│ 24 │ 85135690V │ Sonia  │ Gea       │ Ruiz      │ Almería │ C/ Mercurio        │ 678812017 │ 1995/04/13       │ M    │ alumno │
│ 24 │ 85135690V │ Sonia  │ Gea       │ Ruiz      │ Almería │ C/ Mercurio        │ 678812017 │ 1995/04/13       │ M    │ alumno │
│ 24 │ 85135690V │ Sonia  │ Gea       │ Ruiz      │ Almería │ C/ Mercurio        │ 678812017 │ 1995/04/13       │ M    │ alumno │
│ 24 │ 85135690V │ Sonia  │ Gea       │ Ruiz      │ Almería │ C/ Mercurio        │ 678812017 │ 1995/04/13       │ M    │ alumno │
│ 24 │ 85135690V │ Sonia  │ Gea       │ Ruiz      │ Almería │ C/ Mercurio        │ 678812017 │ 1995/04/13       │ M    │ alumno │
│ 24 │ 85135690V │ Sonia  │ Gea       │ Ruiz      │ Almería │ C/ Mercurio        │ 678812017 │ 1995/04/13       │ M    │ alumno │
│ 24 │ 85135690V │ Sonia  │ Gea       │ Ruiz      │ Almería │ C/ Mercurio        │ 678812017 │ 1995/04/13       │ M    │ alumno │
│ 23 │ 64753215G │ Irene  │ Hernández │ Martínez  │ Almería │ C/ Zapillo         │ 628452384 │ 1996/03/12       │ M    │ alumno │
│ 23 │ 64753215G │ Irene  │ Hernández │ Martínez  │ Almería │ C/ Zapillo         │ 628452384 │ 1996/03/12       │ M    │ alumno │
│ 23 │ 64753215G │ Irene  │ Hernández │ Martínez  │ Almería │ C/ Zapillo         │ 628452384 │ 1996/03/12       │ M    │ alumno │
│ 23 │ 64753215G │ Irene  │ Hernández │ Martínez  │ Almería │ C/ Zapillo         │ 628452384 │ 1996/03/12       │ M    │ alumno │
│ 23 │ 64753215G │ Irene  │ Hernández │ Martínez  │ Almería │ C/ Zapillo         │ 628452384 │ 1996/03/12       │ M    │ alumno │
│ 23 │ 64753215G │ Irene  │ Hernández │ Martínez  │ Almería │ C/ Zapillo         │ 628452384 │ 1996/03/12       │ M    │ alumno │
│ 23 │ 64753215G │ Irene  │ Hernández │ Martínez  │ Almería │ C/ Zapillo         │ 628452384 │ 1996/03/12       │ M    │ alumno │
│ 23 │ 64753215G │ Irene  │ Hernández │ Martínez  │ Almería │ C/ Zapillo         │ 628452384 │ 1996/03/12       │ M    │ alumno │
│ 23 │ 64753215G │ Irene  │ Hernández │ Martínez  │ Almería │ C/ Zapillo         │ 628452384 │ 1996/03/12       │ M    │ alumno │
│ 23 │ 64753215G │ Irene  │ Hernández │ Martínez  │ Almería │ C/ Zapillo         │ 628452384 │ 1996/03/12       │ M    │ alumno │
│ 19 │ 11578526G │ Inma   │ Lakin     │ Yundt     │ Almería │ C/ Picos de Europa │ 678652431 │ 1998/09/01       │ M    │ alumno │
│ 19 │ 11578526G │ Inma   │ Lakin     │ Yundt     │ Almería │ C/ Picos de Europa │ 678652431 │ 1998/09/01       │ M    │ alumno │
│ 19 │ 11578526G │ Inma   │ Lakin     │ Yundt     │ Almería │ C/ Picos de Europa │ 678652431 │ 1998/09/01       │ M    │ alumno │
│ 19 │ 11578526G │ Inma   │ Lakin     │ Yundt     │ Almería │ C/ Picos de Europa │ 678652431 │ 1998/09/01       │ M    │ alumno │
│ 19 │ 11578526G │ Inma   │ Lakin     │ Yundt     │ Almería │ C/ Picos de Europa │ 678652431 │ 1998/09/01       │ M    │ alumno │
│ 19 │ 11578526G │ Inma   │ Lakin     │ Yundt     │ Almería │ C/ Picos de Europa │ 678652431 │ 1998/09/01       │ M    │ alumno │
│ 19 │ 11578526G │ Inma   │ Lakin     │ Yundt     │ Almería │ C/ Picos de Europa │ 678652431 │ 1998/09/01       │ M    │ alumno │
│ 19 │ 11578526G │ Inma   │ Lakin     │ Yundt     │ Almería │ C/ Picos de Europa │ 678652431 │ 1998/09/01       │ M    │ alumno │
│ 19 │ 11578526G │ Inma   │ Lakin     │ Yundt     │ Almería │ C/ Picos de Europa │ 678652431 │ 1998/09/01       │ M    │ alumno │
│ 19 │ 11578526G │ Inma   │ Lakin     │ Yundt     │ Almería │ C/ Picos de Europa │ 678652431 │ 1998/09/01       │ M    │ alumno │
└────┴───────────┴────────┴───────────┴───────────┴─────────┴────────────────────┴───────────┴──────────────────┴──────┴────────┘
 
--Devuelve un listado con todas las asignaturas ofertadas en el Grado en Ingeniería Informática (Plan 2015).

--Devuelve un listado de los profesores junto con el nombre del departamento al que están vinculados. El listado debe devolver cuatro columnas, primer apellido, segundo apellido, nombre y nombre del departamento. El resultado estará ordenado alfabéticamente de menor a mayor por los apellidos y el nombre.

--Devuelve un listado con el nombre de las asignaturas, año de inicio y año de fin del curso escolar del alumno con nif 26902806M.

--Devuelve un listado con el nombre de todos los departamentos que tienen profesores que imparten alguna asignatura en el Grado en Ingeniería Informática (Plan 2015).

--Devuelve un listado con todos los alumnos que se han matriculado en alguna asignatura durante el curso escolar 2018/2019.

Consultas multitabla (Where)
--Devuelve un listado con los nombres de todos los profesores y los departamentos que tienen vinculados. El listado también debe mostrar aquellos profesores que no tienen ningún departamento asociado. El listado debe devolver cuatro columnas, nombre del departamento, primer apellido, segundo apellido y nombre del profesor. El resultado estará ordenado alfabéticamente de menor a mayor por el nombre del departamento, apellidos y el nombre.

--Devuelve un listado con los profesores que no están asociados a un departamento.

--Devuelve un listado con los departamentos que no tienen profesores asociados.

--Devuelve un listado con los profesores que no imparten ninguna asignatura.

--Devuelve un listado con las asignaturas que no tienen un profesor asignado.

--Devuelve un listado con todos los departamentos que tienen alguna asignatura que no se haya impartido en ningún curso escolar. El resultado debe mostrar el nombre del departamento y el nombre de la asignatura que no se haya impartido nunca.

Consultas resúmen (Funciones)
--Devuelve el número total de alumnas que hay.

Calcula cuántos alumnos nacieron en 1999.

Calcula cuántos profesores hay en cada departamento. El resultado sólo debe mostrar dos columnas, una con el nombre del departamento y otra con el número de profesores que hay en ese departamento. El resultado sólo debe incluir los departamentos que tienen profesores asociados y deberá estar ordenado de mayor a menor por el número de profesores.

--Devuelve un listado con todos los departamentos y el número de profesores que hay en cada uno de ellos. Tenga en cuenta que pueden existir departamentos que no tienen profesores asociados. Estos departamentos también tienen que aparecer en el listado.

--Devuelve un listado con el nombre de todos los grados existentes en la base de datos y el número de asignaturas que tiene cada uno. Tenga en cuenta que pueden existir grados que no tienen asignaturas asociadas. Estos grados también tienen que aparecer en el listado. El resultado deberá estar ordenado de mayor a menor por el número de asignaturas.

--Devuelve un listado con el nombre de todos los grados existentes en la base de datos y el número de asignaturas que tiene cada uno, de los grados que tengan más de 40 asignaturas asociadas.

--Devuelve un listado que muestre el nombre de los grados y la suma del número total de créditos que hay para cada tipo de asignatura. El resultado debe tener tres columnas: nombre del grado, tipo de asignatura y la suma de los créditos de todas las asignaturas que hay de ese tipo. Ordene el resultado de mayor a menor por el número total de crédidos.

--Devuelve un listado que muestre cuántos alumnos se han matriculado de alguna asignatura en cada uno de los cursos escolares. El resultado deberá mostrar dos columnas, una columna con el año de inicio del curso escolar y otra con el número de alumnos matriculados.

--Devuelve un listado con el número de asignaturas que imparte cada profesor. El listado debe tener en cuenta aquellos profesores que no imparten ninguna asignatura. El resultado mostrará cinco columnas: id, nombre, primer apellido, segundo apellido y número de asignaturas. El resultado estará ordenado de mayor a menor por el número de asignaturas.

Subconsultas
--Devuelve todos los datos del alumno más joven.

--Devuelve un listado con los profesores que no están asociados a un departamento.

--Devuelve un listado con los departamentos que no tienen profesores asociados.

--Devuelve un listado con los profesores que tienen un departamento asociado y que no imparten ninguna asignatura.

--Devuelve un listado con las asignaturas que no tienen un profesor asignado.

--Devuelve un listado con todos los departamentos que no han impartido asignaturas en ningún curso escolar.