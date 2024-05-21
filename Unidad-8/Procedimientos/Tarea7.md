<div align="justify">

# Trabajo con la BBDD Alumnos

Crea una base de datos llamada test que contenga una tabla llamada alumnos con las siguientes columnas:

- Tabla alumnos:
  - id (entero sin signo)
  - nombre (cadena de caracteres)
  - apellido1 (cadena de caracteres)
  - apellido2 (cadena de caracteres)
  - nota (número real)

```sql
CREATE TABLE alumnos(
    id INT,
    nombre VARCHAR(50),
    apellido1 VARCHAR(50),
    apellido2 VARCHAR(50),
    nota Real
) ;

```

Crea los siguientes __triggers__:
- Trigger1:_trigger_check_nota_before_insert_.
  - Se ejecuta sobre la tabla alumnos.
  - Se ejecuta antes de una operación de inserción.
  - Si el nuevo valor de la nota que se quiere insertar es negativo, se guarda como 0.
  - Si el nuevo valor de la nota que se quiere insertar es mayor que 10, se guarda como 10.

```sql
  DELIMITER $$
  CREATE Trigger insertar_nota
  BEFORE INSERT ON alumnos
  for each row
  BEGIN
    IF NEW.nota<0 THEN 
        SET NEW.nota=0;
    ELSEIF NEW.nota>10 THEN 
    SET NEW.nota=10;
    END IF;
  END; $$
  DELIMITER ;

```
- __Trigger2__ : _trigger_check_nota_before_update_.
  - Se ejecuta sobre la tabla alumnos.
  - Se ejecuta antes de una operación de actualización.
  - Si el nuevo valor de la nota que se quiere actualizar es negativo, se guarda como 0.
  - Si el nuevo valor de la nota que se quiere actualizar es mayor que 10, se guarda como 10.

```sql
  DELIMITER $$
  CREATE Trigger actualizar_nota
  BEFORE UPDATE ON alumnos
  for each row
  BEGIN
    IF NEW.nota<0
        THEN SET NEW.nota=0
    ELSEIF NEW.nota>10
        THEN SET NEW.nota=10
    END IF;
  END; $$
  DELIMITER ;

```

Una vez creados los triggers escriba varias sentencias de inserción y actualización sobre la tabla alumnos y verifica que los triggers se están ejecutando correctamente.

Crea el siguiente procedimiento:
- __Procedimiento1__:
  - Crea un procedimiento que permita realizar la inserción de un número de alumnos, con una nota mímina y máxima. Estos valores pueden oscilar entre 3, y 10.
  
