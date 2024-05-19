Una de las preguntas más comunes que se hacen las personas cuando empiezan su vida laboral, suele ser qué es el salario base. Y es que es normal que la gente ande un poco confundida ya que, si no tienes conocimientos en este campo, es fácil hacerse un lío con términos como:

Salario base.
Base reguladora.
Salario bruto.
Salario neto.
Etc.
Teniendo en cuenta esta información se pide:

### Crea una base datos llamada salario.

```sql
Create database salario;
```

### Crear BBDD en MySql.
### Crea una tabla llamada persona con los siguientes campos:
Identificador. (Texto)(PK).
Nombre (Texto).
Salario_base. (Escoge el tipo de dato).
Subsidio(Escoge el tipo de dato).
Salud(Escoge el tipo de dato).
Pensión(Escoge el tipo de dato).
Bono(Escoge el tipo de dato).
Integral(Escoge el tipo de dato).

```sql
CREATE TABLE persona (
    Identificador varchar(100) PRIMARY KEY,
    Nombre varchar(255),
    salario_base DECIMAL(10, 2),
    subsidio DECIMAL(10, 2),
    salud DECIMAL(10, 2),
    pension DECIMAL(10, 2),
    bono DECIMAL(10, 2),
    integral DECIMAL(10, 2)
);
```



### Creación de un procedimiento de forma aleatoria con las siguientes características:

Parámetro de entrada el número de registros (Mínimo 10, y realiza la prueba varias veces).
Cree una función para cada punto teniendo en cuenta que:


Función subsidio_transporte: El subsidio de transporte equivale al 7% al salario básico. Actualiza el valor en la tabla.

Función salud: La salud que corresponde al 4% al salario básico. Actualiza el valor en la tabla.

Función pension: La pensión que corresponde al 4% al salario básico. Actualiza el valor en la tabla.

Función bono: Un bono que corresponde al 8% al salario básico. Actualiza el valor en la tabla.

Función integral: El salario integral es la suma del salario básico - salud - pension + bono + sub de transporte. Actualiza el valor en la tabla.

Crea cada uno de las funciones anteriores para una persona en específico.

El parámetro de entrada debe de ser un identificar de la persona.

```sql
DROP PROCEDURE IF EXISTS generar_registor;
DELIMITER //
CREATE PROCEDURE generar_registor(IN cantidad_registros INT, prefijo VARCHAR(50), salario_min INT, salario_max INT)
BEGIN
    DECLARE counter INT DEFAULT 0;
    DECLARE salario DECIMAL(10, 2);
    DECLARE g_id VARCHAR(100);
    DECLARE g_nombre VARCHAR(255);
    DECLARE g_salario DECIMAL(10, 2);
    DECLARE g_subsidio DECIMAL(10, 2);
    DECLARE g_salud DECIMAL(10, 2);
    DECLARE g_pension DECIMAL(10, 2);
    DECLARE g_bono DECIMAL(10, 2);
    DECLARE g_integral DECIMAL(10, 2);

    WHILE counter < cantidad_registros DO
        SET g_id = REPLACE(CAST(UUID() AS CHAR), '-', '');
        SET g_nombre = CONCAT(prefix, RAND());
        SET g_salario = FLOOR(RAND() * (salario_max - salario_min + 1) + salario_min);
        SET g_subsidio = g_salario * 0.07;
        SET g_salud = g_salario * 0.04;
        SET g_pension = g_salario * 0.04;
        SET g_bono = g_salario * 0.08;
        SET g_integral = g_salario - g_salud - g_pension + g_bono + g_subsidio;
        INSERT INTO persona (id, nombre, salario_base, subsidio, salud, pension, bono, integral) values(
            g_id, g_nombre, g_salario, g_subsidio, g_salud, g_pension, g_bono, g_integral
        );
        SET counter = counter + 1;
    END WHILE;
END //
DELIMITER ;
```






