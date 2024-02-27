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
SELECT DISTINCT p.* FROM persona as p JOIN alumno_se_matricula_asignatura as m on p.id=m.id_alumno JOIN asignatura as a on a.id=m.id_asignatura join grado as g on g.id=a.id_grado Where g.id=7 and p.sexo="M"; 
 
--Devuelve un listado con todas las asignaturas ofertadas en el Grado en Ingeniería Informática (Plan 2015).
SELECT a.nombre From grado as g join asignatura as a on g.id=a.id_grado where  g.id=7;
┌────────────────────────────────────────────────┐
│                     nombre                     │
├────────────────────────────────────────────────┤
│ Biologia celular                               │
│ Física                                         │
│ Matemáticas I                                  │
│ Química general                                │
│ Química orgánica                               │
│ Biología vegetal y animal                      │
│ Bioquímica                                     │
│ Genética                                       │
│ Matemáticas II                                 │
│ Microbiología                                  │
│ Botánica agrícola                              │
│ Fisiología vegetal                             │
│ Genética molecular                             │
│ Ingeniería bioquímica                          │
│ Termodinámica y cinética química aplicada      │
│ Biorreactores                                  │
│ Biotecnología microbiana                       │
│ Ingeniería genética                            │
│ Inmunología                                    │
│ Virología                                      │
│ Bases moleculares del desarrollo vegetal       │
│ Fisiología animal                              │
│ Metabolismo y biosíntesis de biomoléculas      │
│ Operaciones de separación                      │
│ Patología molecular de plantas                 │
│ Técnicas instrumentales básicas                │
│ Bioinformática                                 │
│ Biotecnología de los productos hortofrutículas │
│ Biotecnología vegetal                          │
│ Genómica y proteómica                          │
│ Procesos biotecnológicos                       │
│ Técnicas instrumentales avanzadas              │
└────────────────────────────────────────────────┘

--Devuelve un listado de los profesores junto con el nombre del departamento al que están vinculados. El listado debe devolver cuatro columnas, primer apellido, segundo apellido, nombre y nombre del departamento. El resultado estará ordenado alfabéticamente de menor a mayor por los apellidos y el nombre.
SELECT p.nombre,p.apellido1,p.apellido2,d.nombre From profesor as pro join departamento as d on d.id=pro.id_departamento join persona as p on p.id=pro.id_profesor  ORDER BY p.nombre ;
┌───────────┬────────────┬────────────┬────────────────────┐
│  nombre   │ apellido1  │ apellido2  │       nombre       │
├───────────┼────────────┼────────────┼────────────────────┤
│ Alejandro │ Kohler     │ Schoen     │ Matemáticas        │
│ Alfredo   │ Stiedemann │ Morissette │ Química y Física   │
│ Antonio   │ Fahey      │ Considine  │ Economía y Empresa │
│ Carmen    │ Streich    │ Hirthe     │ Educación          │
│ Cristina  │ Lemke      │ Rutherford │ Economía y Empresa │
│ David     │ Schmidt    │ Fisher     │ Matemáticas        │
│ Esther    │ Spencer    │ Lakin      │ Educación          │
│ Francesca │ Schowalter │ Muller     │ Química y Física   │
│ Guillermo │ Ruecker    │ Upton      │ Educación          │
│ Manolo    │ Hamill     │ Kozey      │ Informática        │
│ Micaela   │ Monahan    │ Murray     │ Agronomía          │
│ Zoe       │ Ramirez    │ Gea        │ Informática        │
└───────────┴────────────┴────────────┴────────────────────┘

