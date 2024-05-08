### Escribe un procedimiento almacenado que aumente los salarios de todos los empleados en un 5%, pero excluya a aquellos cuyo salario sea superior a 3200. El procedimiento debe tener parámetros de entrada.

```sql
  DELIMITER //
  CREATE PROCEDURE aumentar_salarios()
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
          UPDATE empleados SET salario = salario * (1 + 5 / 100) WHERE id = emp_id and  salario<3200 ;
      END LOOP;
      CLOSE cur;
  END //
  DELIMITER ;


call aumentar_salarios();
mysql> select * from empleados;
+----+--------+---------+
| id | nombre | salario |
+----+--------+---------+
|  1 | Juan   | 3150.00 |
|  2 | María  | 3500.00 |
|  3 | Pedro  | 3200.00 |
+----+--------+---------+

```

### Escribe un procedimiento almacenado que calcule el salario anual de cada empleado (asumiendo que trabajan todo el año) y lo imprima.

```sql
  DELIMITER //
  CREATE PROCEDURE salarios_anuales()
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
          select id,nombre,salario*12 from empleados WHERE id = emp_id;
      END LOOP;
      CLOSE cur;
  END //
  DELIMITER ;

  call salarios_anuales();
+----+--------+------------+
| id | nombre | salario*12 |
+----+--------+------------+
|  1 | Juan   |   37800.00 |
+----+--------+------------+
1 row in set (0,00 sec)

+----+--------+------------+
| id | nombre | salario*12 |
+----+--------+------------+
|  2 | María  |   42000.00 |
+----+--------+------------+
1 row in set (0,00 sec)

+----+--------+------------+
| id | nombre | salario*12 |
+----+--------+------------+
|  3 | Pedro  |   38400.00 |
+----+--------+------------+
1 row in set (0,00 sec)

```




### Escribe un procedimiento almacenado que cuente y muestre el número de empleados en cada rango de salario (por ejemplo, menos de 3000, entre 3000 y 5000, más de 5000). El procedimiento debe tener parámetros de entrada.

```sql
DELIMITER //
  CREATE PROCEDURE aumentar_rango(IN minimo INT,IN maximo INT)
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
          UPDATE empleados SET salario = salario * (1 + 5 / 100) WHERE id = emp_id and  salario<3200 ;
      END LOOP;
      CLOSE cur;
  END //
  DELIMITER ;
```

