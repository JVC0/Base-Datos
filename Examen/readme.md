# Tarea1

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

# Tarea 2 - Funciones y procedimientos

<div align=center>



_Pez de la buena suerte, pero segundo_

</div>

## Creación de la base de datos

La base de datos a utilizar para la realización de este ejercicio es la de _Jardinería_, utilizada en ejercicios previos. A continuación se deja el diagrama entidad-relación de la misma.

<div align=center>

![img](https://github.com/jpexposito/docencia/raw/master/Primero/BAE/UNIDAD-8/tareas/tarea2/img/er.png)

</div>

## Función  __calcular_precio_total_pedido__

__Nota__: Dado un código de pedido la función debe calcular la suma total del pedido. Tenga en cuenta que un pedido puede contener varios productos diferentes y varias cantidades de cada producto.
- Parámetros de entrada: codigo_pedido (INT)
- Parámetros de salida: El precio total del pedido (FLOAT)

```sql
DELIMITER //
DROP FUNCTION IF EXISTS calcular_precio_total_pedido;
CREATE FUNCTION calcular_precio_total_pedido(in_codigo_pedido int)
RETURNS float deterministic
BEGIN
    DECLARE precio_total float;
    SELECT SUM(precio_unidad * cantidad) FROM detalle_pedido WHERE codigo_pedido = in_codigo_pedido INTO precio_total;
    RETURN precio_total;
END //
DELIMITER ;
```

### Comprobación:
```sql
select calcular_precio_total_pedido(2);

+---------------------------------+
| calcular_precio_total_pedido(2) |
+---------------------------------+
|                            7113 |
+---------------------------------+
```

## Función  __calcular_suma_pedidos_cliente__

__Nota__: Dado un código de cliente la función debe calcular la suma total de todos los pedidos realizados por el cliente. Deberá hacer uso de la función calcular_precio_total_pedido que ha desarrollado en el apartado anterior.
- Parámetros de entrada: codigo_cliente (INT)
- Parámetros de salida: La suma total de todos los pedidos del cliente (FLOAT)

```sql
DELIMITER //
DROP FUNCTION IF EXISTS calcular_suma_pedidos_cliente;
CREATE FUNCTION calcular_suma_pedidos_cliente(in_codigo_cliente int)
RETURNS float deterministic
BEGIN
    DECLARE suma_total float;
    DECLARE pedido int;

    DECLARE pedidos_cur CURSOR FOR SELECT codigo_pedido from pedido where codigo_cliente = in_codigo_cliente;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET suma_total = 0;
    
    SET suma_total = 0.0;

    OPEN pedidos_cur;

    loop1: LOOP
        FETCH pedidos_cur into pedido;
        IF suma_total = 0.0 THEN
            LEAVE loop1;
        END IF;
        SET suma_total = suma_total + calcular_precio_total_pedido(pedido);   
    END LOOP loop1;

    CLOSE pedidos_cur;

    RETURN suma_total;
END//
DELIMITER ;
```

### Comprobación:
```sql
select calcular_suma_pedidos_cliente(16);


```

## Función __calcular_suma_pagos_cliente__

__Nota__: Dado un código de cliente la función debe calcular la suma total de los pagos realizados por ese cliente.
- Parámetros de entrada: codigo_cliente (INT)
- Parámetros de salida: La suma total de todos los pagos del cliente (FLOAT)

```sql
DELIMITER //
DROP FUNCTION IF EXISTS calcular_suma_pagos_cliente;
CREATE FUNCTION calcular_suma_pagos_cliente(in_codigo_cliente INT) 
RETURNS FLOAT DETERMINISTIC
BEGIN
    DECLARE pagos_total FLOAT;
    
    SELECT SUM(total)
    INTO pagos_total
    FROM pago as p
    WHERE p.codigo_cliente = in_codigo_cliente;
    
    RETURN pagos_total;
END//
DELIMITER ;
``` 

# Tarea3

La base de datos de __"empleados"__ es un sistema diseñado para gestionar información relacionada con los empleados de una empresa. Esta base de datos está estructurada en torno a la entidad principal "empleados", que contiene información detallada sobre cada empleado. La estructura de la base de datos se compone de una única tabla principal llamada "empleados".

La tabla "empleados" está diseñada con las siguientes columnas:

- __id__: Esta columna sirve como identificador único para cada empleado. Es de tipo entero y se genera automáticamente utilizando la propiedad AUTO_INCREMENT.
- __nombre__: Almacena el nombre completo de cada empleado. Es de tipo cadena de caracteres (VARCHAR) con una longitud máxima de 100 caracteres.
- __salario__: Esta columna registra el salario de cada empleado. Se define como un número decimal (DECIMAL) con una precisión de 10 dígitos en total y 2 dígitos después del punto decimal.

```sql
-- Crear la base de datos
CREATE DATABASE IF NOT EXISTS empresa;
USE empresa;

-- Crear la tabla empleados
CREATE TABLE empleados (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100),
    salario DECIMAL(10, 2)
);

-- Insertar algunos datos de ejemplo
INSERT INTO empleados (nombre, salario) VALUES
('Juan', 3000.00),
('María', 3500.00),
('Pedro', 3200.00);
```

Veamos la tabla:

```sql
mysql> select * from empleados;
+----+--------+---------+
| id | nombre | salario |
+----+--------+---------+
|  1 | Juan   | 3300.00 |
|  2 | María  | 3850.00 |
|  3 | Pedro  | 3520.00 |
+----+--------+---------+
```


Vamos a crear distintos procedimientos que harán uso de cursores. Vamos a ver un ejemplo y ver como se define y comporta.

  1. Crea un procedimiento que aumente el salario de los empleados en un porcentaje dado:
  
      ```code
      salario * (1 + porcentaje / 100) 
      ```

      El procedimiento que resulta el problema planteado será el siguiente:

      ```sql
        DELIMITER //
        CREATE PROCEDURE aumentar_salarios(IN porcentaje DECIMAL(5,2))
        BEGIN
            DECLARE done INT DEFAULT FALSE;
            DECLARE emp_id INT;
            DECLARE emp_nombre VARCHAR(100);
            DECLARE emp_salario DECIMAL(10, 2);
            DECLARE cur CURSOR FOR SELECT id, nombre, salario FROM empleados;
            DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

            OPEN cur;
            read_loop: LOOP
                FETCH cur INTO emp_id, emp_nombre, emp_salario;
                IF done THEN
                    LEAVE read_loop;
                END IF;
                UPDATE empleados SET salario = salario * (1 + porcentaje / 100) WHERE id = emp_id;
            END LOOP;
            CLOSE cur;
        END //
        DELIMITER ;
      ```

      Donde:

     - __DELIMITER //__: Esto establece el delimitador de sentencias a //. Esto es necesario porque los procedimientos almacenados en MySQL pueden contener puntos y comas, lo que podría confundir al intérprete si no se establece un delimitador personalizado.
     - __CREATE PROCEDURE aumentar_salarios(IN porcentaje DECIMAL(5,2))__: Esta línea crea un nuevo procedimiento almacenado llamado aumentar_salarios. Toma un parámetro de entrada porcentaje que es de tipo DECIMAL(5,2), lo que significa que puede aceptar números decimales con un máximo de 5 dígitos en total, 2 de los cuales pueden estar después del punto decimal.
     - __BEGIN__: Inicia el bloque de código del procedimiento almacenado.
     - __DECLARE done INT DEFAULT FALSE;__: Declara una variable local llamada done que se usará para controlar la terminación del bucle del cursor.
     - __DECLARE emp_id INT;, DECLARE emp_nombre VARCHAR(100);, DECLARE emp_salario DECIMAL(10, 2);__: Declara variables locales para almacenar el id, nombre y salario de los empleados que se recuperarán del cursor.
     - __DECLARE cur CURSOR FOR SELECT id, nombre, salario FROM empleados;__: Declara un cursor llamado cur que recupera los id, nombre y salario de la tabla empleados.
     - __DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;__: Declara un manejador que se activará cuando ya no haya más filas para leer en el cursor. Establece la variable done en TRUE, lo que indica que se ha completado el bucle del cursor.
     - __OPEN cur;__: Abre el cursor para comenzar a recorrer los registros de la tabla empleados.
     - __read_loop__: LOOP: Etiqueta del bucle para que pueda ser interrumpido con la instrucción LEAVE.
     - __FETCH cur INTO emp_id, emp_nombre, emp_salario;__: Recupera el siguiente conjunto de valores del cursor y los almacena en las variables declaradas.
     __IF done THEN LEAVE read_loop; END IF;__: Verifica si se han recuperado todas las filas del cursor. Si es así, sale del bucle utilizando la etiqueta LEAVE.
     - __UPDATE empleados SET salario = salario * (1 + porcentaje / 100) WHERE id = emp_id;__: Actualiza el salario del empleado multiplicándolo por el porcentaje dado.
     - __END LOOP;__: Fin del bucle.
     - __CLOSE cur;__: Cierra el cursor.
     - __END //__: Fin del procedimiento almacenado.

      Realicemos la llamada al procedimiento:

        ```sql
        CALL aumentar_salarios(10);
        ```

      Salida:

        ```sql
          +----+--------+---------+
          | id | nombre | salario |
          +----+--------+---------+
          |  1 | Juan   | 3300.00 |
          |  2 | María  | 3850.00 |
          |  3 | Pedro  | 3520.00 |
          +----+--------+---------+
          3 rows in set (0,00 sec)
        ```

Teniendo este ejemplo como referencia, realiza:

## Procedimientos a crear

1. Escribe un procedimiento almacenado que aumente los salarios de todos los empleados en un 5%, pero excluya a aquellos cuyo salario sea superior a 3200. El procedimiento debe tener parámetros de entrada.

```sql
DELIMITER //
CREATE PROCEDURE aumentar_salarios_cincoporciento()
BEGIN
  DECLARE done INT DEFAULT FALSE;
  DECLARE emp_id INT;
  DECLARE emp_nombre VARCHAR(100);
  DECLARE emp_salario DECIMAL(10,2);
  DECLARE cur CURSOR FOR SELECT id, nombre, salario FROM empleados WHERE salario <= 3200;
  DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

  OPEN cur;
  read_loop: LOOP
    FETCH cur INTO emp_id, emp_nombre, emp_salario;
    IF done THEN
      LEAVE read_loop;
    END IF;
    UPDATE empleados SET salario = salario + (salario * 0.05) WHERE id = emp_id;
  END LOOP;
  CLOSE cur;
END //
DELIMITER ;
```

#### Comprobación

```sql
select * from empleados;
+----+--------+---------+
| id | nombre | salario |
+----+--------+---------+
|  1 | Juan   | 3000.00 |
|  2 | María  | 3500.00 |
|  3 | Pedro  | 3200.00 |
+----+--------+---------+

call aumentar_salarios_cincoporciento()

select * from empleados;
+----+--------+---------+
| id | nombre | salario |
+----+--------+---------+
|  1 | Juan   | 3150.00 |
|  2 | María  | 3500.00 |
|  3 | Pedro  | 3360.00 |
+----+--------+---------+
```

2. Escribe un procedimiento almacenado que calcule el salario anual de cada empleado (asumiendo que trabajan todo el año) y lo imprima.

```sql
DROP PROCEDURE IF EXISTS calcular_salario_anual;
DELIMITER //
CREATE PROCEDURE calcular_salario_anual()
BEGIN
  SELECT id, nombre, salario * 12 as salario_anual from empleados;
END //
DELIMITER ;
```

#### Comprobación 

```sql
call calcular_salario_anual();

+----+--------+---------------+
| id | nombre | salario_anual |
+----+--------+---------------+
|  1 | Juan   |      36000.00 |
|  2 | María  |      42000.00 |
|  3 | Pedro  |      38400.00 |
+----+--------+---------------+
```

3. Escribe un procedimiento almacenado que cuente y muestre el número de empleados en cada rango de salario (por ejemplo, menos de 3000, entre 3000 y 5000, más de 5000). El procedimiento debe tener parámetros de entrada.

```sql
DROP PROCEDURE IF EXISTS rango_salario;
DELIMITER //
CREATE PROCEDURE rango_salario(IN limite_minimo DECIMAL(10,2), IN limite_maximo DECIMAL(10,2))
BEGIN
  DECLARE done INT DEFAULT FALSE;
  DECLARE emp_count INT DEFAULT 0;
  DECLARE emp_salario DECIMAL(10, 2);
  DECLARE cur CURSOR FOR SELECT salario FROM empleados WHERE salario BETWEEN limite_minimo AND limite_maximo;
  DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

  OPEN cur;
  read_loop: LOOP
    FETCH cur INTO emp_salario;
    IF done THEN
      LEAVE read_loop;
    END IF;
      SET emp_count = emp_count + 1;    
  END LOOP;
  CLOSE cur;

  SELECT emp_count AS resultado;
END //
DELIMITER ;
```

#### Comprobación

```sql
call rango_salario(1000, 3500);

+-----------+
| resultado |
+-----------+
|         3 |
+-----------+
```

</div>

# Tarea 4


<div align="justify">

## Índice

- [Bases dadas por el docente](#bases-dadas-por-el-docente)
- [Procedimientos a crear](#procedimientos-a-crear)

## Trabajo con cursores la BBDD Empleados

La base de datos de __"empleados"__ es un sistema diseñado para gestionar información relacionada con los empleados de una empresa. Esta base de datos está estructurada en torno a la entidad principal "empleados", que contiene información detallada sobre cada empleado. La estructura de la base de datos se compone de una única tabla principal llamada "empleados".

La tabla "empleados" está diseñada con las siguientes columnas:

- __id__: Esta columna sirve como identificador único para cada empleado. Es de tipo entero y se genera automáticamente utilizando la propiedad AUTO_INCREMENT.
- __nombre__: Almacena el nombre completo de cada empleado. Es de tipo cadena de caracteres (VARCHAR) con una longitud máxima de 100 caracteres.
- __salario__: Esta columna registra el salario de cada empleado. Se define como un número decimal (DECIMAL) con una precisión de 10 dígitos en total y 2 dígitos después del punto decimal.

```sql
CREATE DATABASE IF NOT EXISTS empresa;
USE empresa;

CREATE TABLE empleados (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100),
    salario DECIMAL(10, 2)
);

INSERT INTO empleados (nombre, salario) VALUES
('Juan', 3000.00),
('María', 3500.00),
('Pedro', 3200.00);
```

Veamos la tabla:

```sql
mysql> select * from empleados;
+----+--------+---------+
| id | nombre | salario |
+----+--------+---------+
|  1 | Juan   | 3300.00 |
|  2 | María  | 3850.00 |
|  3 | Pedro  | 3520.00 |
+----+--------+---------+
```

Realiza:

1. Escribe un procedimiento almacenado que copie los nombres de todos los empleados cuyo salario sea superior a 3000 en una nueva tabla llamada 'empleados_destino'. Es necesario crear la tabla __empleados_destiono__.
    
```sql
DELIMITER //
CREATE PROCEDURE copiar_empleados()
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE emp_id INT;
    DECLARE emp_nombre VARCHAR(100);
    DECLARE emp_salario DECIMAL(10, 2);
    DECLARE cur CURSOR FOR SELECT id, nombre, salario FROM empleados WHERE salario > 3000;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    DROP TABLE IF EXISTS empleados_destino;
    CREATE TABLE empleados_destino (
        id INT PRIMARY KEY AUTO_INCREMENT,
        nombre VARCHAR(100),
        salario DECIMAL(10, 2)
    );

    OPEN cur;
    read_loop: LOOP
        FETCH cur INTO emp_id, emp_nombre, emp_salario;
        IF done THEN
            LEAVE read_loop;
        END IF; 
        INSERT INTO empleados_destino(nombre, salario) values(emp_nombre, emp_salario);
    END LOOP;
    CLOSE cur;
END //
DELIMITER ;
```

#### Comprobación

```sql
select * from empleados;
+----+--------+---------+
| id | nombre | salario |
+----+--------+---------+
|  1 | Juan   | 3000.00 |
|  2 | María  | 3500.00 |
|  3 | Pedro  | 3200.00 |
+----+--------+---------+

call copiar_empleados();

select * from empleados_destino;
+----+--------+---------+
| id | nombre | salario |
+----+--------+---------+
|  1 | María  | 3500.00 |
|  2 | Pedro  | 3200.00 |
+----+--------+---------+
```

2. Escribe un procedimiento almacenado que seleccione los empleados cuyos nombres contienen la letra 'a' y aumente sus salarios en un 10%.

```sql
DELIMITER //
CREATE PROCEDURE aumentar_salarios_empleados_con_A()
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE emp_id INT;
    DECLARE cur CURSOR FOR SELECT id FROM empleados WHERE nombre regexp 'a';
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    OPEN cur;
    read_loop: LOOP
        FETCH cur INTO emp_id;
        IF done THEN
            LEAVE read_loop;
        END IF; 
        UPDATE empleados SET salario = salario + (salario * 0.1) WHERE id = emp_id;
    END LOOP;
    CLOSE cur;
END //
DELIMITER ;
```

#### Comprobación

```sql
select * from empleados;
+----+--------+---------+
| id | nombre | salario |
+----+--------+---------+
|  1 | Juan   | 3000.00 |
|  2 | María  | 3500.00 |
|  3 | Pedro  | 3200.00 |
+----+--------+---------+

call aumentar_salarios_empleados_con_A();

select * from empleados;
+----+--------+---------+
| id | nombre | salario |
+----+--------+---------+
|  1 | Juan   | 3300.00 |
|  2 | María  | 3850.00 |
|  3 | Pedro  | 3200.00 |
+----+--------+---------+
```

3. Escribe un procedimiento almacenado que seleccione empleados cuyos IDs estén en un rango específico, por ejemplo, entre 2 y 3.

```sql
DROP PROCEDURE IF EXISTS seleccionar_rango_empleados;
DELIMITER //
CREATE PROCEDURE seleccionar_rango_empleados(IN min_id INT, max_id INT)
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE emp_id INT;
    DECLARE emp_nombre VARCHAR(100);
    DECLARE emp_salario DECIMAL(10, 2);
    DECLARE cur CURSOR FOR SELECT id, nombre, salario FROM empleados WHERE id BETWEEN min_id AND max_id;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    DROP TABLE IF EXISTS _resultado;
    CREATE TABLE _resultado (
        id INT PRIMARY KEY,
        nombre VARCHAR(100),
        salario DECIMAL(10, 2)
    );

    OPEN cur;
    read_loop: LOOP
        FETCH cur INTO emp_id, emp_nombre, emp_salario;
        IF done THEN
            LEAVE read_loop;
        END IF; 
        INSERT INTO _resultado(id, nombre, salario) values(emp_id, emp_nombre, emp_salario);
    END LOOP;
    CLOSE cur;

    SELECT * FROM _resultado;
    DROP TABLE IF EXISTS _resultado;
END //
DELIMITER ;
```

#### Comprobación

```sql
select * from empleados;
+----+--------+---------+
| id | nombre | salario |
+----+--------+---------+
|  1 | Juan   | 3300.00 |
|  2 | María  | 3850.00 |
|  3 | Pedro  | 3200.00 |
+----+--------+---------+

call seleccionar_rango_empleados(2, 3);
+----+--------+---------+
| id | nombre | salario |
+----+--------+---------+
|  2 | María  | 3850.00 |
|  3 | Pedro  | 3200.00 |
+----+--------+---------+
```

4. Escribe un procedimiento almacenado que elimine todos los empleados cuyo salario esté entre 2000 y 2500.

```sql
DELIMITER //
CREATE PROCEDURE eliminar_empleados()
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE emp_id INT;
    DECLARE cur CURSOR FOR SELECT id FROM empleados WHERE salario BETWEEN 2000 AND 2500;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    OPEN cur;
    read_loop: LOOP
        FETCH cur INTO emp_id;
        IF done THEN
            LEAVE read_loop;
        END IF; 
        DELETE FROM empleados WHERE id = emp_id;
    END LOOP;
    CLOSE cur;
END //
DELIMITER ;
```

#### Comprobación

```sql
select * from empleados;
+----+--------+---------+
| id | nombre | salario |
+----+--------+---------+
|  1 | Juan   | 3300.00 |
|  2 | María  | 3850.00 |
|  3 | Pedro  | 3200.00 |
+----+--------+---------+

call eliminar_empleados();

select * from empleados;
+----+--------+---------+
| id | nombre | salario |
+----+--------+---------+
|  1 | Juan   | 3300.00 |
|  2 | María  | 3850.00 |
|  3 | Pedro  | 3200.00 |
+----+--------+---------+
```

5. Escribe un procedimiento almacenado que aumente el salario de un empleado específico cuyo nombre se pasa como parámetro en un 20%.
   
```sql
DELIMITER //
CREATE PROCEDURE aumentar_salario_empleado_especifico(IN name VARCHAR(100))
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE emp_id INT;
    DECLARE cur CURSOR FOR SELECT id FROM empleados WHERE nombre = name;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    OPEN cur;
    read_loop: LOOP
        FETCH cur INTO emp_id;
        IF done THEN
            LEAVE read_loop;
        END IF; 
        UPDATE empleados SET salario = salario + (salario * 0.2) WHERE id = emp_id;
    END LOOP;
    CLOSE cur;
END //
DELIMITER ;
```

#### Comprobación

```sql
select * from empleados;
+----+--------+---------+
| id | nombre | salario |
+----+--------+---------+
|  1 | Juan   | 3300.00 |
|  2 | María  | 3850.00 |
|  3 | Pedro  | 3200.00 |
+----+--------+---------+

call aumentar_salario_empleado_especifico("María");

select * from empleados;
+----+--------+---------+
| id | nombre | salario |
+----+--------+---------+
|  1 | Juan   | 3300.00 |
|  2 | María  | 4620.00 |
|  3 | Pedro  | 3200.00 |
+----+--------+---------+
```
</div>
 
# Tarea 5
<div align="justify">

## Trabajo con procedimientos de generación de información

Dado el procedimiento base:

```sql
DELIMITER //

CREATE PROCEDURE my_loop(IN iterations INT)
BEGIN
    DECLARE counter INT DEFAULT 0;

    WHILE counter < iterations DO
        -- Coloca aquí el código que deseas ejecutar en cada iteración del bucle
        -- Por ejemplo, puedes imprimir el valor del contador
        SELECT counter;

        SET counter = counter + 1;
    END WHILE;
END//

DELIMITER ;

-- Llama al procedimiento 
CALL my_loop(5);
```

Y las funciones descritas en aleatoriedad, realiza los siguientes procedimientos, que realicen las siguietes operaciones:

  1. Inserta cinco filas en la tabla empleados con nombres aleatorios generados usando la función CONCAT() junto con RAND().

    ```sql
    INSERT INTO empleados (nombre, salario)
    VALUES (CONCAT('Empleado', RAND()), FLOOR(RAND() * (10000 - 2000 + 1)) + 2000),
            (CONCAT('Empleado', RAND()), FLOOR(RAND() * (10000 - 2000 + 1)) + 2000),
            (CONCAT('Empleado', RAND()), FLOOR(RAND() * (10000 - 2000 + 1)) + 2000),
            (CONCAT('Empleado', RAND()), FLOOR(RAND() * (10000 - 2000 + 1)) + 2000),
            (CONCAT('Empleado', RAND()), FLOOR(RAND() * (10000 - 2000 + 1)) + 2000);
    ```

 2. Inserta tres filas en la tabla empleados con nombres aleatorios generados usando la función __UUID()__.

    ```sql
    INSERT INTO empleados (nombre, salario)
    VALUES (UUID(), FLOOR(RAND() * (10000 - 2000 + 1)) + 2000),
          (UUID(), FLOOR(RAND() * (10000 - 2000 + 1)) + 2000),
          (UUID(), FLOOR(RAND() * (10000 - 2000 + 1)) + 2000);
      ```

  3. Inserta dos filas en la tabla empleados con nombres aleatorios generados usando la función RAND() junto con ORDER BY RAND().

      ```sql
      INSERT INTO empleados (nombre, salario)
      SELECT CONCAT('Empleado', RAND()), FLOOR(RAND() * (10000 - 2000 + 1)) + 2000
      FROM (SELECT 1 UNION SELECT 2) AS sub
      ORDER BY RAND()
      LIMIT 2;
      ```

 4. Inserta cuatro filas en la tabla empleados con nombres aleatorios generados usando la función SUBSTRING_INDEX(UUID(), '-', -1).

    ```sql
    INSERT INTO empleados (nombre, salario)
    VALUES (SUBSTRING_INDEX(UUID(), '-', -1), FLOOR(RAND() * (10000 - 2000 + 1)) + 2000),
          (SUBSTRING_INDEX(UUID(), '-', -1), FLOOR(RAND() * (10000 - 2000 + 1)) + 2000),
          (SUBSTRING_INDEX(UUID(), '-', -1), FLOOR(RAND() * (10000 - 2000 + 1)) + 2000),
          (SUBSTRING_INDEX(UUID(), '-', -1), FLOOR(RAND() * (10000 - 2000 + 1)) + 2000);
    ```
 
 5. Inserta seis filas en la tabla empleados con nombres aleatorios generados usando la función RAND() y una semilla diferente.

    ```sql
    INSERT INTO empleados (nombre, salario)
    VALUES (CONCAT('Empleado', RAND(1)), FLOOR(RAND(1) * (10000 - 2000 + 1)) + 2000),
          (CONCAT('Empleado', RAND(2)), FLOOR(RAND(2) * (10000 - 2000 + 1)) + 2000),
          (CONCAT('Empleado', RAND(3)), FLOOR(RAND(3) * (10000 - 2000 + 1)) + 2000),
          (CONCAT('Empleado', RAND(4)), FLOOR(RAND(4) * (10000 - 2000 + 1)) + 2000),
          (CONCAT('Empleado', RAND(5)), FLOOR(RAND(5) * (10000 - 2000 + 1)) + 2000),
          (CONCAT('Empleado', RAND(6)), FLOOR(RAND(6) * (10000 - 2000 + 1)) + 2000);
    ```

Crea cada uno de los procedimientos, maximixando el número de parámetros de entrada necesarios, por ejemplo: ___nombre, salario, e id__.

___Crea el procedimiento, la invocación, y el estado de la tabla después de la invocación de este___.

## Ejercicio 01

__Respuesta:__
```sql
DROP PROCEDURE IF EXISTS nombres_aleatorios;
DELIMITER //
CREATE PROCEDURE nombres_aleatorios(IN prefix VARCHAR(50), input_rows INT, base_salary INT, max_salary INT)
BEGIN
    DECLARE counter INT DEFAULT 0;

    WHILE counter < input_rows DO
        INSERT INTO empleados (nombre, salario) VALUES (CONCAT(prefix, RAND()), FLOOR(RAND() * (max_salary - base_salary + 1)) + base_salary);

        SET counter = counter + 1;
    END WHILE;
END //
DELIMITER ;
```

__Comprobación__:
```sql
select * from empleados;
+----+--------+---------+
| id | nombre | salario |
+----+--------+---------+
|  1 | Juan   | 3000.00 |
|  2 | María  | 3500.00 |
|  3 | Pedro  | 3200.00 |
+----+--------+---------+

call nombres_aleatorios("Empleado", 5, 1000, 7000);

select * from empleados;
+----+-----------------------------+---------+
| id | nombre                      | salario |
+----+-----------------------------+---------+
|  1 | Juan                        | 3000.00 |
|  2 | María                       | 3500.00 |
|  3 | Pedro                       | 3200.00 |
|  4 | Empleado0.4406885899982309  | 5820.00 |
|  5 | Empleado0.6944879076392277  | 1375.00 |
|  6 | Empleado0.22907321176405365 | 6748.00 |
|  7 | Empleado0.10200013136677456 | 4819.00 |
|  8 | Empleado0.8763438666950388  | 3834.00 |
+----+-----------------------------+---------+
```

## Ejercicio 02

__Respuesta:__

```sql
DROP PROCEDURE IF EXISTS nombres_aleatorios_uuid;
DELIMITER //
CREATE PROCEDURE nombres_aleatorios_uuid(IN prefix VARCHAR(50), input_rows INT, base_salary INT, max_salary INT)
BEGIN
    DECLARE counter INT DEFAULT 0;

    WHILE counter < input_rows DO
        INSERT INTO empleados (nombre, salario) VALUES (CONCAT(prefix, CONV(UUID(), 16, 10)), FLOOR(RAND() * (max_salary - base_salary + 1)) + base_salary);

        SET counter = counter + 1;
    END WHILE;
END //
DELIMITER ;
```

__Comprobación:__

```sql
select * from empleados;
+----+-----------------------------+---------+
| id | nombre                      | salario |
+----+-----------------------------+---------+
|  1 | Juan                        | 3000.00 |
|  2 | María                       | 3500.00 |
|  3 | Pedro                       | 3200.00 |
|  4 | Empleado0.4406885899982309  | 5820.00 |
|  5 | Empleado0.6944879076392277  | 1375.00 |
|  6 | Empleado0.22907321176405365 | 6748.00 |
|  7 | Empleado0.10200013136677456 | 4819.00 |
|  8 | Empleado0.8763438666950388  | 3834.00 |
+----+-----------------------------+---------+

call nombres_aleatorios_uuid(3, 2000, 10000);

select * from empleados;
+----+-----------------------------+---------+
| id | nombre                      | salario |
+----+-----------------------------+---------+
|  1 | Juan                        | 3000.00 |
|  2 | María                       | 3500.00 |
|  3 | Pedro                       | 3200.00 |
|  4 | Empleado0.4406885899982309  | 5820.00 |
|  5 | Empleado0.6944879076392277  | 1375.00 |
|  6 | Empleado0.22907321176405365 | 6748.00 |
|  7 | Empleado0.10200013136677456 | 4819.00 |
|  8 | Empleado0.8763438666950388  | 3834.00 |
| 12 | TestUser3002705208          | 5343.00 |
| 13 | TestUser3002819821          | 9974.00 |
| 14 | TestUser3002916457          | 7836.00 |
+----+-----------------------------+---------+
```

## Ejercicio 03

__Respuesta__:
```sql
DROP PROCEDURE IF EXISTS nombres_aleatorios_order_rand;
DELIMITER //
CREATE PROCEDURE nombres_aleatorios_order_rand(IN prefix VARCHAR(50), input_rows INT, base_salary INT, max_salary INT)
BEGIN
    DECLARE counter INT DEFAULT 0;
    CREATE TEMPORARY TABLE sub (num INT);
    WHILE counter < input_rows DO
        INSERT INTO sub values (counter);
        SET counter = counter + 1;
    END WHILE;

    INSERT INTO empleados (nombre, salario)
    SELECT CONCAT(prefix, RAND()), FLOOR(RAND() * (max_salary - base_salary + 1)) + base_salary
    FROM sub
    ORDER BY RAND()
    LIMIT input_rows;
END //
DELIMITER ;
```

__Comprobación__:
```sql
select * from empleados;
+----+-----------------------------+---------+
| id | nombre                      | salario |
+----+-----------------------------+---------+
|  1 | Juan                        | 3000.00 |
|  2 | María                       | 3500.00 |
|  3 | Pedro                       | 3200.00 |
|  4 | Empleado0.4406885899982309  | 5820.00 |
|  5 | Empleado0.6944879076392277  | 1375.00 |
|  6 | Empleado0.22907321176405365 | 6748.00 |
|  7 | Empleado0.10200013136677456 | 4819.00 |
|  8 | Empleado0.8763438666950388  | 3834.00 |
| 12 | TestUser3002705208          | 5343.00 |
| 13 | TestUser3002819821          | 9974.00 |
| 14 | TestUser3002916457          | 7836.00 |
| 15 | 080027077231                | 3972.00 |
| 16 | 080027077231                | 2296.00 |
| 17 | 080027077231                | 3564.00 |
| 18 | 080027077231                | 2931.00 |
| 19 | Empleado0.40540353712197724 | 5243.00 |
| 20 | Empleado0.6555866465490187  | 7245.00 |
| 21 | Empleado0.9057697559760601  | 9247.00 |
| 22 | Empleado0.15595286540310166 | 3247.00 |
| 23 | Empleado0.40613597483014313 | 5249.00 |
| 24 | Empleado0.6563190842571847  | 7251.00 |
+----+-----------------------------+---------+

call nombres_aleatorios_order_rand("Orden", 2, 2000, 5000);

+----+-----------------------------+---------+
| id | nombre                      | salario |
+----+-----------------------------+---------+
|  1 | Juan                        | 3000.00 |
|  2 | María                       | 3500.00 |
|  3 | Pedro                       | 3200.00 |
|  4 | Empleado0.4406885899982309  | 5820.00 |
|  5 | Empleado0.6944879076392277  | 1375.00 |
|  6 | Empleado0.22907321176405365 | 6748.00 |
|  7 | Empleado0.10200013136677456 | 4819.00 |
|  8 | Empleado0.8763438666950388  | 3834.00 |
| 12 | TestUser3002705208          | 5343.00 |
| 13 | TestUser3002819821          | 9974.00 |
| 14 | TestUser3002916457          | 7836.00 |
| 15 | 080027077231                | 3972.00 |
| 16 | 080027077231                | 2296.00 |
| 17 | 080027077231                | 3564.00 |
| 18 | 080027077231                | 2931.00 |
| 19 | Empleado0.40540353712197724 | 5243.00 |
| 20 | Empleado0.6555866465490187  | 7245.00 |
| 21 | Empleado0.9057697559760601  | 9247.00 |
| 22 | Empleado0.15595286540310166 | 3247.00 |
| 23 | Empleado0.40613597483014313 | 5249.00 |
| 24 | Empleado0.6563190842571847  | 7251.00 |
| 25 | Orden0.506818432832899      | 2679.00 |
| 26 | Orden0.7839713103919954     | 3673.00 |
+----+-----------------------------+---------+
```

## Ejercicio 04

__Respuesta:__
```sql
DROP PROCEDURE IF EXISTS nombres_aleatorios_subindex;
DELIMITER //
CREATE PROCEDURE nombres_aleatorios_subindex(IN input_rows INT, base_salary INT, max_salary INT)
BEGIN
    DECLARE counter INT DEFAULT 0;

    WHILE counter < input_rows DO
        INSERT INTO empleados (nombre, salario) VALUES (SUBSTRING_INDEX(UUID(), '-', -1), FLOOR(RAND() * (max_salary - base_salary + 1)) + base_salary);

        SET counter = counter + 1;
    END WHILE;
END //
DELIMITER ;
```

__Respuesta:__
```sql
select * from empleados;
+----+-----------------------------+---------+
| id | nombre                      | salario |
+----+-----------------------------+---------+
|  1 | Juan                        | 3000.00 |
|  2 | María                       | 3500.00 |
|  3 | Pedro                       | 3200.00 |
|  4 | Empleado0.4406885899982309  | 5820.00 |
|  5 | Empleado0.6944879076392277  | 1375.00 |
|  6 | Empleado0.22907321176405365 | 6748.00 |
|  7 | Empleado0.10200013136677456 | 4819.00 |
|  8 | Empleado0.8763438666950388  | 3834.00 |
| 12 | TestUser3002705208          | 5343.00 |
| 13 | TestUser3002819821          | 9974.00 |
| 14 | TestUser3002916457          | 7836.00 |
+----+-----------------------------+---------+

call nombres_aleatorios_subindex(4, 2000, 5000);

select * from empleados;
+----+-----------------------------+---------+
| id | nombre                      | salario |
+----+-----------------------------+---------+
|  1 | Juan                        | 3000.00 |
|  2 | María                       | 3500.00 |
|  3 | Pedro                       | 3200.00 |
|  4 | Empleado0.4406885899982309  | 5820.00 |
|  5 | Empleado0.6944879076392277  | 1375.00 |
|  6 | Empleado0.22907321176405365 | 6748.00 |
|  7 | Empleado0.10200013136677456 | 4819.00 |
|  8 | Empleado0.8763438666950388  | 3834.00 |
| 12 | TestUser3002705208          | 5343.00 |
| 13 | TestUser3002819821          | 9974.00 |
| 14 | TestUser3002916457          | 7836.00 |
| 15 | 080027077231                | 3972.00 |
| 16 | 080027077231                | 2296.00 |
| 17 | 080027077231                | 3564.00 |
| 18 | 080027077231                | 2931.00 |
+----+-----------------------------+---------+
```

## Ejercicio 05

__Respuesta:__
```sql
DROP PROCEDURE IF EXISTS nombres_aleatorios_semillas;
DELIMITER //
CREATE PROCEDURE nombres_aleatorios_semillas(IN prefix VARCHAR(50), input_rows INT, base_salary INT, max_salary INT)
BEGIN
    DECLARE counter INT DEFAULT 0;

    WHILE counter < input_rows DO
        INSERT INTO empleados (nombre, salario) VALUES (CONCAT(prefix, RAND(counter + 1)), FLOOR(RAND(counter + 1) * (max_salary - base_salary + 1)) + base_salary);

        SET counter = counter + 1;
    END WHILE;
END //
DELIMITER ;
```

__Comprobación:__
```sql
select * from empleados;
+----+-----------------------------+---------+
| id | nombre                      | salario |
+----+-----------------------------+---------+
|  1 | Juan                        | 3000.00 |
|  2 | María                       | 3500.00 |
|  3 | Pedro                       | 3200.00 |
|  4 | Empleado0.4406885899982309  | 5820.00 |
|  5 | Empleado0.6944879076392277  | 1375.00 |
|  6 | Empleado0.22907321176405365 | 6748.00 |
|  7 | Empleado0.10200013136677456 | 4819.00 |
|  8 | Empleado0.8763438666950388  | 3834.00 |
| 12 | TestUser3002705208          | 5343.00 |
| 13 | TestUser3002819821          | 9974.00 |
| 14 | TestUser3002916457          | 7836.00 |
| 15 | 080027077231                | 3972.00 |
| 16 | 080027077231                | 2296.00 |
| 17 | 080027077231                | 3564.00 |
| 18 | 080027077231                | 2931.00 |
+----+-----------------------------+---------+

call nombres_aleatorios_semillas("Empleado", 6, 2000, 10000);

select * from empleados;
+----+-----------------------------+---------+
| id | nombre                      | salario |
+----+-----------------------------+---------+
|  1 | Juan                        | 3000.00 |
|  2 | María                       | 3500.00 |
|  3 | Pedro                       | 3200.00 |
|  4 | Empleado0.4406885899982309  | 5820.00 |
|  5 | Empleado0.6944879076392277  | 1375.00 |
|  6 | Empleado0.22907321176405365 | 6748.00 |
|  7 | Empleado0.10200013136677456 | 4819.00 |
|  8 | Empleado0.8763438666950388  | 3834.00 |
| 12 | TestUser3002705208          | 5343.00 |
| 13 | TestUser3002819821          | 9974.00 |
| 14 | TestUser3002916457          | 7836.00 |
| 15 | 080027077231                | 3972.00 |
| 16 | 080027077231                | 2296.00 |
| 17 | 080027077231                | 3564.00 |
| 18 | 080027077231                | 2931.00 |
| 19 | Empleado0.40540353712197724 | 5243.00 |
| 20 | Empleado0.6555866465490187  | 7245.00 |
| 21 | Empleado0.9057697559760601  | 9247.00 |
| 22 | Empleado0.15595286540310166 | 3247.00 |
| 23 | Empleado0.40613597483014313 | 5249.00 |
| 24 | Empleado0.6563190842571847  | 7251.00 |
+----+-----------------------------+---------+
```

</div>

# Tarea 6

<div align="justify">

## ¿El salario?

Una de las preguntas más comunes que se hacen las personas cuando empiezan su vida laboral, suele ser qué es el salario base. Y es que es normal que la gente ande un poco confundida ya que, si no tienes conocimientos en este campo, es fácil hacerse un lío con términos como:
- Salario base.
- Base reguladora.
- Salario bruto.
- Salario neto.
- Etc.

Teniendo en cuenta esta información se pide:
- Crea una base datos llamada __salario__.
    
    __Solución:__
    ```sql
    DROP DATABASE IF EXISTS salario;
    CREATE DATABASE salario;
    USE salario;
    ```

- Crea una tabla llamada persona con los siguientes campos:
    - Identificador. (Texto)__(PK)__.
    - Nombre (Texto).
    - Salario_base. (__Escoge el tipo de dato__).
    - Subsidio(__Escoge el tipo de dato__).
    - Salud(__Escoge el tipo de dato__).
    - Pensión(__Escoge el tipo de dato__).
    - Bono(__Escoge el tipo de dato__).
    - Integral(__Escoge el tipo de dato__).

    __Solución__:
    ```sql
    DROP TABLE IF EXISTS persona;
    CREATE TABLE persona (
        id VARCHAR(100) PRIMARY KEY,
        nombre VARCHAR(100),
        salario_base DECIMAL(10, 2),
        subsidio DECIMAL(10, 2),
        salud DECIMAL(10, 2),
        pension DECIMAL(10, 2),
        bono DECIMAL(10, 2),
        integral DECIMAL(10, 2)
    );
    ```

- Creación de un __procedimiento__ de forma aleatoria con las siguientes características:
    - Parámetro de entrada el número de registros (_Mínimo 10, y realiza la prueba varias veces_). 

    __Solución:__
    ```sql
    DROP PROCEDURE IF EXISTS generar_personas;
    DELIMITER //
    CREATE PROCEDURE generar_personas(IN cantidad_registros INT, prefix VARCHAR(30), salario_min INT, salario_max INT)
    BEGIN
        DECLARE counter INT DEFAULT 0;
        DECLARE salario DECIMAL(10, 2);
        DECLARE p_id VARCHAR(100);
        DECLARE p_nombre VARCHAR(100);
        DECLARE p_salario DECIMAL(10, 2);
        DECLARE p_subsidio DECIMAL(10, 2);
        DECLARE p_salud DECIMAL(10, 2);
        DECLARE p_pension DECIMAL(10, 2);
        DECLARE p_bono DECIMAL(10, 2);
        DECLARE p_integral DECIMAL(10, 2);

        WHILE counter < cantidad_registros DO
            SET p_id = REPLACE(CAST(UUID() AS CHAR), '-', '');
            SET p_nombre = CONCAT(prefix, RAND());
            SET p_salario = FLOOR(RAND() * (salario_max - salario_min + 1) + salario_min);
            SET p_subsidio = p_salario * 0.07;
            SET p_salud = p_salario * 0.04;
            SET p_pension = p_salario * 0.04;
            SET p_bono = p_salario * 0.08;
            SET p_integral = p_salario - p_salud - p_pension + p_bono + p_subsidio;
            INSERT INTO persona (id, nombre, salario_base, subsidio, salud, pension, bono, integral) values(
                p_id, p_nombre, p_salario, p_subsidio, p_salud, p_pension, p_bono, p_integral
            );
            SET counter = counter + 1;
        END WHILE;
    END //
    DELIMITER ;
    ```

    __Comprobación:__
    ```sql
    CALL generar_personas(10, 'Persona-', 1200, 4000);
    +----------------------------------+-----------------------------+--------------+----------+--------+---------+--------+----------+
    | id                               | nombre                      | salario_base | subsidio | salud  | pension | bono   | integral |
    +----------------------------------+-----------------------------+--------------+----------+--------+---------+--------+----------+
    | fa83d69b155b11ef830a0800273b8748 | Persona-0.27675192176993185 |      1824.00 |   127.68 |  72.96 |   72.96 | 145.92 |  1951.68 |
    | fa84f712155b11ef830a0800273b8748 | Persona-0.2846200059024803  |      3312.00 |   231.84 | 132.48 |  132.48 | 264.96 |  3543.84 |
    | fa85b36c155b11ef830a0800273b8748 | Persona-0.9170130928205448  |      2103.00 |   147.21 |  84.12 |   84.12 | 168.24 |  2250.21 |
    | fa866844155b11ef830a0800273b8748 | Persona-0.8616689870708333  |      2154.00 |   150.78 |  86.16 |   86.16 | 172.32 |  2304.78 |
    | fa86fea4155b11ef830a0800273b8748 | Persona-0.1185931955637347  |      2798.00 |   195.86 | 111.92 |  111.92 | 223.84 |  2993.86 |
    | fa879804155b11ef830a0800273b8748 | Persona-0.4982501086762642  |      3381.00 |   236.67 | 135.24 |  135.24 | 270.48 |  3617.67 |
    | fa883e7d155b11ef830a0800273b8748 | Persona-0.3994135813782118  |      3050.00 |   213.50 | 122.00 |  122.00 | 244.00 |  3263.50 |
    | fa88b13f155b11ef830a0800273b8748 | Persona-0.10460734470245181 |      2716.00 |   190.12 | 108.64 |  108.64 | 217.28 |  2906.12 |
    | fa89202e155b11ef830a0800273b8748 | Persona-0.39281759354548307 |      2152.00 |   150.64 |  86.08 |   86.08 | 172.16 |  2302.64 |
    | fa897271155b11ef830a0800273b8748 | Persona-0.5220684516449166  |      2852.00 |   199.64 | 114.08 |  114.08 | 228.16 |  3051.64 |
    +----------------------------------+-----------------------------+--------------+----------+--------+---------+--------+----------+
    ```

- Cree una función para cada punto teniendo en cuenta que:
    - Función __subsidio_transporte__: El subsidio de transporte equivale al __7%__ al salario básico. _Actualiza el valor en la tabla_.
    - Función __salud__: La salud que corresponde al __4%__ al salario básico.  _Actualiza el valor en la tabla_.
    - Función __pension__: La pensión que corresponde al __4%__ al salario básico.  _Actualiza el valor en la tabla_.
    - Función __bono__: Un bono que corresponde al __8%__ al salario básico. _Actualiza el valor en la tabla_. 
    - Función __integral__: El salario integral es la ___suma del salario básico - salud - pension + bono + sub de transporte___. _Actualiza el valor en la tabla_.
    - ___Crea cada uno de las funciones anteriores para una persona en específico___.
    - El parámetro de entrada debe de ser un identificar de la persona.

## Soluciones

__Función para extraer porcentaje de un valor (Se utiliza en todas las funciones)__
```sql
DELIMITER //
DROP FUNCTION IF EXISTS extraer_porcentaje;
CREATE FUNCTION extraer_porcentaje(valor DECIMAL(10, 2), porcentaje INT) RETURNS DECIMAL(10, 2) DETERMINISTIC
BEGIN
    DECLARE result DECIMAL(10, 2);
    SET result = valor * (porcentaje / 100);
    RETURN result;
END //
DELIMITER ;
```

### Función subsidio_transporte()

```sql
DELIMITER //
DROP FUNCTION IF EXISTS subsidio_transporte;
CREATE FUNCTION subsidio_transporte(id_persona VARCHAR(100), porcentaje INT) RETURNS DECIMAL(10, 2) DETERMINISTIC
BEGIN
    DECLARE subsidio_actual DECIMAL(10, 2);
    DECLARE subsidio_nuevo DECIMAL(10, 2);

    SELECT subsidio INTO subsidio_actual FROM persona WHERE id = id_persona;
    SET subsidio_nuevo = subsidio_actual + extraer_porcentaje(subsidio_actual, porcentaje);
    UPDATE persona SET subsidio = subsidio_nuevo WHERE id = id_persona;
    RETURN subsidio_nuevo;
END //
DELIMITER ;
```

__Comprobación__:
```sql
-- Antes de aplicar la función
select subsidio from persona where id = 'fa83d69b155b11ef830a0800273b8748';
+----------+
| subsidio |
+----------+
|   127.68 |
+----------+

-- Llamada de la función
select subsidio_transporte('fa83d69b155b11ef830a0800273b8748', 7);
+------------------------------------------------------------+
| subsidio_transporte('fa83d69b155b11ef830a0800273b8748', 7) |
+------------------------------------------------------------+
|                                                     136.62 |
+------------------------------------------------------------+

-- Después de aplicar la función
select subsidio from persona where id = 'fa83d69b155b11ef830a0800273b8748';
+----------+
| subsidio |
+----------+
|   136.62 |
+----------+
```

### Función salud()
```sql
DELIMITER //
DROP FUNCTION IF EXISTS salud;
CREATE FUNCTION salud(id_persona VARCHAR(100), porcentaje INT) RETURNS DECIMAL(10, 2) DETERMINISTIC
BEGIN
    DECLARE salud_actual DECIMAL(10, 2);
    DECLARE salud_nuevo DECIMAL(10, 2);

    SELECT salud INTO salud_actual FROM persona WHERE id = id_persona;
    SET salud_nuevo = salud_actual + extraer_porcentaje(salud_actual, porcentaje);
    UPDATE persona SET salud = salud_nuevo WHERE id = id_persona;
    RETURN salud_nuevo;
END //
DELIMITER ;
```

__Comprobación__:
```sql
-- Antes de aplicar la función
select salud from persona where id = 'fa83d69b155b11ef830a0800273b8748';
+-------+
| salud |
+-------+
| 72.96 |
+-------+

-- Llamada de la función
select salud('fa83d69b155b11ef830a0800273b8748', 4);
+----------------------------------------------+
| salud('fa83d69b155b11ef830a0800273b8748', 4) |
+----------------------------------------------+
|                                        75.88 |
+----------------------------------------------+

-- Después de aplicar la función
select subsidio from persona where id = 'fa83d69b155b11ef830a0800273b8748';
+-------+
| salud |
+-------+
| 75.88 |
+-------+
```

### Función pension()
```sql
DELIMITER //
DROP FUNCTION IF EXISTS pension;
CREATE FUNCTION pension(id_persona VARCHAR(100), porcentaje INT) RETURNS DECIMAL(10, 2) DETERMINISTIC
BEGIN
    DECLARE pension_actual DECIMAL(10, 2);
    DECLARE pension_nuevo DECIMAL(10, 2);

    SELECT pension INTO pension_actual FROM persona WHERE id = id_persona;
    SET pension_nuevo = pension_actual + extraer_porcentaje(pension_actual, porcentaje);
    UPDATE persona SET pension = pension_nuevo WHERE id = id_persona;
    RETURN pension_nuevo;
END //
DELIMITER ;
```

__Comprobación__:
```sql
-- Antes de aplicar la función
select pension from persona where id = 'fa83d69b155b11ef830a0800273b8748';
+---------+
| pension |
+---------+
|   72.96 |
+---------+

-- Llamada de la función
select pension('fa83d69b155b11ef830a0800273b8748', 4);
+------------------------------------------------+
| pension('fa83d69b155b11ef830a0800273b8748', 4) |
+------------------------------------------------+
|                                          75.88 |
+------------------------------------------------+

-- Después de aplicar la función
select pension from persona where id = 'fa83d69b155b11ef830a0800273b8748';
+---------+
| pension |
+---------+
|   75.88 |
+---------+
```

### Función bono()
```sql
DELIMITER //
DROP FUNCTION IF EXISTS bono;
CREATE FUNCTION bono(id_persona VARCHAR(100), porcentaje INT) RETURNS DECIMAL(10, 2) DETERMINISTIC
BEGIN
    DECLARE bono_actual DECIMAL(10, 2);
    DECLARE bono_nuevo DECIMAL(10, 2);

    SELECT bono INTO bono_actual FROM persona WHERE id = id_persona;
    SET bono_nuevo = bono_actual + extraer_porcentaje(bono_actual, porcentaje);
    UPDATE persona SET bono = bono_nuevo WHERE id = id_persona;
    RETURN bono_nuevo;
END //
DELIMITER ;
```

__Comprobación__:
```sql
-- Antes de aplicar la función
select bono from persona where id = 'fa83d69b155b11ef830a0800273b8748';
+--------+
| bono   |
+--------+
| 145.92 |
+--------+

-- Llamada de la función
select bono('fa83d69b155b11ef830a0800273b8748', 8);
+---------------------------------------------+
| bono('fa83d69b155b11ef830a0800273b8748', 8) |
+---------------------------------------------+
|                                      157.59 |
+---------------------------------------------+

-- Después de aplicar la función
select bono from persona where id = 'fa83d69b155b11ef830a0800273b8748';
+--------+
| bono   |
+--------+
| 157.59 |
+--------+
```

### Función integral()
```sql
DELIMITER //
DROP FUNCTION IF EXISTS integral;
CREATE FUNCTION integral(id_persona VARCHAR(100)) RETURNS DECIMAL(10, 2) DETERMINISTIC
BEGIN
    DECLARE p_salario DECIMAL(10, 2);
    DECLARE p_subsidio DECIMAL(10, 2);
    DECLARE p_salud DECIMAL(10, 2);
    DECLARE p_pension DECIMAL(10, 2);
    DECLARE p_bono DECIMAL(10, 2);
    DECLARE integral_nuevo DECIMAL(10, 2);

    SELECT salario_base, subsidio, salud, pension, bono INTO p_salario, p_subsidio, p_salud, p_pension, p_bono FROM persona WHERE id = id_persona;
    SET integral_nuevo = p_salario - p_salud - p_pension + p_subsidio + p_bono;
    UPDATE persona SET integral = integral_nuevo WHERE id = id_persona;
    RETURN integral_nuevo;
END //
DELIMITER ;
```

__Comprobación__:
```sql
-- Antes de aplicar la función
select integral from persona where id = 'fa83d69b155b11ef830a0800273b8748';
+----------+
| integral |
+----------+
|  1951.68 |
+----------+

-- Llamada de la función
select integral('fa83d69b155b11ef830a0800273b8748');
+----------------------------------------------+
| integral('fa83d69b155b11ef830a0800273b8748') |
+----------------------------------------------+
|                                      1966.45 |
+----------------------------------------------+

/* Después de aplicar la función:
El cambio se debe a que es la misma persona a la que se le ha aplicado las funciones anteriores y,
al aumentar los valores de los otros campos, se debía actualizar este campo de "integral". */
select integral from persona where id = 'fa83d69b155b11ef830a0800273b8748';
+----------+
| integral |
+----------+
|  1966.45 |
+----------+
```
</div>

# Tarea 7
<div align="justify">

## Trabajo con la BBDD Alumnos

Crea una base de datos llamada test que contenga una tabla llamada alumnos con las siguientes columnas:

- Tabla alumnos:
  - id (entero sin signo)
  - nombre (cadena de caracteres)
  - apellido1 (cadena de caracteres)
  - apellido2 (cadena de caracteres)
  - nota (número real)

__Solución:__
```sql
-- Creación de la base de datos
DROP DATABASE IF EXISTS test;
CREATE DATABASE test;
USE test;

-- Creación de la tabla "alumno"
DROP TABLE IF EXISTS alumno;
CREATE TABLE alumno (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100),
    apellido1 VARCHAR(50),
    apellido2 VARCHAR(50),
    nota FLOAT
);
```
  
Crea los siguientes __triggers__:
- Trigger1:_trigger_check_nota_before_insert_.
  - Se ejecuta sobre la tabla alumnos.
  - Se ejecuta antes de una operación de inserción.
  - Si el nuevo valor de la nota que se quiere insertar es negativo, se guarda como 0.
  - Si el nuevo valor de la nota que se quiere insertar es mayor que 10, se guarda como 10.´

__Solución:__
```sql
DROP TRIGGER IF EXISTS check_nota_before_insert;
DELIMITER $$
CREATE TRIGGER check_nota_before_insert
BEFORE INSERT ON alumno
FOR EACH ROW
BEGIN
    IF NEW.nota < 0 THEN
        SET NEW.nota = 0;
    ELSEIF NEW.nota > 10 THEN
        SET NEW.nota = 10;
    END IF;
END;$$
DELIMITER ;
```

__Comprobación:__
```sql
INSERT INTO alumno (nombre, apellido1, apellido2, nota) values ('Juan', 'Pepito', 'Perez', -4);
INSERT INTO alumno (nombre, apellido1, apellido2, nota) values ('Maria', 'Antonella', 'Perez', 20);

SELECT * FROM alumno;
+----+--------+-----------+-----------+------+
| id | nombre | apellido1 | apellido2 | nota |
+----+--------+-----------+-----------+------+
|  1 | Juan   | Pepito    | Perez     |    0 |
|  2 | Maria  | Antonella | Perez     |   10 |
+----+--------+-----------+-----------+------+
```

- __Trigger2__ : _trigger_check_nota_before_update_.
  - Se ejecuta sobre la tabla alumnos.
  - Se ejecuta antes de una operación de actualización.
  - Si el nuevo valor de la nota que se quiere actualizar es negativo, se guarda como 0.
  - Si el nuevo valor de la nota que se quiere actualizar es mayor que 10, se guarda como 10.

__Solución:__
```sql
DROP TRIGGER IF EXISTS check_nota_before_update;
DELIMITER $$
CREATE TRIGGER check_nota_before_update
BEFORE UPDATE ON alumno
FOR EACH ROW
BEGIN
    IF NEW.nota < 0 THEN
        SET NEW.nota = 0;
    ELSEIF NEW.nota > 10 THEN
        SET NEW.nota = 10;
    END IF;
END;$$
DELIMITER ;
```

__Comprobación:__
```sql
UPDATE alumno SET nota = 13 WHERE id = 1;
UPDATE alumno SET nota = -2 WHERE id = 2;

SELECT * FROM alumno;
+----+--------+-----------+-----------+------+
| id | nombre | apellido1 | apellido2 | nota |
+----+--------+-----------+-----------+------+
|  1 | Juan   | Pepito    | Perez     |   10 |
|  2 | Maria  | Antonella | Perez     |    0 |
+----+--------+-----------+-----------+------+
```

Una vez creados los triggers escriba varias sentencias de inserción y actualización sobre la tabla alumnos y verifica que los triggers se están ejecutando correctamente.

Crea el siguiente procedimiento:
- __Procedimiento1__:
  - Crea un procedimiento que permita realizar la inserción de un número de alumnos, con una nota mímina y máxima. Estos valores pueden oscilar entre 3, y 10.
  - Crea un procedimiento que permita realizar la inserción de un número de alumnos, con una nota mímina y máxima. Estos valores pueden oscilar entre -10, y 12.
Realiza los procedimientos y verifica el comportamiento llamando a este con los parámetros adecuados.

__Solución:__
```sql
DROP PROCEDURE IF EXISTS generar_alumnos;
DELIMITER //
CREATE PROCEDURE generar_alumnos(IN cantidad INT, prefix VARCHAR(100), nota_minima INT, nota_maxima INT)
BEGIN
    DECLARE counter INT DEFAULT 0;
    DECLARE p_nombre VARCHAR(100);
    DECLARE p_nota FLOAT;
    WHILE counter < cantidad DO
        SET p_nombre = CONCAT(prefix, (RAND(counter) * 1000) + 1);
        SET p_nota = ROUND(RAND(counter) * (nota_maxima - nota_minima + 1) + nota_minima);
        INSERT INTO alumno (nombre, apellido1, apellido2, nota) VALUES (
            p_nombre, p_nombre, p_nombre, p_nota
        );
        SET counter = counter + 1;
    END WHILE;
END //
DELIMITER ;
```

__Comprobación:__
```sql
CALL generar_alumnos(5, "alumno", 3, 10);
+----+--------------------------+--------------------------+--------------------------+------+
| id | nombre                   | apellido1                | apellido2                | nota |
+----+--------------------------+--------------------------+--------------------------+------+
|  8 | alumno156.22042769493575 | alumno156.22042769493575 | alumno156.22042769493575 |    4 |
|  9 | alumno406.40353712197725 | alumno406.40353712197725 | alumno406.40353712197725 |    6 |
| 10 | alumno656.5866465490186  | alumno656.5866465490186  | alumno656.5866465490186  |    8 |
| 11 | alumno906.7697559760601  | alumno906.7697559760601  | alumno906.7697559760601  |   10 |
| 12 | alumno156.95286540310167 | alumno156.95286540310167 | alumno156.95286540310167 |    4 |
+----+--------------------------+--------------------------+--------------------------+------+

CALL generar_alumnos(5, "mal_alumno", -10, 12);
+----+------------------------------+------------------------------+------------------------------+------+
| id | nombre                       | apellido1                    | apellido2                    | nota |
+----+------------------------------+------------------------------+------------------------------+------+
| 13 | mal_alumno156.22042769493575 | mal_alumno156.22042769493575 | mal_alumno156.22042769493575 |    0 |
| 14 | mal_alumno406.40353712197725 | mal_alumno406.40353712197725 | mal_alumno406.40353712197725 |    0 |
| 15 | mal_alumno656.5866465490186  | mal_alumno656.5866465490186  | mal_alumno656.5866465490186  |    5 |
| 16 | mal_alumno906.7697559760601  | mal_alumno906.7697559760601  | mal_alumno906.7697559760601  |   10 |
| 17 | mal_alumno156.95286540310167 | mal_alumno156.95286540310167 | mal_alumno156.95286540310167 |    0 |
+----+------------------------------+------------------------------+------------------------------+------+
```

</div>

# Tarea8
## Trabajo con la BBDD Alumnos

Crea una base de datos llamada test que contenga una tabla llamada alumnos con las siguientes columnas:

- Tabla alumnos:

  - id (entero sin signo)
  - nombre (cadena de caracteres)
  - apellido1 (cadena de caracteres)
  - apellido2 (cadena de caracteres)
  - email (cadena de caracteres)
 
__Creación de bases de datos y la tabla 'Alumnos'__:
```sql
-- Creación de la base de datos
DROP DATABASE IF EXISTS test;
CREATE DATABASE test;
USE test;

-- Creación de la tabla "Alumnos"
CREATE TABLE alumnos (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(100),
  apellido1 VARCHAR(50),
  apellido2 VARCHAR(50),
  email VARCHAR(100)
);
```

1. Escribe una función llamado __crear_email__ que dados los parámetros de entrada: __nombre, apellido1, apellido2 y dominio__, cree una dirección de email y la devuelva como salida.

- Función: crear_email
  - Entrada:
      - nombre (cadena de caracteres)
      - apellido1 (cadena de caracteres)
      - apellido2 (cadena de caracteres)
      - dominio (cadena de caracteres)
  - Salida:
      - email (cadena de caracteres)

El email devuelve una dirección de correo electrónico con el siguiente formato:

- El primer carácter del parámetro nombre.
- Los tres primeros caracteres del parámetro apellido1.
- Los tres primeros caracteres del parámetro apellido2.
- El carácter @.
- El dominio pasado como parámetro.
- La dirección de email debe estar en minúsculas.

- También crea una función llamada __eliminar_acentos__ que reciba una cadena de caracteres y devuelva la misma cadena sin acentos. La función tendrá que reemplazar todas las vocales que tengan acento por la misma vocal pero sin acento. Por ejemplo, si la función recibe como parámetro de entrada la cadena María la función debe devolver la cadena Maria.

- Función: eliminar_acentos
  - Entrada:
    - cadena (cadena de caracteres)
  - Salida:
    - (cadena de caracteres)

> ___La función crear_email deberá hacer uso de la función eliminar_acentos___.

__Función "eliminar_acentos"__:
```sql
DROP FUNCTION IF EXISTS eliminar_acentos;
DELIMITER //
CREATE FUNCTION eliminar_acentos(cadena VARCHAR(100)) RETURNS VARCHAR(100) DETERMINISTIC
BEGIN
  DECLARE nueva_cadena VARCHAR(100);
  SET nueva_cadena = REPLACE(cadena, 'á', 'a');
  SET nueva_cadena = REPLACE(nueva_cadena, 'é', 'e');
  SET nueva_cadena = REPLACE(nueva_cadena, 'í', 'i');
  SET nueva_cadena = REPLACE(nueva_cadena, 'ó', 'o');
  SET nueva_cadena = REPLACE(nueva_cadena, 'ú', 'u');
  RETURN nueva_cadena;
END //
DELIMITER ;
```

__Función "crear_email":__
```sql
DROP FUNCTION IF EXISTS crear_email;
DELIMITER //
CREATE FUNCTION crear_email(nombre VARCHAR(100), apellido1 VARCHAR(50), apellido2 VARCHAR(50), dominio VARCHAR(50)) RETURNS VARCHAR(100) DETERMINISTIC
BEGIN
  DECLARE caracter_nombre VARCHAR(100);
  DECLARE caracteres_apellido1 VARCHAR(100);
  DECLARE caracteres_apellido2 VARCHAR(100);

  SET caracter_nombre = SUBSTRING(nombre, 1, 1);
  SET caracteres_apellido1 = SUBSTRING(apellido1, 1, 3);
  SET caracteres_apellido2 = SUBSTRING(apellido2, 1, 3);
  RETURN eliminar_acentos(LCASE(CONCAT(caracter_nombre, caracteres_apellido1, caracteres_apellido2, '@', dominio)));
END //
DELIMITER ;
```

Una vez creada la tabla escriba un trigger con las siguientes características:

- Trigger:
  - __trigger_crear_email_before_insert__. Se ejecuta sobre la tabla alumnos. Se ejecuta antes de una operación de inserción.Si el nuevo valor del email que se quiere insertar es NULL, entonces se le creará automáticamente una dirección de email y se insertará en la tabla. Si el nuevo valor del email no es NULL se guardará en la tabla el valor del email.
>__Nota__: Para crear la nueva dirección de email se deberá hacer uso del procedimiento crear_email.

__Trigger "crear_email_before_insert"__:
```sql
DROP TRIGGER IF EXISTS crear_email_before_insert;
DELIMITER //
CREATE TRIGGER crear_email_before_insert
BEFORE INSERT ON alumnos
FOR EACH ROW
BEGIN
  IF NEW.email IS NULL THEN 
    SET NEW.email = crear_email(NEW.nombre, NEW.apellido1, NEW.apellido2, CONCAT(SUBSTRING_INDEX(UUID(), '-', 1), '.com'));
  END IF;
END;//
DELIMITER ;
```

- Verificación:
  - Realiza inserciones en la tabla y verifica el correcto funcionamiento de las __funciones y triggers__.
  - Realiza un procedimiento que realice la inserción de un número de elementos que se pasa como parámetro. Incluye la máxima aleatoridad posible.
 
__Procedimiento "generar_alumnos"__:
```sql
DROP PROCEDURE IF EXISTS generar_alumnos;
DELIMITER //
CREATE PROCEDURE generar_alumnos(IN cantidad INT, prefix VARCHAR(50))
BEGIN
  DECLARE counter INT DEFAULT 0;
  DECLARE p_nombre VARCHAR(100);
  DECLARE p_apellido1 VARCHAR(100);
  DECLARE p_apellido2 VARCHAR(100);

  WHILE counter < cantidad DO
    SET p_nombre = CONCAT(prefix, SUBSTRING_INDEX(UUID(), '-', 1));
    SET p_apellido1 = CONCAT(prefix, SUBSTRING_INDEX(UUID(), '-', 1));
    SET p_apellido2 = CONCAT(prefix, SUBSTRING_INDEX(UUID(), '-', 1));
    INSERT INTO alumnos (nombre, apellido1, apellido2) VALUES (
      p_nombre, p_apellido1, p_apellido2
    );
    SET counter = counter + 1;
  END WHILE;
SELECT * FROM alumnos;
END //
DELIMITER ;
```

__Comprobación del funcionamiento:__
```sql
CALL generar_alumnos(10, 'Alumno');
-- Los emails se generan automáticamente, de forma aleatoria, gracias al trigger.
+----+----------------+----------------+----------------+----------------------+
| id | nombre         | apellido1      | apellido2      | email                |
+----+----------------+----------------+----------------+----------------------+
| 41 | Alumnoe7a34a96 | Alumnoe7a34b1a | Alumnoe7a34b55 | aalualu@e7a3540a.com |
| 42 | Alumnoe7a49874 | Alumnoe7a49ae6 | Alumnoe7a49b33 | aalualu@e7a4a17d.com |
| 43 | Alumnoe7a5f562 | Alumnoe7a5f5ca | Alumnoe7a5f5ef | aalualu@e7a5fa44.com |
| 44 | Alumnoe7a6daa3 | Alumnoe7a6db01 | Alumnoe7a6db28 | aalualu@e7a6df30.com |
| 45 | Alumnoe7a7f598 | Alumnoe7a7f5f6 | Alumnoe7a7f617 | aalualu@e7a7f9db.com |
| 46 | Alumnoe7a8ee66 | Alumnoe7a8eeab | Alumnoe7a8eecb | aalualu@e7a8f130.com |
| 47 | Alumnoe7a96e66 | Alumnoe7a96ea8 | Alumnoe7a96ec7 | aalualu@e7a97143.com |
| 48 | Alumnoe7aa17d5 | Alumnoe7aa1816 | Alumnoe7aa1832 | aalualu@e7aa1a81.com |
| 49 | Alumnoe7aaa203 | Alumnoe7aaa238 | Alumnoe7aaa24e | aalualu@e7aaa498.com |
| 50 | Alumnoe7ab2d51 | Alumnoe7ab2d99 | Alumnoe7ab2db8 | aalualu@e7ab309f.com |
+----+----------------+----------------+----------------+----------------------+
```

</div>

# Tarea 9

## Trabajo con la BBDD Alumnos

Modifica el ejercicio anterior y añade un nuevo trigger que las siguientes características:
Trigger: __trigger_guardar_email_after_update__:
  - Se ejecuta sobre la tabla alumnos.
  - Se ejecuta después de una operación de actualización.
  - Cada vez que un alumno modifique su dirección de email se deberá insertar un nuevo registro en una tabla llamada log_cambios_email.
  - La tabla log_cambios_email contiene los siguientes campos:
    - id: clave primaria (entero autonumérico)
    - id_alumno: id del alumno (entero)
    - fecha_hora: marca de tiempo con el instante del cambio (fecha y hora)
    - old_email: valor anterior del email (cadena de caracteres)
    - new_email: nuevo valor con el que se ha actualizado

#### Tabla requerida "log_cambios_email"
```sql
DROP TABLE IF EXISTS log_cambios_email;
CREATE TABLE log_cambios_email (
  id INT PRIMARY KEY AUTO_INCREMENT,
  id_alumno INT REFERENCES alumnos(id),
  fecha_hora DATETIME,
  old_email VARCHAR(100),
  new_email VARCHAR(100)
);
```

#### Trigger "guardar_email_after_update"
```sql
DROP TRIGGER IF EXISTS guardar_email_after_update;
DELIMITER //
CREATE TRIGGER guardar_email_after_update
AFTER UPDATE ON alumnos FOR EACH ROW
BEGIN
  IF OLD.email <> NEW.email THEN
    INSERT INTO log_cambios_email (id_alumno, fecha_hora, old_email, new_email) VALUES (
      NEW.id, NOW(), OLD.email, NEW.email
    );
  END IF;
END;//
DELIMITER ;
```

#### Comprobación
```sql
UPDATE alumnos SET email = 'paquita_la_del_barrio@gmail.com' WHERE id = 45;

SELECT * FROM alumnos WHERE id = 45;
+----+----------------+----------------+----------------+---------------------------------+
| id | nombre         | apellido1      | apellido2      | email                           |
+----+----------------+----------------+----------------+---------------------------------+
| 45 | Alumnoe7a7f598 | Alumnoe7a7f5f6 | Alumnoe7a7f617 | paquita_la_del_barrio@gmail.com |
+----+----------------+----------------+----------------+---------------------------------+

SELECT * FROM log_cambios_email;
+----+-----------+---------------------+----------------------+---------------------------------+
| id | id_alumno | fecha_hora          | old_email            | new_email                       |
+----+-----------+---------------------+----------------------+---------------------------------+
|  1 |        45 | 2024-05-22 19:17:36 | aalualu@e7a7f9db.com | paquita_la_del_barrio@gmail.com |
+----+-----------+---------------------+----------------------+---------------------------------+
```

Añade un nuevo trigger que tenga las siguientes características:
- Trigger: __trigger_guardar_alumnos_eliminados__:
  - Se ejecuta sobre la tabla alumnos.
  - Se ejecuta después de una operación de borrado.
  - Cada vez que se elimine un alumno de la tabla alumnos se deberá insertar un nuevo registro en una tabla llamada log_alumnos_eliminados.
  - La tabla log_alumnos_eliminados contiene los siguientes campos:
    - id: clave primaria (entero autonumérico)
    - id_alumno: id del alumno (entero)
    - fecha_hora: marca de tiempo con el instante del cambio (fecha y hora)
    - nombre: nombre del alumno eliminado (cadena de caracteres)
    - apellido1: primer apellido del alumno eliminado (cadena de caracteres)
    - apellido2: segundo apellido del alumno eliminado (cadena de caracteres)
    - email: email del alumno eliminado (cadena de caracteres).

#### Tabla requerida "log_alumnos_eliminados"
```sql
DROP TABLE IF EXISTS log_alumnos_eliminados;
CREATE TABLE log_alumnos_eliminados (
  id INT PRIMARY KEY AUTO_INCREMENT,
  id_alumno INT REFERENCES alumnos(id),
  fecha_hora DATETIME,
  nombre VARCHAR(100),
  apellido1 VARCHAR(100),
  apellido2 VARCHAR(100),
  email VARCHAR(100)
);
```

#### Trigger "guardar_alumnos_eliminados"
```sql
DROP TRIGGER IF EXISTS guardar_alumnos_eliminados;
DELIMITER //
CREATE TRIGGER guardar_alumnos_eliminados
AFTER DELETE ON alumnos FOR EACH ROW
BEGIN
  INSERT INTO log_alumnos_eliminados(id_alumno, fecha_hora, nombre, apellido1, apellido2, email) VALUES (
    OLD.id, NOW(), OLD.nombre, OLD.apellido1, OLD.apellido2, OLD.email
  );
END;//
DELIMITER ;
```

#### Comprobación
```sql
DELETE FROM alumnos WHERE id = 46;

SELECT * FROM alumnos WHERE id BETWEEN 44 AND 48;
+----+----------------+----------------+----------------+---------------------------------+
| id | nombre         | apellido1      | apellido2      | email                           |
+----+----------------+----------------+----------------+---------------------------------+
| 44 | Alumnoe7a6daa3 | Alumnoe7a6db01 | Alumnoe7a6db28 | aalualu@e7a6df30.com            |
| 45 | Alumnoe7a7f598 | Alumnoe7a7f5f6 | Alumnoe7a7f617 | paquita_la_del_barrio@gmail.com |
| 47 | Alumnoe7a96e66 | Alumnoe7a96ea8 | Alumnoe7a96ec7 | aalualu@e7a97143.com            |
| 48 | Alumnoe7aa17d5 | Alumnoe7aa1816 | Alumnoe7aa1832 | aalualu@e7aa1a81.com            |
+----+----------------+----------------+----------------+---------------------------------+

SELECT * FROM log_alumnos_eliminados;
+----+-----------+---------------------+----------------+----------------+----------------+----------------------+
| id | id_alumno | fecha_hora          | nombre         | apellido1      | apellido2      | email                |
+----+-----------+---------------------+----------------+----------------+----------------+----------------------+
|  1 |        46 | 2024-05-22 19:19:55 | Alumnoe7a8ee66 | Alumnoe7a8eeab | Alumnoe7a8eecb | aalualu@e7a8f130.com |
+----+-----------+---------------------+----------------+----------------+----------------+----------------------+
```

</div>

# Ejemplos de trigger

```sql
DELIMITER //
DROP TRIGGER IF EXISTS my_insert_trigger//
CREATE TRIGGER my_insert_trigger
AFTER INSERT ON `account`
FOR EACH ROW
BEGIN
    CALL procedure_to_run_processes_due_to_changes_on_table(NEW.acct_num);
END//
DELIMITER ;
```

```sql
DELIMITER //
DROP TRIGGER IF EXISTS my_update_trigger//
CREATE TRIGGER my_update_trigger
AFTER UPDATE ON `account`
FOR EACH ROW
BEGIN
    CALL procedure_to_run_processes_due_to_changes_on_table(NEW.acct_num);
END//
DELIMITER ;
```

```sql
DELIMITER //
DROP TRIGGER IF EXISTS my_delete_trigger//
CREATE TRIGGER my_delete_trigger
AFTER DELETE ON `account`
FOR EACH ROW
BEGIN
    CALL procedure_to_run_processes_due_to_changes_on_table(OLD.acct_num);
END//
DELIMITER ;
```

# RANDOM
<div align="justify">

# Funciones en MySQL para generar Aleatoriedad

Generar datos aleatorios en MySQL puede ser útil para pruebas, demostraciones o simulaciones.

- __RAND()__. Esta función devuelve un valor de punto flotante aleatorio entre 0 y 1. Se puede usar para generar valores aleatorios en general.

```sql
SELECT RAND(); -- Genera un número aleatorio entre 0 y 1
-- Ejemplo de salida: 0.712345
```

- __RAND(N)__. Similar a RAND(), pero toma una semilla N como argumento para generar números pseudo-aleatorios.

```sql
SELECT RAND(1); -- Genera un número aleatorio basado en la semilla 1
-- Ejemplo de salida: 0.659217
```

- __RAND() con ORDER BY__. Si necesitas una lista de filas en un orden aleatorio, puedes usar RAND() junto con ORDER BY.

```sql
SELECT * FROM tabla ORDER BY RAND();
-- SELECT * FROM tabla ORDER BY RAND(); -- Ejemplo de salida: Filas de la tabla en un orden aleatorio
```

- __FLOOR(RAND() * (max - min + 1)) + min__. Esta fórmula te permite generar un número entero aleatorio dentro de un rango específico.

```sql
SELECT FLOOR(RAND() * (100 - 1 + 1)) + 1; -- Genera un número aleatorio entre 1 y 100
-- Ejemplo de salida: 42
```

- __UUID()__. Esta función genera un identificador único universal (UUID) en formato hexadecimal.

```sql
SELECT UUID(); -- Genera un UUID único
-- Ejemplo de salida: 123e4567-e89b-12d3-a456-426614174000
```

- __CONCAT() con RAND()__. Puedes usar CONCAT() junto con RAND() para generar datos aleatorios combinando valores.

```sql
SELECT CONCAT('Usuario', RAND()); -- Genera un nombre de usuario aleatorio
-- Ejemplo de salida: Usuario0.123456
```

- __SUBSTRING_INDEX(UUID(), '-', -1)__. Esta expresión toma el UUID generado por UUID() y extrae la última parte, que es la parte aleatoria. Esto puede ser útil si necesitas solo la parte aleatoria de un UUID.

```sql
SELECT SUBSTRING_INDEX(UUID(), '-', -1); -- Extrae la parte aleatoria de un UUID
-- Ejemplo de salida: 426614174000
```

</div>

# EXAMEN
# Ejercicios de Base de Datos

## Ejercicio 1: Creación de Base de Datos y Tablas
1. Crea una base de datos llamada `donacion`.

```sql
sudo mysql -u root -p
CREATE DATABASE donacion;
use donacion
```


2. Crea una tabla llamada `persona` con los siguientes campos:
   - Identificador Auto Incremental (`id`) - Integer, PK.
   - Identificador (`identificador`) - Texto.
   - Peso (`peso`) - Entero.
   - Admitido (`admitido`) - Texto (`Si`/`No`).
   - Sexo (`sexo`) - Texto (`H`/`M`).
  
  
```sql
CREATE TABLE persona(
    id int primary key auto_increment,
    identificador VARCHAR(30) NOT NULL,
    peso int NOT NULL,
    admitido ENUM('Si', 'No') NOT NULL,
    sexo ENUM('H', 'M') NOT NULL,
    fecha DATE NOT NULL
);
```

## Ejercicio 2: Procedimientos Almacenados
1. Crea un procedimiento llamado `insertar_datos` que inserte datos aleatorios en la tabla `persona`. El procedimiento debe recibir como parámetro de entrada el número de registros que se desea insertar.

```sql
DROP PROCEDURE IF EXISTS insertar_datos;
DELIMITER //
CREATE PROCEDURE insertar_datos(in iterations INT)
BEGIN
    DECLARE counter INT DEFAULT 0;
    DECLARE p_id VARCHAR(30);
    DECLARE p_peso int;
    DECLARE p_admitido ENUM('Si', 'No');
    DECLARE p_sexo ENUM('H', 'M');
    DECLARE aux INT;
    WHILE counter < iterations DO
    SET p_id = SUBSTRING(UUID(), 1, 8);
    SET p_peso = FLOOR(RAND()* 130 - 40 + 1) + 40;
    SET aux = FLOOR(RAND() * 2);
    SET p_admitido = IF(aux = 0, 'Si', 'No');
    SET aux = floor(RAND() * 2);
    SET p_sexo = IF(aux = 0, 'H', 'M');

    INSERT INTO persona(identificador, peso, admitido, sexo, fecha) VALUES (p_id, p_peso, p_admitido, p_sexo, CURDATE());
    SET counter = counter + 1;
    end while;
END //
DELIMITER ;

CALL insertar_datos(20);

mysql> select * from persona;
+----+---------------+------+----------+------+------------+
| id | identificador | peso | admitido | sexo | fecha      |
+----+---------------+------+----------+------+------------+
|  1 | 39adc615      |   85 | Si       | H    | 2024-05-29 |
|  2 | 39b85fdf      |   36 | Si       | M    | 2024-05-29 |
|  3 | 39b904e9      |   44 | Si       | H    | 2024-05-29 |
|  4 | 39b97a62      |   51 | No       | H    | 2024-05-29 |
|  5 | 39b9cc47      |  123 | Si       | H    | 2024-05-29 |
|  6 | 39bc8c8e      |   95 | Si       | H    | 2024-05-29 |
|  7 | 39bdc5a6      |   11 | No       | M    | 2024-05-29 |
|  8 | 39be3da4      |  118 | Si       | M    | 2024-05-29 |
|  9 | 39beaa07      |  106 | No       | M    | 2024-05-29 |
| 10 | 39bef447      |   44 | Si       | M    | 2024-05-29 |
| 11 | 39c01767      |   97 | Si       | M    | 2024-05-29 |
| 12 | 39c2e76f      |   49 | Si       | H    | 2024-05-29 |
| 13 | 39cc6507      |   92 | No       | M    | 2024-05-29 |
| 14 | 39ccb2e7      |   40 | No       | M    | 2024-05-29 |
| 15 | 39cd08ae      |   64 | No       | M    | 2024-05-29 |
| 16 | 39cee628      |   92 | No       | M    | 2024-05-29 |
| 17 | 39d0dd9d      |    4 | Si       | M    | 2024-05-29 |
| 18 | 39d13e1a      |   27 | Si       | M    | 2024-05-29 |
| 19 | 39d18b8e      |   69 | No       | M    | 2024-05-29 |
| 20 | 39d1eba7      |   74 | Si       | H    | 2024-05-29 |
+----+---------------+------+----------+------+------------+
20 rows in set (0.01 sec)

```

2. Crea un procedimiento llamado `actualizar_fecha` que permita actualizar la fecha de última donación, teniendo como parámetro de entrada el identificador de la persona y una fecha.

```sql
DROP PROCEDURE IF EXISTS actualizar_fecha;
DELIMITER //
CREATE PROCEDURE actualizar_fecha(in input_id INT, in input_fecha DATE)
BEGIN
    UPDATE persona set fecha = input_fecha where id = input_id;
END //
DELIMITER ;


call actualizar_fecha(2, '2024-03-17');

mysql> select * from persona where id = 2;
+----+---------------+------+----------+------+------------+
| id | identificador | peso | admitido | sexo | fecha      |
+----+---------------+------+----------+------+------------+
|  2 | 39b85fdf      |   36 | Si       | M    | 2024-03-17 |
+----+---------------+------+----------+------+------------+
1 row in set (0.00 sec)

```

3. Crea un procedimiento llamado `CalcularTotalDonaciones` que calcule la cantidad total de donaciones realizadas por cada persona y la almacene en una tabla llamada `total_donaciones`. La tabla `total_donaciones` debe tener dos columnas: `id_persona` (texto) y `cantidad_total` (integer).

```sql
DROP PROCEDURE IF EXISTS CalcularTotalDonaciones;
DELIMITER //
CREATE PROCEDURE CalcularTotalDonaciones()
BEGIN
    DROP TABLE IF EXISTS total_donaciones;
    CREATE TABLE total_donaciones(
        id_persona INT,
        cantidad_total INT
    );
    INSERT INTO total_donaciones (id_persona, cantidad_total)
    SELECT id, count(*) from persona group by id;
END //
DELIMITER ;


call CalcularTotalDonaciones();

mysql> select * from total_donaciones;
+------------+----------------+
| id_persona | cantidad_total |
+------------+----------------+
|          1 |              1 |
|          2 |              1 |
|          3 |              1 |
|          4 |              1 |
|          5 |              1 |
|          6 |              1 |
|          7 |              1 |
|          8 |              1 |
|          9 |              1 |
|         10 |              1 |
|         11 |              1 |
|         12 |              1 |
|         13 |              1 |
|         14 |              1 |
|         15 |              1 |
|         16 |              1 |
|         17 |              1 |
|         18 |              1 |
|         19 |              1 |
|         20 |              1 |
+------------+----------------+
20 rows in set (0.00 sec)
```

4. Crea un procedimiento llamado `eliminar_persona` que permita eliminar una persona de la tabla `total_donaciones`.

```sql
DROP PROCEDURE IF EXISTS eliminar_persona;
DELIMITER //
CREATE PROCEDURE eliminar_persona(in input_id INT)
BEGIN
    DELETE FROM total_donaciones where id_persona = input_id;
END //
DELIMITER ;


call eliminar_persona(17);


mysql> select * from total_donaciones;
+------------+----------------+
| id_persona | cantidad_total |
+------------+----------------+
|          1 |              1 |
|          2 |              1 |
|          3 |              1 |
|          4 |              1 |
|          5 |              1 |
|          6 |              1 |
|          7 |              1 |
|          8 |              1 |
|          9 |              1 |
|         10 |              1 |
|         11 |              1 |
|         12 |              1 |
|         13 |              1 |
|         14 |              1 |
|         15 |              1 |
|         16 |              1 |
|         18 |              1 |
|         19 |              1 |
|         20 |              1 |
+------------+----------------+
19 rows in set (0.00 sec)
```

## Ejercicio 3: Funciones Almacenadas
1. Crea una función llamada `posible_donador` que determine si una persona almacenada en la tabla `persona` puede realizar una donación. La función debe recibir como parámetro de entrada el identificador de esta persona y una fecha de donación. Si la persona cumple con los requisitos, actualiza la fecha de última donación y retorna `TRUE`; de lo contrario, retorna `FALSE`.

```sql

DROP FUNCTION IF EXISTS posible_donador;
DELIMITER //
CREATE FUNCTION posible_donador(input_id int, input_fecha DATE)
RETURNS BOOLEAN
DETERMINISTIC
BEGIN
    DECLARE p_sexo ENUM('H','M');
    DECLARE p_admitido ENUM('Si','No');
    DECLARE dias INT;
    DECLARE p_fecha DATE;

    SELECT admitido, sexo, fecha INTO p_admitido, p_sexo, p_fecha from persona where id = input_id;

    IF p_admitido = 'No' THEN
        RETURN FALSE;
    END IF;

    SET dias = DATEDIFF(input_fecha, p_fecha);
    IF (p_sexo = 'H' AND dias < 90) OR (p_sexo = 'M' AND dias < 120) THEN
        RETURN FALSE;
    END IF;

    UPDATE persona SET fecha = input_fecha where id = input_id;
    RETURN TRUE;

END//
DELIMITER ;

--0 representa False, no puede donar
mysql> SELECT posible_donador(5, '2024-06-04');
+----------------------------------+
| posible_donador(5, '2024-06-04') |
+----------------------------------+
|                                0 |
+----------------------------------+
1 row in set (0.35 sec)

--1 representa True, que puede donar
mysql> select posible_donador(6, '2024-12-24');
+----------------------------------+
| posible_donador(6, '2024-12-24') |
+----------------------------------+
|                                1 |
+----------------------------------+
1 row in set (1.81 sec)
```

2. Crea una función llamada `maximo_donador` que determine qué persona es la que más donaciones ha realizado.


```sql

DROP FUNCTION IF EXISTS maximo_donador;
DELIMITER //
CREATE FUNCTION maximo_donador()
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE p_id INT;
    SELECT id_persona INTO p_id FROM total_donaciones ORDER BY cantidad_total DESC LIMIT 1;
    RETURN p_id;
END //
DELIMITER ;


SELECT maximo_donador();


mysql> SELECT maximo_donador();
+------------------+
| maximo_donador() |
+------------------+
|                1 |
+------------------+
1 row in set (0.01 sec)
```


## Ejercicio 4: Triggers
1. Crea un trigger que actualice la tabla `total_donaciones` cada vez que se inserte un nuevo registro en la tabla `persona`.

```sql
DROP TRIGGER IF EXISTS actualizar_total_donaciones;
DELIMITER //
CREATE TRIGGER actualizar_total_donaciones
AFTER INSERT ON persona
FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM total_donaciones WHERE id_persona = NEW.id) THEN
        UPDATE total_donaciones
        SET cantidad_total = cantidad_total + 1
        WHERE id_persona = NEW.id;
    ELSE
        INSERT INTO total_donaciones (id_persona, cantidad_total)
        VALUES (NEW.id, 1);
    END IF;
END //
DELIMITER ;

mysql> call insertar_datos(2);
Query OK, 1 row affected (0.02 sec)

mysql> select * from total_donaciones;
+------------+----------------+
| id_persona | cantidad_total |
+------------+----------------+
|          1 |              1 |
|          2 |              1 |
|          3 |              1 |
|          4 |              1 |
|          5 |              1 |
|          6 |              1 |
|          7 |              1 |
|          8 |              1 |
|          9 |              1 |
|         10 |              1 |
|         11 |              1 |
|         12 |              1 |
|         13 |              1 |
|         14 |              1 |
|         15 |              1 |
|         16 |              1 |
|         18 |              1 |
|         19 |              1 |
|         20 |              1 |
|         24 |              1 |
|         25 |              1 |
+------------+----------------+
21 rows in set (0.00 sec)
```

2. Crea un trigger que elimine todos los registros en la tabla `persona` cuando se elimine un registro de la tabla `total_donaciones`.

```sql
DROP TRIGGER IF EXISTS actualiza_donaciones;
DELIMITER //
CREATE TRIGGER actualiza_donaciones
AFTER DELETE ON total_donaciones
FOR EACH ROW
BEGIN
    DELETE FROM persona WHERE id = OLD.id_persona;
END //
DELIMITER ;



mysql> delete from total_donaciones where id_persona = 8;
Query OK, 1 row affected (0.01 sec)

mysql> select * from persona;
--se ha borrado también de la tabla persona los registros con id 8
+----+---------------+------+----------+------+------------+
| id | identificador | peso | admitido | sexo | fecha      |
+----+---------------+------+----------+------+------------+
|  1 | 39adc615      |   85 | Si       | H    | 2024-05-29 |
|  2 | 39b85fdf      |   36 | Si       | M    | 2024-03-17 |
|  3 | 39b904e9      |   44 | Si       | H    | 2024-05-29 |
|  4 | 39b97a62      |   51 | No       | H    | 2024-05-29 |
|  5 | 39b9cc47      |  123 | Si       | H    | 2024-05-29 |
|  6 | 39bc8c8e      |   95 | Si       | H    | 2024-12-24 |
|  7 | 39bdc5a6      |   11 | No       | M    | 2024-05-29 |
|  9 | 39beaa07      |  106 | No       | M    | 2024-05-29 |
| 10 | 39bef447      |   44 | Si       | M    | 2024-05-29 |
| 11 | 39c01767      |   97 | Si       | M    | 2024-05-29 |
| 12 | 39c2e76f      |   49 | Si       | H    | 2024-05-29 |
| 13 | 39cc6507      |   92 | No       | M    | 2024-05-29 |
| 14 | 39ccb2e7      |   40 | No       | M    | 2024-05-29 |
| 15 | 39cd08ae      |   64 | No       | M    | 2024-05-29 |
| 16 | 39cee628      |   92 | No       | M    | 2024-05-29 |
| 17 | 39d0dd9d      |    4 | Si       | M    | 2024-05-29 |
| 18 | 39d13e1a      |   27 | Si       | M    | 2024-05-29 |
| 19 | 39d18b8e      |   69 | No       | M    | 2024-05-29 |
| 20 | 39d1eba7      |   74 | Si       | H    | 2024-05-29 |
| 21 | d1226a90      |   38 | Si       | H    | 2024-05-29 |
| 22 | d1232201      |  113 | No       | H    | 2024-05-29 |
| 23 | d1237a4b      |   46 | No       | M    | 2024-05-29 |
| 24 | 41bc1691      |   95 | No       | H    | 2024-05-29 |
| 25 | 41becad0      |  107 | Si       | H    | 2024-05-29 |
+----+---------------+------+----------+------+------------+
24 rows in set (0.00 sec)

```

## Consideraciones adicionales
- Asegúrate de probar cada uno de los procedimientos, funciones y triggers con ejemplos prácticos.

- Verifica que los datos se inserten, actualicen y eliminen correctamente en las tablas correspondientes.
- Mantén la integridad de los datos en todas las operaciones.

# ALTER TABLE

Adding a Column: To add a new column to an existing table, you can use the following syntax:
SQL

ALTER TABLE table_name ADD column_name datatype;
 More info on FAQ.For instance, if you want to add an “Email” column to the “Customers” table:
SQL

ALTER TABLE Customers ADD Email varchar(255);

Dropping a Column: To delete a column from a table, use the following syntax (note that some database systems don’t allow deleting a column):
SQL

ALTER TABLE table_name DROP COLUMN column_name;
For example, to remove the “Email” column from the “Customers” table:
SQL

ALTER TABLE Customers DROP COLUMN Email;

Modifying a Column’s Data Type: To change the data type of an existing column, use the following syntax:
SQL

ALTER TABLE table_name MODIFY COLUMN column_name datatype;
Suppose you want to change the data type of the “DateOfBirth” column in the “Persons” table:
SQL

ALTER TABLE Persons MODIFY COLUMN DateOfBirth date;
The “Persons” table will now include the new “DateOfBirth” column with a date data type