--Devuelve un listado con el nombre de las asignaturas, año de inicio y año de fin del curso escolar del alumno con nif 26902806M.
SELECT a.nombre,c.anyo_inicio,c.anyo_fin FROM persona as p JOIN alumno_se_matricula_asignatura as m on p.id=m.id_alumno JOIN asignatura as a on a.id=m.id_asignatura JOIN curso_escolar as c on c.id=m.id_curso_escolar WHERE p.nif="26902806M";
┌──────────────────────────────────────┬─────────────┬──────────┐
│                nombre                │ anyo_inicio │ anyo_fin │
├──────────────────────────────────────┼─────────────┼──────────┤
│ Álgegra lineal y matemática discreta │ 2014        │ 2015     │
│ Cálculo                              │ 2014        │ 2015     │
│ Física para informática              │ 2014        │ 2015     │
└──────────────────────────────────────┴─────────────┴──────────┘

--Devuelve un listado con el nombre de todos los departamentos que tienen profesores que imparten alguna asignatura en el Grado en Ingeniería Informática (Plan 2015).
SELECT DISTINCT p.nombre From profesor as pro join departamento as d on d.id=pro.id_departamento join persona as p on p.id=pro.id_profesor join asignatura as a on pro.id_profesor=a.id_profesor join grado as g on g.id=a.id_grado ;
┌────────┐
│ nombre │
├────────┤
│ Zoe    │
│ Manolo │
└────────┘

--Devuelve un listado con todos los alumnos que se han matriculado en alguna asignatura durante el curso escolar 2018/2019.
SELECT DISTINCT p.nombre FROM persona as p JOIN alumno_se_matricula_asignatura as m on p.id=m.id_alumno JOIN asignatura as a on a.id=m.id_asignatura JOIN curso_escolar as c on c.id=m.id_curso_escolar WHERE  anyo_inicio=2018 and anyo_fin=2019;
┌────────┐
│ nombre │
├────────┤
│ Sonia  │
│ Irene  │
│ Inma   │
└────────┘

Consultas multitabla (Where)
--Devuelve un listado con los nombres de todos los profesores y los departamentos que tienen vinculados. El listado también debe mostrar aquellos profesores que no tienen ningún departamento asociado. El listado debe devolver cuatro columnas, nombre del departamento, primer apellido, segundo apellido y nombre del profesor. El resultado estará ordenado alfabéticamente de menor a mayor por el nombre del departamento, apellidos y el nombre.
select p.nombre, p.apellido1, p.apellido2, d.nombre from persona as p, profesor as pro, departamento as d where p.id=pro.id_profesor and pro.id_departamento=d.id or pro.id_departamento is null order by d.nombre, p.apellido1, p.apellido2, p.nombre;
┌───────────┬────────────┬────────────┬────────────────────┐
│  nombre   │ apellido1  │ apellido2  │       nombre       │
├───────────┼────────────┼────────────┼────────────────────┤
│ Micaela   │ Monahan    │ Murray     │ Agronomía          │
│ Antonio   │ Fahey      │ Considine  │ Economía y Empresa │
│ Cristina  │ Lemke      │ Rutherford │ Economía y Empresa │
│ Guillermo │ Ruecker    │ Upton      │ Educación          │
│ Esther    │ Spencer    │ Lakin      │ Educación          │
│ Carmen    │ Streich    │ Hirthe     │ Educación          │
│ Manolo    │ Hamill     │ Kozey      │ Informática        │
│ Zoe       │ Ramirez    │ Gea        │ Informática        │
│ Alejandro │ Kohler     │ Schoen     │ Matemáticas        │
│ David     │ Schmidt    │ Fisher     │ Matemáticas        │
│ Francesca │ Schowalter │ Muller     │ Química y Física   │
│ Alfredo   │ Stiedemann │ Morissette │ Química y Física   │
└───────────┴────────────┴────────────┴────────────────────┘

--Devuelve un listado con los profesores que no están asociados a un departamento.
SELECT p.nombre,pro.id_profesor From persona as p , profesor as pro where p.id=pro.id_profesor and  NOT EXISTS (SELECT 1 FROM departamento AS d WHERE d.id = pro.id_departamento) ORDER BY p.nombre;


