# Realiza las siguientes consultas:


#### Mostrar todos los clientes.

```sql
select * from clientes;
+------------+----------------+----------------+
| id_cliente | nombre_cliente | ciudad_cliente |
+------------+----------------+----------------+
|          1 | Juan           | Ciudad A       |
|          2 | María          | Ciudad B       |
|          3 | Pedro          | Ciudad C       |
+------------+----------------+----------------+

```

#### Mostrar todas las órdenes.

```sql
select * from ordenes;
+----------+------------+-------------+
| id_orden | id_cliente | fecha_orden |
+----------+------------+-------------+
|        1 |          1 | 2024-03-01  |
|        2 |          2 | 2024-03-02  |
|        3 |          3 | 2024-03-03  |
+----------+------------+-------------+

```

#### Mostrar todos los productos.

```sql
select * from productos;
+-------------+-----------------+-----------------+
| id_producto | nombre_producto | precio_producto |
+-------------+-----------------+-----------------+
|           1 | Producto A      |           50.00 |
|           2 | Producto B      |           75.00 |
|           3 | Producto C      |          100.00 |
+-------------+-----------------+-----------------+

```

#### Mostrar todos los detalles de las órdenes.

```sql
select * from detalles_ordenes;
+------------+----------+-------------+----------+
| id_detalle | id_orden | id_producto | cantidad |
+------------+----------+-------------+----------+
|          1 |        1 |           1 |        2 |
|          2 |        2 |           2 |        1 |
|          3 |        3 |           3 |        3 |
+------------+----------+-------------+----------+
```

#### Mostrar los primeros 5 clientes ordenados por nombre.

```sql
select * from clientes as c join ordenes as o on c.id_cliente=o.id_cliente order by  c.nombre_cliente LIMIT 5;
+------------+----------------+----------------+----------+------------+-------------+
| id_cliente | nombre_cliente | ciudad_cliente | id_orden | id_cliente | fecha_orden |
+------------+----------------+----------------+----------+------------+-------------+
|          1 | Juan           | Ciudad A       |        1 |          1 | 2024-03-01  |
|          2 | María          | Ciudad B       |        2 |          2 | 2024-03-02  |
|          3 | Pedro          | Ciudad C       |        3 |          3 | 2024-03-03  |
+------------+----------------+----------------+----------+------------+-------------+

```

#### Mostrar los productos con un precio mayor a 50.

```sql
Select * from productos where precio_producto>50;
+-------------+-----------------+-----------------+
| id_producto | nombre_producto | precio_producto |
+-------------+-----------------+-----------------+
|           2 | Producto B      |           75.00 |
|           3 | Producto C      |          100.00 |
+-------------+-----------------+-----------------+

```

#### Mostrar todas las órdenes realizadas por el cliente con ID 1.

```sql
select * from clientes as c join ordenes as o on c.id_cliente=o.id_cliente where c.id_cliente=1;
+------------+----------------+----------------+----------+------------+-------------+
| id_cliente | nombre_cliente | ciudad_cliente | id_orden | id_cliente | fecha_orden |
+------------+----------------+----------------+----------+------------+-------------+
|          1 | Juan           | Ciudad A       |        1 |          1 | 2024-03-01  |
+------------+----------------+----------------+----------+------------+-------------+

```

#### Mostrar los clientes cuyos nombres comienzan con la letra "A".

```sql
Select * from clientes as c join ordenes as o on c.id_cliente=o.id_cliente where c.nombre_cliente regexp '^A';

```

#### Mostrar las órdenes que contienen más de 2 productos.

```sql
select * from detalles_ordenes where cantidad>2;
+------------+----------+-------------+----------+
| id_detalle | id_orden | id_producto | cantidad |
+------------+----------+-------------+----------+
|          3 |        3 |           3 |        3 |
+------------+----------+-------------+----------+

```

#### Mostrar los productos ordenados por precio de forma descendente.

```sql
select * from productos ORDER BY precio_producto;
+-------------+-----------------+-----------------+
| id_producto | nombre_producto | precio_producto |
+-------------+-----------------+-----------------+
|           1 | Producto A      |           50.00 |
|           2 | Producto B      |           75.00 |
|           3 | Producto C      |          100.00 |
+-------------+-----------------+-----------------+

```

