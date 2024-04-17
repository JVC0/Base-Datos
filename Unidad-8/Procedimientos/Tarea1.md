```sql
INSERT INTO Users (UserName, Email) VALUES ('Manuel', 'manuel@example.com');
INSERT INTO Users (UserName, Email) VALUES ('John', 'John@example.com');
INSERT INTO Users (UserName, Email) VALUES ('Andy', 'Andy@example.com');

INSERT INTO Products (ProductName, Price) VALUES ('Producto 4', 20.49);
INSERT INTO Products (ProductName, Price) VALUES ('Producto 5', 450.50);
INSERT INTO Products (ProductName, Price) VALUES ('Producto 6', 14.76);
```
Nota:Realizar la inserción de al menos 3 elementos más en cada tabla.

## Crea procedimientos almacenados para realizar operaciones como insertar un nuevo usuario, actualizar el nombre de un usuario, etc.
### Procedimiento para insertar un nuevo usuario.
```sql
DELIMITER //

CREATE PROCEDURE INSERTAR(in Nombre VARCHAR(20),IN email VARCHAR(100)) 
BEGIN
    INSERT INTO 
    Users (UserName,Email) VALUES (Nombre,email);
END
//
DELIMITER ; 

CALL INSERTAR("PEPE","FYUEWBF@gmail.com");
select * from Users;
+--------+----------+--------------------+
| UserID | UserName | Email              |
+--------+----------+--------------------+
|      1 | Juan     | juan@example.com   |
|      2 | María    | maria@example.com  |
|      3 | Pedro    | pedro@example.com  |
|      4 | Manuel   | manuel@example.com |
|      5 | John     | John@example.com   |
|      6 | Andy     | Andy@example.com   |
|      7 | PEPE     | FYUEWBF@gmail.com  |
+--------+----------+--------------------+

```
### Procedimiento para actualizar el nombre de un usuario.
### Nota: Realiza la invocación y la verificación de que ha funcionado correctamente.

```sql
DELIMITER //

CREATE PROCEDURE ACTUALIZAR(in Nombre VARCHAR(20),IN id_user INT) 
BEGIN
    UPDATE Users SET 
    UserName=Nombre where UserID=id_user;
END
//
DELIMITER ; 
```

## Implementa funciones para realizar cálculos o consultas:

### Función para calcular el precio total de un conjunto de productos.

```sql
DELIMITER //
CREATE FUNCTION SUMAR_TOTA() RETURNS FLOAT DETERMINISTIC
BEGIN
DECLARE resultado FLOAT;
SELECT sum(Price) as total from Products into resultado;
RETURN resultado;
END;
//
DELIMITER ;
SELECT SUMAR_TOTA();
+--------------+
| SUMAR_TOTA() |
+--------------+
|       532.99 |
+--------------+

```
### Función para contar el número de usuarios.
### Nota: Realiza la invocación y la verificación de que ha funcionado correctamente.
```sql
DELIMITER //
CREATE FUNCTION CONTAR_TOTA() RETURNS INTEGER DETERMINISTIC
BEGIN
DECLARE resultado INT;
SELECT sum(ProductID) as total from Products into resultado;
RETURN resultado;
END;
//
DELIMITER ;
select CONTAR_TOTA();
+---------------+
| CONTAR_TOTA() |
+---------------+
|            21 |
+---------------+

```