--Devuelve un listado con los departamentos que no tienen profesores asociados.

--Devuelve un listado con los profesores que no imparten ninguna asignatura.
SELECT p.nombre,pro.id_profesor From persona as p , profesor as pro where p.id=pro.id_profesor and pro.id_profesor not in (SELECT id_profesor FROM asignatura);

--Devuelve un listado con las asignaturas que no tienen un profesor asignado.

--Devuelve un listado con todos los departamentos que tienen alguna asignatura que no se haya impartido en ningún curso escolar. El resultado debe mostrar el nombre del departamento y el nombre de la asignatura que no se haya impartido nunca.
select distinct d.nombre, a.nombre  from departamento as d, profesor as pro, asignatura as a where d.id = pro.id_departamento and pro.id_profesor = a.id_profesor and not exists (select m.id_asignatura from alumno_se_matricula_asignatura as m where m.id_asignatura = a.id);
┌─────────────┬───────────────────────────────────────────────────┐
│   nombre    │                      nombre                       │
├─────────────┼───────────────────────────────────────────────────┤
│ Informática │ Arquitectura de Computadores                      │
│ Informática │ Estructura de Datos y Algoritmos I                │
│ Informática │ Ingeniería del Software                           │
│ Informática │ Sistemas Inteligentes                             │
│ Informática │ Sistemas Operativos                               │
│ Informática │ Bases de Datos                                    │
│ Informática │ Estructura de Datos y Algoritmos II               │
│ Informática │ Fundamentos de Redes de Computadores              │
│ Informática │ Planificación y Gestión de Proyectos Informáticos │
│ Informática │ Programación de Servicios Software                │
│ Informática │ Desarrollo de interfaces de usuario               │
└─────────────┴───────────────────────────────────────────────────┘

Consultas resúmen (Funciones)
--Devuelve el número total de alumnas que hay.
select COUNT(nombre) from persona where sexo="M" and tipo="alumno";
┌───────────────┐
│ COUNT(nombre) │
├───────────────┤
│ 3             │
└───────────────┘

--Calcula cuántos alumnos nacieron en 1999.
select COUNT(nombre) from persona where tipo="alumno" AND fecha_nacimiento REGEXP'1999';
┌───────────────┐
│ COUNT(nombre) │
├───────────────┤
│ 2             │
└───────────────┘

--Calcula cuántos profesores hay en cada departamento. El resultado sólo debe mostrar dos columnas, una con el nombre del departamento y otra con el número de profesores que hay en ese departamento. El resultado sólo debe incluir los departamentos que tienen profesores asociados y deberá estar ordenado de mayor a menor por el número de profesores.
select d.nombre,COUNT(p.id_profesor)as numero_profesores from profesor as p join departamento as d on d.id=p.id_departamento GROUP BY d.nombre order by numero_profesores ;
┌────────────────────┬───────────────────┐
│       nombre       │ numero_profesores │
├────────────────────┼───────────────────┤
│ Agronomía          │ 1                 │
│ Economía y Empresa │ 2                 │
│ Informática        │ 2                 │
│ Matemáticas        │ 2                 │
│ Química y Física   │ 2                 │
│ Educación          │ 3                 │
└────────────────────┴───────────────────┘

--Devuelve un listado con todos los departamentos y el número de profesores que hay en cada uno de ellos. Tenga en cuenta que pueden existir departamentos que no tienen profesores asociados. Estos departamentos también tienen que aparecer en el listado.
select d.*, (select count(*) from profesor as p where p.id_departamento = d.id) as profesores from departamento as d group by d.id;
┌────┬─────────────────────┬────────────┐
│ id │       nombre        │ profesores │
├────┼─────────────────────┼────────────┤
│ 1  │ Informática         │ 2          │
│ 2  │ Matemáticas         │ 2          │
│ 3  │ Economía y Empresa  │ 2          │
│ 4  │ Educación           │ 3          │
│ 5  │ Agronomía           │ 1          │
│ 6  │ Química y Física    │ 2          │
│ 7  │ Filología           │ 0          │
│ 8  │ Derecho             │ 0          │
│ 9  │ Biología y Geología │ 0          │
└────┴─────────────────────┴────────────┘