#### Seleccionar todos los clientes y sus órdenes, incluso si no tienen órdenes.

```sql
select * from clientes as c 
left join ordenes as o on c.id_cliente=o.id_cliente;
+------------+----------------+----------------+----------+------------+-------------+
| id_cliente | nombre_cliente | ciudad_cliente | id_orden | id_cliente | fecha_orden |
+------------+----------------+----------------+----------+------------+-------------+
|          1 | Juan           | Ciudad A       |        1 |          1 | 2024-03-01  |
|          2 | María          | Ciudad B       |        2 |          2 | 2024-03-02  |
|          3 | Pedro          | Ciudad C       |        3 |          3 | 2024-03-03  |
+------------+----------------+----------------+----------+------------+-------------+

```

#### Seleccionar todas las órdenes junto con los productos correspondientes.

```sql
select * from ordenes as o 
join detalles_ordenes as d on d.id_orden=o.id_orden 
join productos as p on d.id_producto=p.id_producto;
+----------+------------+-------------+------------+----------+-------------+----------+-------------+-----------------+-----------------+
| id_orden | id_cliente | fecha_orden | id_detalle | id_orden | id_producto | cantidad | id_producto | nombre_producto | precio_producto |
+----------+------------+-------------+------------+----------+-------------+----------+-------------+-----------------+-----------------+
|        1 |          1 | 2024-03-01  |          1 |        1 |           1 |        2 |           1 | Producto A      |           50.00 |
|        2 |          2 | 2024-03-02  |          2 |        2 |           2 |        1 |           2 | Producto B      |           75.00 |
|        3 |          3 | 2024-03-03  |          3 |        3 |           3 |        3 |           3 | Producto C      |          100.00 |
+----------+------------+-------------+------------+----------+-------------+----------+-------------+-----------------+-----------------+


```

#### Mostrar el nombre de los clientes que han realizado órdenes de productos que cuestan más de 50.

```sql
Select c.nombre_cliente from ordenes as o 
join detalles_ordenes as d on d.id_orden=o.id_orden 
join productos as p on d.id_producto=p.id_producto 
join clientes as c  on c.id_cliente=o.id_cliente where p.precio_producto>50;
+----------------+
| nombre_cliente |
+----------------+
| María          |
| Pedro          |
+----------------+

```

#### Obtener el nombre de los productos que no se han ordenado aún.

```sql
SELECT p.nombre_producto 
FROM productos AS p 
WHERE p.id_producto NOT IN (
SELECT d.id_producto 
FROM detalles_ordenes AS d);
```

#### Mostrar el nombre del cliente, el producto y la cantidad para todas las órdenes.

```sql
select c.nombre_cliente,p.nombre_producto,d.cantidad from ordenes as o 
join detalles_ordenes as d on d.id_orden=o.id_orden 
join productos as p on d.id_producto=p.id_producto 
join clientes as c  on c.id_cliente=o.id_cliente;
+----------------+-----------------+----------+
| nombre_cliente | nombre_producto | cantidad |
+----------------+-----------------+----------+
| Juan           | Producto A      |        2 |
| María          | Producto B      |        1 |
| Pedro          | Producto C      |        3 |
+----------------+-----------------+----------+
```

#### Obtener el nombre de los productos junto con los nombres de los clientes que han realizado órdenes de esos productos.

```sql
select p.nombre_producto,c.nombre_cliente 
from ordenes as o 
join detalles_ordenes as d on d.id_orden=o.id_orden 
join productos as p on d.id_producto=p.id_producto 
join clientes as c  on c.id_cliente=o.id_cliente;
+-----------------+----------------+
| nombre_producto | nombre_cliente |
+-----------------+----------------+
| Producto A      | Juan           |
| Producto B      | María          |
| Producto C      | Pedro          |
+-----------------+----------------+

```

#### Mostrar todas las órdenes con sus clientes y productos, incluso si no hay órdenes.

