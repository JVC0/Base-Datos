-- Obtener el nombre del alumno y el nombre de la clase en la que está inscrito.
SELECT a.nombre,c.nombre FROM Alumnos as a JOIN Inscripciones as i on a.id=i.id_alumno join Clases as c on c.id=i.id_clase;
┌────────┬────────────────────────┐
│ nombre │         nombre         │
├────────┼────────────────────────┤
│ Juan   │ Matemáticas 101        │
│ Juan   │ Historia Antigua       │
│ María  │ Literatura Moderna     │
│ María  │ Biología Avanzada      │
│ Pedro  │ Química Orgánica       │
│ Pedro  │ Física Cuántica        │
│ Laura  │ Arte Contemporáneo     │
│ Laura  │ Inglés Avanzado        │
│ Carlos │ Economía Internacional │
│ Ana    │ Derecho Penal          │
└────────┴────────────────────────┘

-- Obtener el nombre del alumno y la materia de las clases en las que está inscrito.
SELECT a.nombre,c.materia FROM Alumnos as a JOIN Inscripciones as i on a.id=i.id_alumno join Clases as c on c.id=i.id_clase;
┌────────┬─────────────┐
│ nombre │   materia   │
├────────┼─────────────┤
│ Juan   │ Matemáticas │
│ Juan   │ Historia    │
│ María  │ Literatura  │
│ María  │ Biología    │
│ Pedro  │ Química     │
│ Pedro  │ Física      │
│ Laura  │ Arte        │
│ Laura  │ Idiomas     │
│ Carlos │ Economía    │
│ Ana    │ Derecho     │
└────────┴─────────────┘

-- Obtener el nombre del alumno, la edad y el nombre del profesor de las clases en las que está inscrito.
SELECT a.nombre,a.edad,c.profesor FROM Alumnos as a JOIN Inscripciones as i on a.id=i.id_alumno join Clases as c on c.id=i.id_clase;
┌────────┬──────┬────────────┐
│ nombre │ edad │  profesor  │
├────────┼──────┼────────────┤
│ Juan   │ 20   │ Profesor X │
│ Juan   │ 20   │ Profesor Y │
│ María  │ 21   │ Profesor Z │
│ María  │ 21   │ Profesor W │
│ Pedro  │ 19   │ Profesor V │
│ Pedro  │ 19   │ Profesor U │
│ Laura  │ 22   │ Profesor T │
│ Laura  │ 22   │ Profesor S │
│ Carlos │ 20   │ Profesor R │
│ Ana    │ 19   │ Profesor Q │
└────────┴──────┴────────────┘

-- Obtener el nombre del alumno y la dirección de las clases en las que está inscrito.
SELECT a.nombre,a.direccion FROM Alumnos as a JOIN Inscripciones as i on a.id=i.id_alumno join Clases as c on c.id=i.id_clase;
┌────────┬───────────┐
│ nombre │ direccion │
├────────┼───────────┤
│ Juan   │ Calle A   │
│ Juan   │ Calle A   │
│ María  │ Calle B   │
│ María  │ Calle B   │
│ Pedro  │ Calle C   │
│ Pedro  │ Calle C   │
│ Laura  │ Calle D   │
│ Laura  │ Calle D   │
│ Carlos │ Calle E   │
│ Ana    │ Calle F   │
└────────┴───────────┘

-- Obtener el nombre del alumno y el nombre de la clase junto con el profesor.
SELECT a.nombre,c.nombre,c.profesor FROM Alumnos as a JOIN Inscripciones as i on a.id=i.id_alumno join Clases as c on c.id=i.id_clase;
┌────────┬────────────────────────┬────────────┐
│ nombre │         nombre         │  profesor  │
├────────┼────────────────────────┼────────────┤
│ Juan   │ Matemáticas 101        │ Profesor X │
│ Juan   │ Historia Antigua       │ Profesor Y │
│ María  │ Literatura Moderna     │ Profesor Z │
│ María  │ Biología Avanzada      │ Profesor W │
│ Pedro  │ Química Orgánica       │ Profesor V │
│ Pedro  │ Física Cuántica        │ Profesor U │
│ Laura  │ Arte Contemporáneo     │ Profesor T │
│ Laura  │ Inglés Avanzado        │ Profesor S │
│ Carlos │ Economía Internacional │ Profesor R │
│ Ana    │ Derecho Penal          │ Profesor Q │
└────────┴────────────────────────┴────────────┘