--Devuelve un listado con el nombre de todos los grados existentes en la base de datos y el número de asignaturas que tiene cada uno. Tenga en cuenta que pueden existir grados que no tienen asignaturas asociadas. Estos grados también tienen que aparecer en el listado. El resultado deberá estar ordenado de mayor a menor por el número de asignaturas.
select g.nombre as grado, (select count(a.id) from asignatura as a where a.id_grado = g.id) as asignaturas from grado as g group by grado order by asignaturas desc;
┌────────────────────────────────────────────────────────┬─────────────┐
│                         grado                          │ asignaturas │
├────────────────────────────────────────────────────────┼─────────────┤
│ Grado en Ingeniería Informática (Plan 2015)            │ 51          │
│ Grado en Biotecnología (Plan 2015)                     │ 32          │
│ Grado en Química (Plan 2009)                           │ 0           │
│ Grado en Matemáticas (Plan 2010)                       │ 0           │
│ Grado en Ingeniería Química Industrial (Plan 2010)     │ 0           │
│ Grado en Ingeniería Mecánica (Plan 2010)               │ 0           │
│ Grado en Ingeniería Eléctrica (Plan 2014)              │ 0           │
│ Grado en Ingeniería Electrónica Industrial (Plan 2010) │ 0           │
│ Grado en Ingeniería Agrícola (Plan 2015)               │ 0           │
│ Grado en Ciencias Ambientales (Plan 2009)              │ 0           │
└────────────────────────────────────────────────────────┴─────────────┘

--Devuelve un listado con el nombre de todos los grados existentes en la base de datos y el número de asignaturas que tiene cada uno, de los grados que tengan más de 40 asignaturas asociadas.
select g.nombre as grado, count(a.id) as asignaturas from grado as g join asignatura as a on g.id = a.id_grado group by grado having asignaturas > 40;
┌─────────────────────────────────────────────┬─────────────┐
│                    grado                    │ asignaturas │
├─────────────────────────────────────────────┼─────────────┤
│ Grado en Ingeniería Informática (Plan 2015) │ 51          │
└─────────────────────────────────────────────┴─────────────┘

--Devuelve un listado que muestre el nombre de los grados y la suma del número total de créditos que hay para cada tipo de asignatura. El resultado debe tener tres columnas: nombre del grado, tipo de asignatura y la suma de los créditos de todas las asignaturas que hay de ese tipo. Ordene el resultado de mayor a menor por el número total de crédidos.
select g.nombre as grado, a.tipo, sum(a.creditos) as creditos_totales from grado as g join asignatura as a on g.id = a.id_grado group by grado, a.tipo order by creditos_totales desc;
┌─────────────────────────────────────────────┬─────────────┬──────────────────┐
│                    grado                    │    tipo     │ creditos_totales │
├─────────────────────────────────────────────┼─────────────┼──────────────────┤
│ Grado en Ingeniería Informática (Plan 2015) │ optativa    │ 180.0            │
│ Grado en Biotecnología (Plan 2015)          │ obligatoria │ 120.0            │
│ Grado en Ingeniería Informática (Plan 2015) │ básica      │ 72.0             │
│ Grado en Biotecnología (Plan 2015)          │ básica      │ 60.0             │
│ Grado en Ingeniería Informática (Plan 2015) │ obligatoria │ 54.0             │
└─────────────────────────────────────────────┴─────────────┴──────────────────┘

