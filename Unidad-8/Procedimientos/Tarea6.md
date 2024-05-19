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
    Nombre varchar(20),
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
