documento char (8) not null,
nombre varchar(30) not null,
domicilio varchar(30),
ciudad varchar(20),
provincia varchar (20),
telefono varchar(11)

```sql
CREATE TABLE clientes(
    documento VARCHAR(8) NOT NULL,
    nombre VARCHAR(30) NOT NULL,
    Domicilio VARCHAR(30),
    ciudad VARCHAR(20),
    provincia VARCHAR(20),
    telefono varchar(11)
);
```
Se pide:

### Elimine la tabla "cliente" si existe.
### Nota:Muestra el comando y la salida.

```sql
DROP TABLE if EXISTS cliente;
```

### Cree la tabla si clave primaria y incluye a posteriori esta.
### Nota:Muestra el comando y la salida.

```sql
ALTER TABLE clientes MODIFY documento VARCHAR(8) NOT NULL, ADD PRIMARY KEY(documento); 
+----------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| Table    | Non_unique | Key_name | Seq_in_index | Column_name | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment | Index_comment | Visible | Expression |
+----------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| clientes |          0 | PRIMARY  |            1 | documento   | A         |           0 |     NULL |   NULL |      | BTREE      |         |               | YES     | NULL       |
+----------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+

```

### Define los siguientes indices:
### Un índice único por el campo "documento" y un índice común por ciudad y provincia.
### Nota:Muestra el comando y la salida. Justifica el tipo de indice en un comentario.

```sql
CREATE UNIQUE INDEX index_documento ON clientes(documento);
CREATE INDEX index_ciudad ON clientes(ciudad);
CREATE INDEX index_provincia ON clientes(provincia);
+----------+------------+-----------------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| Table    | Non_unique | Key_name        | Seq_in_index | Column_name | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment | Index_comment | Visible | Expression |
+----------+------------+-----------------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| clientes |          0 | PRIMARY         |            1 | documento   | A         |           0 |     NULL |   NULL |      | BTREE      |         |               | YES     | NULL       |
| clientes |          0 | index_documento |            1 | documento   | A         |           0 |     NULL |   NULL |      | BTREE      |         |               | YES     | NULL       |
| clientes |          1 | index_ciudad    |            1 | ciudad      | A         |           0 |     NULL |   NULL | YES  | BTREE      |         |               | YES     | NULL       |
| clientes |          1 | index_provincia |            1 | provincia   | A         |           0 |     NULL |   NULL | YES  | BTREE      |         |               | YES     | NULL       |
+----------+------------+-----------------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+

```

### Vea los índices de la tabla.
### Nota:Muestra el comando y la salida "show index".

```sql
show index from clientes;
+----------+------------+-----------------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| Table    | Non_unique | Key_name        | Seq_in_index | Column_name | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment | Index_comment | Visible | Expression |
+----------+------------+-----------------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| clientes |          0 | PRIMARY         |            1 | documento   | A         |           0 |     NULL |   NULL |      | BTREE      |         |               | YES     | NULL       |
| clientes |          0 | index_documento |            1 | documento   | A         |           0 |     NULL |   NULL |      | BTREE      |         |               | YES     | NULL       |
| clientes |          1 | index_ciudad    |            1 | ciudad      | A         |           0 |     NULL |   NULL | YES  | BTREE      |         |               | YES     | NULL       |
| clientes |          1 | index_provincia |            1 | provincia   | A         |           0 |     NULL |   NULL | YES  | BTREE      |         |               | YES     | NULL       |
+----------+------------+-----------------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+

```

### Agregue un índice único por el campo "telefono".
### Nota:Muestra el comando y la salida.

```sql
CREATE UNIQUE INDEX index_telefono ON clientes(telefono);
+----------+------------+-----------------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| Table    | Non_unique | Key_name        | Seq_in_index | Column_name | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment | Index_comment | Visible | Expression |
+----------+------------+-----------------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| clientes |          0 | PRIMARY         |            1 | documento   | A         |           0 |     NULL |   NULL |      | BTREE      |         |               | YES     | NULL       |
| clientes |          0 | index_documento |            1 | documento   | A         |           0 |     NULL |   NULL |      | BTREE      |         |               | YES     | NULL       |
| clientes |          0 | index_telefono  |            1 | telefono    | A         |           0 |     NULL |   NULL | YES  | BTREE      |         |               | YES     | NULL       |
| clientes |          1 | index_ciudad    |            1 | ciudad      | A         |           0 |     NULL |   NULL | YES  | BTREE      |         |               | YES     | NULL       |
| clientes |          1 | index_provincia |            1 | provincia   | A         |           0 |     NULL |   NULL | YES  | BTREE      |         |               | YES     | NULL       |
+----------+------------+-----------------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+

```

### Elimina los índices.
### Nota:Muestra el comando y la salida.

```sql
DROP INDEX index_documento ON clientes;
DROP INDEX index_ciudad ON clientes;
DROP INDEX index_provincia ON clientes;
DROP INDEX index_telefono ON clientes;
```