--Devuelve un listado que muestre cuántos alumnos se han matriculado de alguna asignatura en cada uno de los cursos escolares. El resultado deberá mostrar dos columnas, una columna con el año de inicio del curso escolar y otra con el número de alumnos matriculados.
select c.anyo_inicio, count(a.id_alumno) as alumnos_matriculados from curso_escolar as c join alumno_se_matricula_asignatura as a on c.id = a.id_curso_escolar group by c.anyo_inicio;
┌─────────────┬──────────────────────┐
│ anyo_inicio │ alumnos_matriculados │
├─────────────┼──────────────────────┤
│ 2014        │ 9                    │
│ 2018        │ 30                   │
└─────────────┴──────────────────────┘

--Devuelve un listado con el número de asignaturas que imparte cada profesor. El listado debe tener en cuenta aquellos profesores que no imparten ninguna asignatura. El resultado mostrará cinco columnas: id, nombre, primer apellido, segundo apellido y número de asignaturas. El resultado estará ordenado de mayor a menor por el número de asignaturas.
select p.id, p.nombre, p.apellido1, p.apellido2, (select count(id) from asignatura where p.id = id_profesor) as asignaturas from persona as p join profesor as pro on p.id = pro.id_profesor order by asignaturas desc;
┌────┬───────────┬────────────┬────────────┬─────────────┐
│ id │  nombre   │ apellido1  │ apellido2  │ asignaturas │
├────┼───────────┼────────────┼────────────┼─────────────┤
│ 14 │ Manolo    │ Hamill     │ Kozey      │ 11          │
│ 3  │ Zoe       │ Ramirez    │ Gea        │ 10          │
│ 5  │ David     │ Schmidt    │ Fisher     │ 0           │
│ 8  │ Cristina  │ Lemke      │ Rutherford │ 0           │
│ 10 │ Esther    │ Spencer    │ Lakin      │ 0           │
│ 12 │ Carmen    │ Streich    │ Hirthe     │ 0           │
│ 13 │ Alfredo   │ Stiedemann │ Morissette │ 0           │
│ 15 │ Alejandro │ Kohler     │ Schoen     │ 0           │
│ 16 │ Antonio   │ Fahey      │ Considine  │ 0           │
│ 17 │ Guillermo │ Ruecker    │ Upton      │ 0           │
│ 18 │ Micaela   │ Monahan    │ Murray     │ 0           │
│ 20 │ Francesca │ Schowalter │ Muller     │ 0           │
└────┴───────────┴────────────┴────────────┴─────────────┘

Subconsultas
--Devuelve todos los datos del alumno más joven.
SELECT * FROM persona WHERE tipo="alumno" ORDER BY fecha_nacimiento LIMIT 1;
┌────┬───────────┬──────────┬───────────┬───────────┬─────────┬─────────────────────────┬───────────┬──────────────────┬──────┬────────┐
│ id │    nif    │  nombre  │ apellido1 │ apellido2 │ ciudad  │        direccion        │ telefono  │ fecha_nacimiento │ sexo │  tipo  │
├────┼───────────┼──────────┼───────────┼───────────┼─────────┼─────────────────────────┼───────────┼──────────────────┼──────┼────────┤
│ 1  │ 26902806M │ Salvador │ Sánchez   │ Pérez     │ Almería │ C/ Real del barrio alto │ 950254837 │ 1991/03/28       │ H    │ alumno │
└────┴───────────┴──────────┴───────────┴───────────┴─────────┴─────────────────────────┴───────────┴──────────────────┴──────┴────────┘
--Devuelve un listado con los profesores que no están asociados a un departamento.
SELECT p.nombre,pro.id_profesor From persona as p , profesor as pro where p.id=pro.id_profesor and  NOT EXISTS (SELECT 1 FROM departamento AS d WHERE d.id = pro.id_departamento) ORDER BY p.nombre;
--Devuelve un listado con los departamentos que no tienen profesores asociados.