-- Obtener el nombre del alumno, la materia y el nombre del profesor de las clases en las que está inscrito.
 select a.nombre,c.materia,c.profesor FROM Alumnos as a JOIN Inscripciones as i on a.id=i.id_alumno join Clases as c on c.id=i.id_clase;
┌────────┬─────────────┬────────────┐
│ nombre │   materia   │  profesor  │
├────────┼─────────────┼────────────┤
│ Juan   │ Matemáticas │ Profesor X │
│ Juan   │ Historia    │ Profesor Y │
│ María  │ Literatura  │ Profesor Z │
│ María  │ Biología    │ Profesor W │
│ Pedro  │ Química     │ Profesor V │
│ Pedro  │ Física      │ Profesor U │
│ Laura  │ Arte        │ Profesor T │
│ Laura  │ Idiomas     │ Profesor S │
│ Carlos │ Economía    │ Profesor R │
│ Ana    │ Derecho     │ Profesor Q │
└────────┴─────────────┴────────────┘
-- Obtener el nombre del alumno, la edad y la materia de las clases en las que está inscrito.
 select a.nombre,a.edad,c.materia FROM Alumnos as a JOIN Inscripciones as i on a.id=i.id_alumno join Clases as c on c.id=i.id_clase;
 ┌────────┬──────┬─────────────┐
│ nombre │ edad │   materia   │
├────────┼──────┼─────────────┤
│ Juan   │ 20   │ Matemáticas │
│ Juan   │ 20   │ Historia    │
│ María  │ 21   │ Literatura  │
│ María  │ 21   │ Biología    │
│ Pedro  │ 19   │ Química     │
│ Pedro  │ 19   │ Física      │
│ Laura  │ 22   │ Arte        │
│ Laura  │ 22   │ Idiomas     │
│ Carlos │ 20   │ Economía    │
│ Ana    │ 19   │ Derecho     │
└────────┴──────┴─────────────┘

-- Obtener el nombre del alumno, la dirección y el profesor de las clases en las que está inscrito.
select a.nombre,a.direccion,c.profesor FROM Alumnos as a JOIN Inscripciones as i on a.id=i.id_alumno join Clases as c on c.id=i.id_clase;
┌────────┬───────────┬────────────┐
│ nombre │ direccion │  profesor  │
├────────┼───────────┼────────────┤
│ Juan   │ Calle A   │ Profesor X │
│ Juan   │ Calle A   │ Profesor Y │
│ María  │ Calle B   │ Profesor Z │
│ María  │ Calle B   │ Profesor W │
│ Pedro  │ Calle C   │ Profesor V │
│ Pedro  │ Calle C   │ Profesor U │
│ Laura  │ Calle D   │ Profesor T │
│ Laura  │ Calle D   │ Profesor S │
│ Carlos │ Calle E   │ Profesor R │
│ Ana    │ Calle F   │ Profesor Q │
└────────┴───────────┴────────────┘

-- Obtener el nombre del alumno y la materia de las clases en las que está inscrito, ordenado por el nombre del alumno.
 select a.nombre,c.materia FROM Alumnos as a JOIN Inscripciones as i on a.id=i.id_alumno join Clases as c on c.id=i.id_clase ORDER BY a.nombre;
┌────────┬─────────────┐
│ nombre │   materia   │
├────────┼─────────────┤
│ Ana    │ Derecho     │
│ Carlos │ Economía    │
│ Juan   │ Matemáticas │
│ Juan   │ Historia    │
│ Laura  │ Arte        │
│ Laura  │ Idiomas     │
│ María  │ Literatura  │
│ María  │ Biología    │
│ Pedro  │ Química     │
│ Pedro  │ Física      │
└────────┴─────────────┘

-- Contar cuántos alumnos están inscritos en cada clase.
select Count(c.materia),c.materia FROM Alumnos as a JOIN Inscripciones as i on a.id=i.id_alumno join Clases as c on c.id=i.id_clase group by materia;
┌──────────────────┬─────────────┐
│ Count(c.materia) │   materia   │
├──────────────────┼─────────────┤
│ 1                │ Arte        │
│ 1                │ Biología    │
│ 1                │ Derecho     │
│ 1                │ Economía    │
│ 1                │ Física      │
│ 1                │ Historia    │
│ 1                │ Idiomas     │
│ 1                │ Literatura  │
│ 1                │ Matemáticas │
│ 1                │ Química     │
└──────────────────┴─────────────┘

