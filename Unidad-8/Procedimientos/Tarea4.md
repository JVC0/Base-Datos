


### Escribe un procedimiento almacenado que copie los nombres de todos los empleados cuyo salario sea superior a 3000 en una nueva tabla llamada 'empleados_destino'. Es necesario crear la tabla empleados_destiono.

```sql
DELIMITER //
CREATE PROCEDURE copia(IN valor INT)
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE emp_id INT;
    DECLARE emp_nombre VARCHAR(100);
    DECLARE emp_salario DECIMAL(10, 2);
    DECLARE cur CURSOR FOR SELECT id, nombre, salario FROM empleados Where valor<emp_salario;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
    CREATE TABLE empleados_destiono (
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
          INSERT INTO empleados_destiono (nombre, salario) VALUES (emp_nombre,emp_salario);
      END IF;
    END LOOP;
    CLOSE cur;
END //
DELIMITER ;
```

### Escribe un procedimiento almacenado que seleccione los empleados cuyos nombres contienen la letra 'a' y aumente sus salarios en un 10%.

```sql
  DELIMITER //
  CREATE PROCEDURE nombre_sal(IN porcentaje DECIMAL(5,2))
  BEGIN
      DECLARE done INT DEFAULT FALSE;
      DECLARE emp_id INT;
      DECLARE emp_nombre VARCHAR(100);
      DECLARE emp_salario DECIMAL(10, 2);
      DECLARE cur CURSOR FOR SELECT id, nombre, salario FROM empleados WHERE emp_nombre REGEXP '[aA]';
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

### Escribe un procedimiento almacenado que seleccione empleados cuyos IDs estén en un rango específico, por ejemplo, entre 2 y 3.

```sql
DELIMITER //
  CREATE PROCEDURE salmm(IN minimo INT,IN maximo INT)
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
          SELECT * FROM empleados where id Between minimo and maximo;
      END LOOP;
      CLOSE cur;
  END //
  DELIMITER ;
```
 drop procedure salmm ;


### Escribe un procedimiento almacenado que elimine todos los empleados cuyo salario esté entre 2000 y 2500.

```sql
DELIMITER //
  CREATE PROCEDURE dropmm(IN minimo INT,IN maximo INT)
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
          DELETE FROM empleados where salario Between minimo and maximo;
      END LOOP;
      CLOSE cur;
  END //
  DELIMITER ;

```

### Escribe un procedimiento almacenado que aumente el salario de un empleado específico cuyo nombre se pasa como parámetro en un 20%.

```sql
DELIMITER //
  CREATE PROCEDURE nombre_in(IN emp_nombre VARCHAR(20))
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
          UPDATE empleados SET salario = salario * (1 + 20 / 100) WHERE id = emp_id and emp_nombre=emp_nombre ;
      END LOOP;
      CLOSE cur;
  END //
  DELIMITER ;
```