```sql
SELECT * 
FROM ordenes AS o 
LEFT JOIN clientes AS c ON c.id_cliente = o.id_cliente
LEFT JOIN detalles_ordenes AS d ON d.id_orden = o.id_orden 
LEFT JOIN productos AS p ON d.id_producto = p.id_producto;
+----------+------------+-------------+------------+----------------+----------------+------------+----------+-------------+----------+-------------+-----------------+-----------------+
| id_orden | id_cliente | fecha_orden | id_cliente | nombre_cliente | ciudad_cliente | id_detalle | id_orden | id_producto | cantidad | id_producto | nombre_producto | precio_producto |
+----------+------------+-------------+------------+----------------+----------------+------------+----------+-------------+----------+-------------+-----------------+-----------------+
|        1 |          1 | 2024-03-01  |          1 | Juan           | Ciudad A       |          1 |        1 |           1 |        2 |           1 | Producto A      |           50.00 |
|        2 |          2 | 2024-03-02  |          2 | María          | Ciudad B       |          2 |        2 |           2 |        1 |           2 | Producto B      |           75.00 |
|        3 |          3 | 2024-03-03  |          3 | Pedro          | Ciudad C       |          3 |        3 |           3 |        3 |           3 | Producto C      |          100.00 |
+----------+------------+-------------+------------+----------------+----------------+------------+----------+-------------+----------+-------------+-----------------+-----------------+

```

#### Obtener el nombre de los clientes junto con el número total de órdenes que han realizado.

```sql
SELECT c.nombre_cliente, Count(o.id_orden)
FROM ordenes AS o 
JOIN clientes AS c ON c.id_cliente = o.id_cliente GROUP BY c.nombre_cliente;
+----------------+-------------------+
| nombre_cliente | Count(o.id_orden) |
+----------------+-------------------+
| Juan           |                 1 |
| María          |                 1 |
| Pedro          |                 1 |
+----------------+-------------------+

```

#### Mostrar todas las órdenes junto con el nombre del cliente y el nombre del producto.

```sql
select o.*,c.nombre_cliente,p.nombre_producto 
FROM ordenes AS o 
JOIN clientes AS c ON c.id_cliente = o.id_cliente
JOIN detalles_ordenes AS d ON d.id_orden = o.id_orden 
JOIN productos AS p ON d.id_producto = p.id_producto;
+----------+------------+-------------+----------------+-----------------+
| id_orden | id_cliente | fecha_orden | nombre_cliente | nombre_producto |
+----------+------------+-------------+----------------+-----------------+
|        1 |          1 | 2024-03-01  | Juan           | Producto A      |
|        2 |          2 | 2024-03-02  | María          | Producto B      |
|        3 |          3 | 2024-03-03  | Pedro          | Producto C      |
+----------+------------+-------------+----------------+-----------------+

```

#### Mostrar todas las órdenes con sus productos y clientes, incluso si no hay información de cliente.

```sql
select * FROM ordenes AS o 
RiGHT JOIN clientes AS c ON c.id_cliente = o.id_cliente
JOIN detalles_ordenes AS d ON d.id_orden = o.id_orden 
JOIN productos AS p ON d.id_producto = p.id_producto;
+----------+------------+-------------+------------+----------------+----------------+------------+----------+-------------+----------+-------------+-----------------+-----------------+
| id_orden | id_cliente | fecha_orden | id_cliente | nombre_cliente | ciudad_cliente | id_detalle | id_orden | id_producto | cantidad | id_producto | nombre_producto | precio_producto |
+----------+------------+-------------+------------+----------------+----------------+------------+----------+-------------+----------+-------------+-----------------+-----------------+
|        1 |          1 | 2024-03-01  |          1 | Juan           | Ciudad A       |          1 |        1 |           1 |        2 |           1 | Producto A      |           50.00 |
|        2 |          2 | 2024-03-02  |          2 | María          | Ciudad B       |          2 |        2 |           2 |        1 |           2 | Producto B      |           75.00 |
|        3 |          3 | 2024-03-03  |          3 | Pedro          | Ciudad C       |          3 |        3 |           3 |        3 |           3 | Producto C      |          100.00 |
+----------+------------+-------------+------------+----------------+----------------+------------+----------+-------------+----------+-------------+-----------------+-----------------+

```

