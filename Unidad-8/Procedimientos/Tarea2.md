# Se pide realizar los procedimientos y funciones:

## Realice los siguientes procedimientos y funciones sobre la base de datos jardineria.

### Función calcular_precio_total_pedido
### Nota:Dado un código de pedido la función debe calcular la suma total del pedido. Tenga en cuenta que un pedido puede contener varios productos diferentes y varias cantidades de cada producto.
### Parámetros de entrada: codigo_pedido (INT)
### Parámetros de salida: El precio total del pedido (FLOAT)

```sql
DROP FUNCTION IF EXISTS calcular_precio_total_pedido;
DELIMITER //
CREATE FUNCTION calcular_precio_total_pedido(codigo_pedidos INT) 
RETURNS FLOAT DETERMINISTIC
BEGIN
    DECLARE total_pedido FLOAT;

    SELECT sum((precio_unidad*cantidad))
    INTO total_pedido
    FROM detalle_pedido
    WHERE codigo_pedido = codigo_pedido;

    RETURN total_pedido;
END;
//
DELIMITER ;

SELECT calcular_precio_total_pedido(1);
+---------------------------------+
| calcular_precio_total_pedido(1) |
+---------------------------------+
|                          217738 |
+---------------------------------+

```


### Función calcular_suma_pedidos_cliente
### Nota:Dado un código de cliente la función debe calcular la suma total de todos los pedidos realizados por el cliente. Deberá hacer uso de la función calcular_precio_total_pedido que ha desarrollado en el apartado anterior.
### Parámetros de entrada: codigo_cliente (INT)
### Parámetros de salida: La suma total de todos los pedidos del cliente (FLOAT)

```sql
DELIMITER //
DROP FUNCTION IF EXISTS calcular_suma_pedidos_cliente;
CREATE FUNCTION calcular_suma_pedidos_cliente(codigo_clientes INT) 
RETURNS FLOAT DETERMINISTIC
BEGIN
    DECLARE total_cliente FLOAT;
    SELECT count(codigo_cliente)
    INTO total_cliente
    from pedido
    WHERE codigo_cliente=codigo_clientes;

    RETURN total_cliente;
END;
//
DELIMITER ;

SELECT calcular_suma_pedidos_cliente(1);
+----------------------------------+
| calcular_suma_pedidos_cliente(1) |
+----------------------------------+
|                               11 |
+----------------------------------+

```


### Función calcular_suma_pagos_cliente

### Nota:Dado un código de cliente la función debe calcular la suma total de los pagos realizados por ese cliente.
### Parámetros de entrada: codigo_cliente (INT)
### Parámetros de salida: La suma total de todos los pagos del cliente (FLOAT)

```sql

DROP FUNCTION IF EXISTS calcular_suma_pagos_cliente;
DELIMITER //
CREATE FUNCTION calcular_suma_pagos_cliente(codigo_clientes INT) 
RETURNS FLOAT DETERMINISTIC
BEGIN
    DECLARE total_cliente FLOAT;
    SELECT sum(total)
    INTO total_cliente
    from pago
    WHERE codigo_cliente=codigo_clientes;

    RETURN total_cliente;
END;
//
DELIMITER ;

SELECT calcular_suma_pagos_cliente(1);

+--------------------------------+
| calcular_suma_pagos_cliente(1) |
+--------------------------------+
|                           4000 |
+--------------------------------+
     
```

Procedimiento calcular_pagos_pendientes

Nota:Deberá calcular los pagos pendientes de todos los clientes. Para saber si un cliente tiene algún pago pendiente deberemos calcular cuál es la cantidad de todos los pedidos y los pagos que ha realizado. Si la cantidad de los pedidos es mayor que la de los pagos entonces ese cliente tiene pagos pendientes.

```sql
DELIMITER //
CREATE FUNCTION calcular_pagos_pendientes(codigo_clientes INT)
RETURNS VARCHAR(100) DETERMINISTIC
BEGIN
    DECLARE numero_pedidos INT;
    DECLARE total_cliente INT;
    DECLARE mensaje VARCHAR(100);

    SELECT COUNT(codigo_cliente) INTO numero_pedidos
    FROM pedido
    WHERE codigo_cliente = codigo_clientes;

    SELECT COUNT(total) INTO total_cliente
    FROM pago
    WHERE codigo_cliente = codigo_clientes;

    IF total_cliente < numero_pedidos THEN
        SET mensaje = CONCAT('Faltan ', numero_pedidos - total_cliente, ' pagos');
    ELSE
        SET mensaje = 'No faltan pagos';
    END IF;

    RETURN mensaje;
END//
DELIMITER ;
```