```sql
 DROP PROCEDURE IF EXISTS Random_insert;
DELIMITER //

CREATE PROCEDURE Random_insert(IN max_alum INT, max_nota INT, min_nota INT)
BEGIN
    DECLARE counter INT DEFAULT 0;
    DECLARE random_id INT;
    DECLARE random_nombre VARCHAR(25);
    DECLARE random_apellido1 VARCHAR(25);
    DECLARE random_apellido2 VARCHAR(25);
    DECLARE p_nota FLOAT;

    WHILE counter < max_alum DO
        SET random_id = FLOOR(RAND() * (1000 - 1 + 1)) + 1;
        SET random_nombre = CONCAT('nombre', FLOOR(RAND() * (1000 - 1 + 1)) + 1);
        SET random_apellido1 = CONCAT('apellido1', FLOOR(RAND() * (1000 - 1 + 1)) + 1);
        SET random_apellido2 = CONCAT('apellido2', FLOOR(RAND() * (1000 - 1 + 1)) + 1);
        SET p_nota = FLOOR(RAND() * (max_nota - min_nota + 1)) + min_nota;

        INSERT INTO alumnos (id, nombre, apellido1, apellido2, nota)
        VALUES (random_id, random_nombre, random_apellido1, random_apellido2, p_nota);

        SET counter = counter + 1;
    END WHILE;
END //

DELIMITER ;

Call Random_insert(50,30,2);

select * from alumnos;
+------+-----------+--------------+--------------+------+
| id   | nombre    | apellido1    | apellido2    | nota |
+------+-----------+--------------+--------------+------+
|   48 | nombre566 | apellido1689 | apellido2747 |   10 |
|   92 | nombre458 | apellido115  | apellido2702 |   10 |
|  202 | nombre624 | apellido1516 | apellido2706 |   10 |
|  791 | nombre11  | apellido1679 | apellido2361 |   10 |
|  759 | nombre491 | apellido1176 | apellido2404 |   10 |
|  261 | nombre819 | apellido1313 | apellido2106 |   10 |
|  633 | nombre393 | apellido166  | apellido2151 |   10 |
|  336 | nombre3   | apellido18   | apellido230  |    5 |
|  541 | nombre326 | apellido17   | apellido257  |    9 |
|  150 | nombre958 | apellido1336 | apellido2809 |    2 |
|  745 | nombre623 | apellido1879 | apellido2526 |   10 |
|  378 | nombre917 | apellido1448 | apellido2492 |    5 |
|   88 | nombre100 | apellido1238 | apellido2887 |   10 |
|  941 | nombre541 | apellido1885 | apellido2799 |   10 |
|  299 | nombre477 | apellido1488 | apellido210  |   10 |
|  887 | nombre685 | apellido1765 | apellido2769 |   10 |
|  437 | nombre539 | apellido1382 | apellido2292 |   10 |
|  696 | nombre536 | apellido1590 | apellido2344 |   10 |
|  712 | nombre712 | apellido1425 | apellido2987 |   10 |
|  341 | nombre724 | apellido1596 | apellido2807 |    9 |
|  813 | nombre322 | apellido1170 | apellido2885 |   10 |
|  908 | nombre804 | apellido1292 | apellido250  |   10 |
|  721 | nombre481 | apellido1241 | apellido2764 |    4 |
|  177 | nombre602 | apellido1479 | apellido2589 |   10 |
|  762 | nombre293 | apellido1180 | apellido220  |   10 |
|  738 | nombre10  | apellido1837 | apellido2151 |    9 |
|  781 | nombre163 | apellido1469 | apellido2859 |   10 |
|  854 | nombre612 | apellido1498 | apellido2654 |   10 |
|  919 | nombre263 | apellido1560 | apellido211  |   10 |
|  837 | nombre62  | apellido1796 | apellido2797 |   10 |
|  576 | nombre101 | apellido1776 | apellido2577 |   10 |
|   43 | nombre552 | apellido1631 | apellido2495 |   10 |
|  437 | nombre431 | apellido1841 | apellido2914 |    3 |
|  493 | nombre325 | apellido1142 | apellido2736 |    9 |
|   62 | nombre547 | apellido1548 | apellido299  |   10 |
|  949 | nombre197 | apellido1137 | apellido295  |    3 |
|   35 | nombre980 | apellido1796 | apellido237  |   10 |
|  882 | nombre13  | apellido1418 | apellido250  |   10 |
|  830 | nombre160 | apellido1311 | apellido276  |   10 |
|  993 | nombre633 | apellido1186 | apellido229  |   10 |
|  847 | nombre472 | apellido1819 | apellido2677 |   10 |
|  620 | nombre309 | apellido1685 | apellido2498 |   10 |
|  671 | nombre56  | apellido1267 | apellido2164 |    2 |
|  605 | nombre964 | apellido16   | apellido2139 |   10 |
|  963 | nombre785 | apellido136  | apellido2823 |    2 |
|  567 | nombre813 | apellido1365 | apellido2383 |   10 |
|  959 | nombre329 | apellido1767 | apellido2848 |   10 |
|  147 | nombre918 | apellido1151 | apellido21   |   10 |
|  758 | nombre130 | apellido1376 | apellido2489 |   10 |
|  114 | nombre620 | apellido1759 | apellido2934 |   10 |
+------+-----------+--------------+--------------+------+

```

  - Crea un procedimiento que permita realizar la inserción de un número de alumnos, con una nota mímina y máxima. Estos valores pueden oscilar entre -10, y 12.

Realiza los procedimientos y verifica el comportamiento llamando a este con los parámetros adecuados.