--Devuelve un listado con los profesores que tienen un departamento asociado y que no imparten ninguna asignatura.
SELECT p.nombre from persona as p join profesor as pr on p.id=pr.id_profesor join departamento as d on d.id=pr.id_departamento where pr.id_profesor not in (SELECT DISTINCT id_profesor from asignatura as a where a.id_profesor=pr.id_profesor);
┌───────────┐
│  nombre   │
├───────────┤
│ David     │
│ Cristina  │
│ Esther    │
│ Carmen    │
│ Alfredo   │
│ Alejandro │
│ Antonio   │
│ Guillermo │
│ Micaela   │
│ Francesca │
└───────────┘

--Devuelve un listado con las asignaturas que no tienen un profesor asignado.
SELECT nombre FROM asignatura WHERE id_profesor IS NULL;
┌────────────────────────────────────────────────────────────────────────┐
│                                 nombre                                 │
├────────────────────────────────────────────────────────────────────────┤
│ Ingeniería de Requisitos                                               │
│ Integración de las Tecnologías de la Información en las Organizaciones │
│ Modelado y Diseño del Software 1                                       │
│ Multiprocesadores                                                      │
│ Seguridad y cumplimiento normativo                                     │
│ Sistema de Información para las Organizaciones                         │
│ Tecnologías web                                                        │
│ Teoría de códigos y criptografía                                       │
│ Administración de bases de datos                                       │
│ Herramientas y Métodos de Ingeniería del Software                      │
│ Informática industrial y robótica                                      │
│ Ingeniería de Sistemas de Información                                  │
│ Modelado y Diseño del Software 2                                       │
│ Negocio Electrónico                                                    │
│ Periféricos e interfaces                                               │
│ Sistemas de tiempo real                                                │
│ Tecnologías de acceso a red                                            │
│ Tratamiento digital de imágenes                                        │
│ Administración de redes y sistemas operativos                          │
│ Almacenes de Datos                                                     │
│ Fiabilidad y Gestión de Riesgos                                        │
│ Líneas de Productos Software                                           │
│ Procesos de Ingeniería del Software 1                                  │
│ Tecnologías multimedia                                                 │
│ Análisis y planificación de las TI                                     │
│ Desarrollo Rápido de Aplicaciones                                      │
│ Gestión de la Calidad y de la Innovación Tecnológica                   │
│ Inteligencia del Negocio                                               │
│ Procesos de Ingeniería del Software 2                                  │
│ Seguridad Informática                                                  │
│ Biologia celular                                                       │
│ Física                                                                 │
│ Matemáticas I                                                          │
│ Química general                                                        │
│ Química orgánica                                                       │
│ Biología vegetal y animal                                              │
│ Bioquímica                                                             │
│ Genética                                                               │
│ Matemáticas II                                                         │
│ Microbiología                                                          │
│ Botánica agrícola                                                      │
│ Fisiología vegetal                                                     │
│ Genética molecular                                                     │
│ Ingeniería bioquímica                                                  │
│ Termodinámica y cinética química aplicada                              │
│ Biorreactores                                                          │
│ Biotecnología microbiana                                               │
│ Ingeniería genética                                                    │
│ Inmunología                                                            │
│ Virología                                                              │
│ Bases moleculares del desarrollo vegetal                               │
│ Fisiología animal                                                      │
│ Metabolismo y biosíntesis de biomoléculas                              │
│ Operaciones de separación                                              │
│ Patología molecular de plantas                                         │
│ Técnicas instrumentales básicas                                        │
│ Bioinformática                                                         │
│ Biotecnología de los productos hortofrutículas                         │
│ Biotecnología vegetal                                                  │
│ Genómica y proteómica                                                  │
│ Procesos biotecnológicos                                               │
│ Técnicas instrumentales avanzadas                                      │
└────────────────────────────────────────────────────────────────────────┘


--Devuelve un listado con todos los departamentos que no han impartido asignaturas en ningún curso escolar.
select * from departamento where not EXISTS (select 1 from profesor);