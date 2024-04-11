# Un instituto de enseñanza guarda los siguientes datos de sus alumnos

##### número de inscripción, comienza desde 1 cada año,
##### año de inscripción,
##### nombre del alumno,
##### documento del alumno,
##### domicilio,
##### ciudad,
##### provincia,
##### clave primaria: número de inscripto y año de inscripción.

```sql
CREATE TABLE alumno(
    numero_de_incription INT,
    año INT ,
    nombre VARCHAR(50),
    Documento_alumno VARCHAR(50),
    Domicilio VARCHAR(50),
    ciudad VARCHAR(50),
    provincia VARCHAR(50),
    primary key(numero_de_incription, año )
);
```
## Se pide:
### Elimine la tabla "alumno" si existe
### Nota:Muestra el comando y la salida.

```SQL
DROP TABLE if EXISTS alumno;

Query OK, 0 rows affected (0,07 sec)

```

### Cree la tabla definiendo una clave primaria compuesta (año de inscripción y número de inscripción).
### Nota:Muestra el comando y la salida.

```sql
CREATE TABLE alumno(
    numero_de_incription INT,
    año INT ,
    nombre VARCHAR(50),
    Documento_alumno VARCHAR(50),
    Domicilio VARCHAR(50),
    ciudad VARCHAR(50),
    provincia VARCHAR(50),
    primary key(numero_de_incription, año )
);
```

### Define los siguientes indices

### Un índice único por el campo "documento" y un índice común por ciudad y provincia.
### Nota:Muestra el comando y la salida. Justifica el tipo de indice en un comentario.

```sql
CREATE UNIQUE INDEX index_documento ON alumno (Documento_alumno);
CREATE INDEX index_ciudad ON alumno (ciudad);
CREATE INDEX index_provincia ON alumno (provicia);
+--------+------------+-----------------+--------------+----------------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| Table  | Non_unique | Key_name        | Seq_in_index | Column_name          | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment | Index_comment | Visible | Expression |
+--------+------------+-----------------+--------------+----------------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| alumno |          0 | PRIMARY         |            1 | numero_de_incription | A         |           0 |     NULL |   NULL |      | BTREE      |         |               | YES     | NULL       |
| alumno |          0 | PRIMARY         |            2 | año                  | A         |           0 |     NULL |   NULL |      | BTREE      |         |               | YES     | NULL       |
| alumno |          0 | index_documento |            1 | Documento_alumno     | A         |           0 |     NULL |   NULL | YES  | BTREE      |         |               | YES     | NULL       |
| alumno |          1 | index_ciudad    |            1 | ciudad               | A         |           0 |     NULL |   NULL | YES  | BTREE      |         |               | YES     | NULL       |
| alumno |          1 | index_provincia |            1 | provincia            | A         |           0 |     NULL |   NULL | YES  | BTREE      |         |               | YES     | NULL       |
+--------+------------+-----------------+--------------+----------------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+


``` 

### Vea los índices de la tabla.
### Nota:Muestra el comando y la salida "show index".

```sql
show index from alumno;
+--------+------------+-----------------+--------------+----------------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| Table  | Non_unique | Key_name        | Seq_in_index | Column_name          | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment | Index_comment | Visible | Expression |
+--------+------------+-----------------+--------------+----------------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| alumno |          0 | PRIMARY         |            1 | numero_de_incription | A         |           0 |     NULL |   NULL |      | BTREE      |         |               | YES     | NULL       |
| alumno |          0 | PRIMARY         |            2 | año                  | A         |           0 |     NULL |   NULL |      | BTREE      |         |               | YES     | NULL       |
| alumno |          0 | index_documento |            1 | Documento_alumno     | A         |           0 |     NULL |   NULL | YES  | BTREE      |         |               | YES     | NULL       |
| alumno |          1 | index_ciudad    |            1 | ciudad               | A         |           0 |     NULL |   NULL | YES  | BTREE      |         |               | YES     | NULL       |
| alumno |          1 | index_provincia |            1 | provincia            | A         |           0 |     NULL |   NULL | YES  | BTREE      |         |               | YES     | NULL       |
+--------+------------+-----------------+--------------+----------------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+

```

### Intente ingresar un alumno con clave primaria repetida.
### Nota:Muestra el comando y la salida.

```sql
INSERT INTO productos (nombre, precio, categoria) VALUES
('Laptop', 999.99, 'Electrónica'),
('Teléfono', 299.99, 'Electrónica'),
('Tablet', 199.99, 'Electrónica');
```

### Intente ingresar un alumno con documento repetido.
### Nota:Muestra el comando y la salida.

```sql
INSERT INTO alumno (numero_de_incription, año, nombre, Documento_alumno, Domicilio, ciudad, provincia) VALUES
    -> (1, 1, 'pepe', 'HOLA', 'gola2st', 'hlorl', 'dwnhuid'),
    -> (1, 1, 'peped', 'HOLAw', 'golaf2st', 'hlgohrl', 'dwnhuid');
ERROR 1062 (23000): Duplicate entry '1-1' for key 'alumno.PRIMARY'
```

### Ingrese varios alumnos de la misma ciudad y provincia.
### Nota:Muestra el comando y la salida.

```sql
INSERT INTO alumno (numero_de_incription, año, nombre, Documento_alumno, Domicilio, ciudad, provincia) VALUES (3, 5, 'pepe', 'HdwOLA', 'gola2st', 'hlorl', 'malaga'), (4, 3, 'peped', 'Hdew2w', 'golaf2st','eihnf', 'malaga');
Query OK, 2 rows affected (0,01 sec)
Records: 2  Duplicates: 0  Warnings: 0

```

### Elimina los indices creados, y muestra que ya no se encuentran.
### Nota:Muestra el comando y la salida.
```sql
DROP INDEX index_documento ON alumno;
DROP INDEX index_ciudad  ON alumno;
DROP INDEX index_provincia ON alumno;
+--------+------------+----------+--------------+----------------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| Table  | Non_unique | Key_name | Seq_in_index | Column_name          | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment | Index_comment | Visible | Expression |
+--------+------------+----------+--------------+----------------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| alumno |          0 | PRIMARY  |            1 | numero_de_incription | A         |           0 |     NULL |   NULL |      | BTREE      |         |               | YES     | NULL       |
| alumno |          0 | PRIMARY  |            2 | año                  | A         |           0 |     NULL |   NULL |      | BTREE      |         |               | YES     | NULL       |
+--------+------------+----------+--------------+----------------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+

```