#### Obtener el nombre de los productos junto con los nombres de los clientes que han realizado órdenes de esos productos, incluyendo los productos que no han sido ordenados.

```sql
select p.nombre_producto, c.nombre_cliente FROM ordenes AS o
JOIN detalles_ordenes AS d ON d.id_orden = o.id_orden  
Right JOIN productos AS p ON d.id_producto = p.id_producto
JOIN clientes AS c ON c.id_cliente = o.id_cliente;
+-----------------+----------------+
| nombre_producto | nombre_cliente |
+-----------------+----------------+
| Producto A      | Juan           |
| Producto B      | María          |
| Producto C      | Pedro          |
+-----------------+----------------+

```

#### Mostrar todas las órdenes junto con el nombre del cliente y el nombre del producto, incluyendo las órdenes sin productos.

```sql
select o.*,c.nombre_cliente,p.nombre_producto 
FROM ordenes AS o 
left JOIN clientes AS c ON c.id_cliente = o.id_cliente
left JOIN detalles_ordenes AS d ON d.id_orden = o.id_orden 
left JOIN productos AS p ON d.id_producto = p.id_producto;
+----------+------------+-------------+----------------+-----------------+
| id_orden | id_cliente | fecha_orden | nombre_cliente | nombre_producto |
+----------+------------+-------------+----------------+-----------------+
|        1 |          1 | 2024-03-01  | Juan           | Producto A      |
|        2 |          2 | 2024-03-02  | María          | Producto B      |
|        3 |          3 | 2024-03-03  | Pedro          | Producto C      |
+----------+------------+-------------+----------------+-----------------+

```

#### Obtener el nombre de los clientes junto con el número total de órdenes que han realizado, incluyendo los clientes que no han realizado órdenes.

```sql
SELECT c.nombre_cliente, Count(o.id_orden)
FROM ordenes AS o 
left JOIN clientes AS c ON c.id_cliente = o.id_cliente GROUP BY c.nombre_cliente;
+----------------+-------------------+
| nombre_cliente | Count(o.id_orden) |
+----------------+-------------------+
| Juan           |                 1 |
| María          |                 1 |
| Pedro          |                 1 |
+----------------+-------------------+

```

#### Mostrar todas las órdenes con sus clientes y productos, incluyendo las órdenes y productos que no tienen información.

```sql
select o.*,c.nombre_cliente,p.nombre_producto 
FROM  detalles_ordenes AS d
left JOIN ordenes AS o ON d.id_orden = o.id_orden 
left JOIN productos AS p ON d.id_producto = p.id_producto
JOIN clientes AS c ON c.id_cliente = o.id_cliente;
+----------+------------+-------------+----------------+-----------------+
| id_orden | id_cliente | fecha_orden | nombre_cliente | nombre_producto |
+----------+------------+-------------+----------------+-----------------+
|        1 |          1 | 2024-03-01  | Juan           | Producto A      |
|        2 |          2 | 2024-03-02  | María          | Producto B      |
|        3 |          3 | 2024-03-03  | Pedro          | Producto C      |
+----------+------------+-------------+----------------+-----------------+

```

#### Realizar un inner join entre clientes y órdenes.

```sql
SELECT *
FROM ordenes AS o 
INNER JOIN clientes AS c ON c.id_cliente = o.id_cliente;
+----------+------------+-------------+------------+----------------+----------------+
| id_orden | id_cliente | fecha_orden | id_cliente | nombre_cliente | ciudad_cliente |
+----------+------------+-------------+------------+----------------+----------------+
|        1 |          1 | 2024-03-01  |          1 | Juan           | Ciudad A       |
|        2 |          2 | 2024-03-02  |          2 | María          | Ciudad B       |
|        3 |          3 | 2024-03-03  |          3 | Pedro          | Ciudad C       |
+----------+------------+-------------+------------+----------------+----------------+

```

#### Realizar un left join entre órdenes y detalles de órdenes.

