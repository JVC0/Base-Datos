## Consultas simples:

#### Mostrar todos los clientes.

```slq
 select * from clientes;
+------------+------------+---------------+
| id_cliente | nombre     | direccion     |
+------------+------------+---------------+
|          1 | Cliente 1  | Dirección 1   |
|          2 | Cliente 2  | Dirección 2   |
|          3 | Cliente 3  | Dirección 3   |
|          4 | Cliente 4  | Dirección 4   |
|          5 | Cliente 5  | Dirección 5   |
|          6 | Cliente 6  | Dirección 6   |
|          7 | Cliente 7  | Dirección 7   |
|          8 | Cliente 8  | Dirección 8   |
|          9 | Cliente 9  | Dirección 9   |
|         10 | Cliente 10 | Dirección 10  |
|         11 | Cliente 11 | Dirección 11  |
|         12 | Cliente 12 | Dirección 12  |
|         13 | Cliente 13 | Dirección 13  |
|         14 | Cliente 14 | Dirección 14  |
|         15 | Cliente 15 | Dirección 15  |
|         16 | Cliente 16 | Dirección 16  |
|         17 | Cliente 17 | Dirección 17  |
|         18 | Cliente 18 | Dirección 18  |
|         19 | Cliente 19 | Dirección 19  |
|         20 | Cliente 20 | Dirección 20  |
+------------+------------+---------------+

```

#### Mostrar todos los productos.

```slq
select * from productos;
+-------------+-------------+--------+
| id_producto | nombre      | precio |
+-------------+-------------+--------+
|           1 | Producto 1  |     11 |
|           2 | Producto 2  |     21 |
|           3 | Producto 3  |     31 |
|           4 | Producto 4  |     41 |
|           5 | Producto 5  |     51 |
|           6 | Producto 6  |     61 |
|           7 | Producto 7  |     71 |
|           8 | Producto 8  |     81 |
|           9 | Producto 9  |     91 |
|          10 | Producto 10 |    101 |
|          11 | Producto 11 |    111 |
|          12 | Producto 12 |    121 |
|          13 | Producto 13 |    131 |
|          14 | Producto 14 |    141 |
|          15 | Producto 15 |    151 |
|          16 | Producto 16 |    161 |
|          17 | Producto 17 |    171 |
|          18 | Producto 18 |    181 |
|          19 | Producto 19 |    191 |
|          20 | Producto 20 |    201 |
+-------------+-------------+--------+

```

#### Mostrar todas las órdenes.

```slq
select * from ordenes;
+----------+------------+-------------+----------+
| id_orden | id_cliente | id_producto | cantidad |
+----------+------------+-------------+----------+
|        1 |          1 |           1 |        2 |
|        2 |          2 |           2 |        1 |
|        3 |          3 |           3 |        3 |
|        4 |          4 |           4 |        2 |
|        5 |          5 |           5 |        1 |
|        6 |          6 |           6 |        2 |
|        7 |          7 |           7 |        3 |
|        8 |          8 |           8 |        2 |
|        9 |          9 |           9 |        1 |
|       10 |         10 |          10 |        2 |
|       11 |         11 |          11 |        3 |
|       12 |         12 |          12 |        2 |
|       13 |         13 |          13 |        1 |
|       14 |         14 |          14 |        2 |
|       15 |         15 |          15 |        3 |
|       16 |         16 |          16 |        2 |
|       17 |         17 |          17 |        1 |
|       18 |         18 |          18 |        2 |
|       19 |         19 |          19 |        3 |
|       20 |         20 |          20 |        2 |
+----------+------------+-------------+----------+

```

#### Mostrar los primeros 5 clientes ordenados por nombre.

```slq
select * from clientes LIMIT 5;
+------------+-----------+--------------+
| id_cliente | nombre    | direccion    |
+------------+-----------+--------------+
|          1 | Cliente 1 | Dirección 1  |
|          2 | Cliente 2 | Dirección 2  |
|          3 | Cliente 3 | Dirección 3  |
|          4 | Cliente 4 | Dirección 4  |
|          5 | Cliente 5 | Dirección 5  |
+------------+-----------+--------------+

```

#### Mostrar los productos con un precio mayor a 50.

```slq
select * from productos where precio>50;
+-------------+-------------+--------+
| id_producto | nombre      | precio |
+-------------+-------------+--------+
|           5 | Producto 5  |     51 |
|           6 | Producto 6  |     61 |
|           7 | Producto 7  |     71 |
|           8 | Producto 8  |     81 |
|           9 | Producto 9  |     91 |
|          10 | Producto 10 |    101 |
|          11 | Producto 11 |    111 |
|          12 | Producto 12 |    121 |
|          13 | Producto 13 |    131 |
|          14 | Producto 14 |    141 |
|          15 | Producto 15 |    151 |
|          16 | Producto 16 |    161 |
|          17 | Producto 17 |    171 |
|          18 | Producto 18 |    181 |
|          19 | Producto 19 |    191 |
|          20 | Producto 20 |    201 |
+-------------+-------------+--------+

```

#### Mostrar todas las órdenes realizadas por el cliente con ID 1.

```slq
select * from clientes as c join ordenes as o on c.id_cliente=o.id_cliente where c.id_cliente=1;
+------------+-----------+--------------+----------+------------+-------------+----------+
| id_cliente | nombre    | direccion    | id_orden | id_cliente | id_producto | cantidad |
+------------+-----------+--------------+----------+------------+-------------+----------+
|          1 | Cliente 1 | Dirección 1  |        1 |          1 |           1 |        2 |
+------------+-----------+--------------+----------+------------+-------------+----------+

```

#### Mostrar los clientes cuyos nombres comienzan con la letra "M".

```slq
select * from clientes where nombre regexp '^M';
```

#### Mostrar las órdenes que contienen más de 2 productos.

```slq

```

#### Mostrar los productos ordenados por precio de forma descendente.

```slq

```

## Consultas de ejemplo para practicar joins

#### Seleccionar todos los clientes y sus órdenes, incluso si no tienen órdenes

```slq

```

#### Seleccionar todas las órdenes junto con los productos correspondientes

```slq

```

#### Mostrar el nombre de los clientes que han realizado órdenes de productos que cuestan más de 50

```slq

```

#### Obtener el nombre de los productos que no se han ordenado aún

```slq

```

#### Mostrar el nombre del cliente, el producto y la cantidad para todas las órdenes

```slq

```

#### Obtener el nombre de los productos junto con los nombres de los clientes que han realizado órdenes de esos productos

```slq

```

#### Mostrar todas las órdenes con sus clientes y productos, incluso si no hay órdenes

```slq

```

#### Obtener el nombre de los clientes junto con el número total de órdenes que han realizado

```slq

```

#### Mostrar todas las órdenes junto con el nombre del cliente y el nombre del producto

```slq

```

#### Mostrar todas las órdenes con sus productos y clientes, incluso si no hay información de cliente.

```slq

```


#### Obtener el nombre de los productos junto con el nombre de los clientes que han realizado órdenes de esos productos, incluyendo los productos que no han sido ordenados

```slq

```

#### Mostrar todas las órdenes junto con el nombre del cliente y el nombre del producto, incluyendo las órdenes sin productos

```slq

```

#### Obtener el nombre de los clientes junto con el número total de órdenes que han realizado, incluyendo los clientes que no han realizado órdenes.

```slq

```

#### Mostrar todas las órdenes con sus clientes y productos, incluyendo las órdenes y productos que no tienen información.

```slq

```