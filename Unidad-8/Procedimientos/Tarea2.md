# Se pide realizar los procedimientos y funciones:

## Realice los siguientes procedimientos y funciones sobre la base de datos jardineria.

### Función calcular_precio_total_pedido
### Nota:Dado un código de pedido la función debe calcular la suma total del pedido. Tenga en cuenta que un pedido puede contener varios productos diferentes y varias cantidades de cada producto.
### Parámetros de entrada: codigo_pedido (INT)
### Parámetros de salida: El precio total del pedido (FLOAT)

```sql
DELIMITER //
DROP FUNCTION IF EXISTS calcular_precio_total_pedido;
CREATE FUNCTION calcular_precio_total_pedido(codigo_pedidos INT) 
RETURNS FLOAT DETERMINISTIC
BEGIN
    DECLARE total_pedido FLOAT;

    SELECT sum((precio_venta*dp.cantidad))
    INTO total_pedido
    FROM pedido AS pe
    JOIN detalle_pedido AS dp ON dp.codigo_pedido = pe.codigo_pedido
    JOIN producto as po on po.codigo_producto=dp.codigo_producto
    WHERE pe.codigo_pedido = codigo_pedidos;

    RETURN total_pedido;
END;
//
DELIMITER ;

SELECT calcular_precio_total_pedido(1);
+---------------------------------+
| calcular_precio_total_pedido(1) |
+---------------------------------+
|                            1687 |
+---------------------------------+
```


### Función calcular_suma_pedidos_cliente
### Nota:Dado un código de cliente la función debe calcular la suma total de todos los pedidos realizados por el cliente. Deberá hacer uso de la función calcular_precio_total_pedido que ha desarrollado en el apartado anterior.

Parámetros de entrada: codigo_cliente (INT)
Parámetros de salida: La suma total de todos los pedidos del cliente (FLOAT)
Función calcular_suma_pagos_cliente

Nota:Dado un código de cliente la función debe calcular la suma total de los pagos realizados por ese cliente.

Parámetros de entrada: codigo_cliente (INT)
Parámetros de salida: La suma total de todos los pagos del cliente (FLOAT)
Procedimiento calcular_pagos_pendientes

Nota:Deberá calcular los pagos pendientes de todos los clientes. Para saber si un cliente tiene algún pago pendiente deberemos calcular cuál es la cantidad de todos los pedidos y los pagos que ha realizado. Si la cantidad de los pedidos es mayor que la de los pagos entonces ese cliente tiene pagos pendientes.