```sql
 Select * FROM  detalles_ordenes AS d left JOIN ordenes AS o ON d.id_orden = o.id_orden;
+------------+----------+-------------+----------+----------+------------+-------------+
| id_detalle | id_orden | id_producto | cantidad | id_orden | id_cliente | fecha_orden |
+------------+----------+-------------+----------+----------+------------+-------------+
|          1 |        1 |           1 |        2 |        1 |          1 | 2024-03-01  |
|          2 |        2 |           2 |        1 |        2 |          2 | 2024-03-02  |
|          3 |        3 |           3 |        3 |        3 |          3 | 2024-03-03  |
+------------+----------+-------------+----------+----------+------------+-------------+

```

#### Realizar un right join entre productos y detalles de órdenes.

```sql
select * FROM  detalles_ordenes AS d right JOIN productos AS p ON d.id_producto = p.id_producto;
+------------+----------+-------------+----------+-------------+-----------------+-----------------+
| id_detalle | id_orden | id_producto | cantidad | id_producto | nombre_producto | precio_producto |
+------------+----------+-------------+----------+-------------+-----------------+-----------------+
|          1 |        1 |           1 |        2 |           1 | Producto A      |           50.00 |
|          2 |        2 |           2 |        1 |           2 | Producto B      |           75.00 |
|          3 |        3 |           3 |        3 |           3 | Producto C      |          100.00 |
+------------+----------+-------------+----------+-------------+-----------------+-----------------+

```

#### Realizar un full join entre clientes y órdenes.

```sql
SELECT *
FROM clientes AS c
LEFT JOIN ordenes AS o ON c.id_cliente = o.id_cliente
UNION
SELECT *
FROM clientes AS c
RIGHT JOIN ordenes AS o ON c.id_cliente = o.id_cliente;
+------------+----------------+----------------+----------+------------+-------------+
| id_cliente | nombre_cliente | ciudad_cliente | id_orden | id_cliente | fecha_orden |
+------------+----------------+----------------+----------+------------+-------------+
|          1 | Juan           | Ciudad A       |        1 |          1 | 2024-03-01  |
|          2 | María          | Ciudad B       |        2 |          2 | 2024-03-02  |
|          3 | Pedro          | Ciudad C       |        3 |          3 | 2024-03-03  |
+------------+----------------+----------------+----------+------------+-------------+

```

#### Realizar un full join entre órdenes y detalles de órdenes.

```sql
SELECT *
FROM ordenes AS o
LEFT JOIN detalles_ordenes AS d ON o.id_orden = d.id_orden
UNION
SELECT *
FROM ordenes AS o
RIGHT JOIN detalles_ordenes AS d ON o.id_orden = d.id_orden;
+----------+------------+-------------+------------+----------+-------------+----------+
| id_orden | id_cliente | fecha_orden | id_detalle | id_orden | id_producto | cantidad |
+----
------+------------+-------------+------------+----------+-------------+----------+
|        1 |          1 | 2024-03-01  |          1 |        1 |           1 |        2 |
|        2 |          2 | 2024-03-02  |          2 |        2 |           2 |        1 |
|        3 |          3 | 2024-03-03  |          3 |        3 |           3 |        3 |
+----------+------------+-------------+------------+----------+-------------+----------+

```

#### Realizar un full join entre productos y detalles de órdenes.
```sql
SELECT *
FROM productos AS p
LEFT JOIN detalles_ordenes AS d ON p.id_producto = d.id_producto
UNION
SELECT *
FROM productos AS p
RIGHT JOIN detalles_ordenes AS d ON p.id_producto = d.id_producto;
+-------------+-----------------+-----------------+------------+----------+-------------+----------+
| id_producto | nombre_producto | precio_producto | id_detalle | id_orden | id_producto | cantidad |
+-------------+-----------------+-----------------+------------+----------+-------------+----------+
|           1 | Producto A      |           50.00 |          1 |        1 |           1 |        2 |
|           2 | Producto B      |           75.00 |          2 |        2 |           2 |        1 |
|           3 | Producto C      |          100.00 |          3 |        3 |           3 |        3 |
+-------------+-----------------+-----------------+------------+----------+-------------+----------+

```
