-- Obtener todos los clientes.
SELECT * from Clientes ;
┌────┬─────────────────┬───────────────────────────┐
│ id │     nombre      │           email           │
├────┼─────────────────┼───────────────────────────┤
│ 1  │ Juan Pérez      │ juan@example.com          │
│ 2  │ María Gómez     │ maria@example.com         │
│ 3  │ Carlos López    │ carlos@example.com        │
│ 4  │ Ana Rodríguez   │ ana@example.com           │
│ 5  │ Luisa Martínez  │ luisa@example.com         │
│ 6  │ Pedro Sánchez   │ pedro@example.com         │
│ 7  │ Laura García    │ laura@example.com         │
│ 8  │ Miguel Martín   │ miguel@example.com        │
│ 9  │ Elena González  │ elena@example.com         │
│ 10 │ David Torres    │ david@example.com         │
│ 11 │ Sofía Ruiz      │ sofia@example.com         │
│ 12 │ Javier López    │ javier@example.com        │
│ 13 │ Carmen Vargas   │ carmen@example.com        │
│ 14 │ Daniel Muñoz    │ daniel@example.com        │
│ 15 │ Isabel Serrano  │ isabel@example.com        │
│ 16 │ Alejandro Muñoz │ alejandro@example.com     │
│ 17 │ Raquel Herrera  │ raquel@example.com        │
│ 18 │ Francisco Mora  │ francisco@example.com     │
│ 19 │ Marina Díaz     │ marina@example.com        │
│ 20 │ Antonio Jiménez │ antonio@example.com       │
│ 21 │ Beatriz Romero  │ beatriz@example.com       │
│ 22 │ Carlos Gómez    │ carlos.gomez@example.com  │
│ 23 │ Clara Sánchez   │ clara.sanchez@example.com │
│ 24 │ Andrés Martínez │ andres@example.com        │
│ 25 │ Lucía Díaz      │ lucia@example.com         │
│ 26 │ Mario Serrano   │ mario@example.com         │
│ 27 │ Eva Torres      │ eva.torres@example.com    │
│ 28 │ Roberto Ruiz    │ roberto@example.com       │
│ 29 │ Celia García    │ celia@example.com         │
└────┴─────────────────┴───────────────────────────┘

-- Obtener la cantidad total de productos en todos los pedidos
SELECT Sum(cantidad) FROM Pedidos ;
┌───────────────┐
│ Sum(cantidad) │
├───────────────┤
│ 54            │
└───────────────┘

-- Obtener el precio promedio de los productos:
SELECT avg(precio) FROM  Productos ;
┌──────────────────┐
│   avg(precio)    │
├──────────────────┤
│ 188.294285714286 │
└──────────────────┘

-- Obtener los clientes que tienen un email válido (contiene '@'):
SELECT * FROM Clientes where email REGEXP '@';
┌────┬─────────────────┬───────────────────────────┐
│ id │     nombre      │           email           │
├────┼─────────────────┼───────────────────────────┤
│ 1  │ Juan Pérez      │ juan@example.com          │
│ 2  │ María Gómez     │ maria@example.com         │
│ 3  │ Carlos López    │ carlos@example.com        │
│ 4  │ Ana Rodríguez   │ ana@example.com           │
│ 5  │ Luisa Martínez  │ luisa@example.com         │
│ 6  │ Pedro Sánchez   │ pedro@example.com         │
│ 7  │ Laura García    │ laura@example.com         │
│ 8  │ Miguel Martín   │ miguel@example.com        │
│ 9  │ Elena González  │ elena@example.com         │
│ 10 │ David Torres    │ david@example.com         │
│ 11 │ Sofía Ruiz      │ sofia@example.com         │
│ 12 │ Javier López    │ javier@example.com        │
│ 13 │ Carmen Vargas   │ carmen@example.com        │
│ 14 │ Daniel Muñoz    │ daniel@example.com        │
│ 15 │ Isabel Serrano  │ isabel@example.com        │
│ 16 │ Alejandro Muñoz │ alejandro@example.com     │
│ 17 │ Raquel Herrera  │ raquel@example.com        │
│ 18 │ Francisco Mora  │ francisco@example.com     │
│ 19 │ Marina Díaz     │ marina@example.com        │
│ 20 │ Antonio Jiménez │ antonio@example.com       │
│ 21 │ Beatriz Romero  │ beatriz@example.com       │
│ 22 │ Carlos Gómez    │ carlos.gomez@example.com  │
│ 23 │ Clara Sánchez   │ clara.sanchez@example.com │
│ 24 │ Andrés Martínez │ andres@example.com        │
│ 25 │ Lucía Díaz      │ lucia@example.com         │
│ 26 │ Mario Serrano   │ mario@example.com         │
│ 27 │ Eva Torres      │ eva.torres@example.com    │
│ 28 │ Roberto Ruiz    │ roberto@example.com       │
│ 29 │ Celia García    │ celia@example.com         │
└────┴─────────────────┴───────────────────────────┘

-- Obtener el producto más caro.
SELECT *,max(precio)  FROM  Productos; 
┌────┬────────┬────────┬─────────────┐
│ id │ nombre │ precio │ max(precio) │
├────┼────────┼────────┼─────────────┤
│ 1  │ Laptop │ 1200.0 │ 1200.0      │
└────┴────────┴────────┴─────────────┘
-- Obtener los pedidos realizados en febrero de 2024.
SELECT * FROM  Pedidos WHERE fecha_pedido REGEXP '2024-02-';
┌───────────┬────────────┬─────────────┬──────────┬──────────────┐
│ id_pedido │ id_cliente │ id_producto │ cantidad │ fecha_pedido │
├───────────┼────────────┼─────────────┼──────────┼──────────────┤
│ 1         │ 1          │ 1           │ 2        │ 2024-02-01   │
│ 2         │ 2          │ 2           │ 1        │ 2024-02-02   │
│ 3         │ 3          │ 3           │ 3        │ 2024-02-03   │
│ 4         │ 4          │ 4           │ 1        │ 2024-02-04   │
│ 5         │ 5          │ 5           │ 2        │ 2024-02-05   │
│ 6         │ 6          │ 6           │ 1        │ 2024-02-06   │
│ 7         │ 7          │ 7           │ 3        │ 2024-02-07   │
│ 8         │ 8          │ 8           │ 2        │ 2024-02-08   │
│ 9         │ 9          │ 9           │ 1        │ 2024-02-09   │
│ 10        │ 10         │ 10          │ 2        │ 2024-02-10   │
│ 11        │ 11         │ 11          │ 1        │ 2024-02-11   │
│ 12        │ 12         │ 12          │ 3        │ 2024-02-12   │
│ 13        │ 13         │ 13          │ 1        │ 2024-02-13   │
│ 14        │ 14         │ 14          │ 2        │ 2024-02-14   │
│ 15        │ 15         │ 15          │ 1        │ 2024-02-15   │
│ 16        │ 16         │ 16          │ 3        │ 2024-02-16   │
│ 17        │ 17         │ 17          │ 2        │ 2024-02-17   │
│ 18        │ 18         │ 18          │ 1        │ 2024-02-18   │
│ 19        │ 19         │ 19          │ 2        │ 2024-02-19   │
│ 20        │ 20         │ 20          │ 1        │ 2024-02-20   │
│ 21        │ 21         │ 21          │ 3        │ 2024-02-21   │
│ 22        │ 22         │ 22          │ 1        │ 2024-02-22   │
│ 23        │ 23         │ 23          │ 2        │ 2024-02-23   │
│ 24        │ 24         │ 24          │ 1        │ 2024-02-24   │
│ 25        │ 25         │ 25          │ 3        │ 2024-02-25   │
│ 26        │ 26         │ 26          │ 2        │ 2024-02-26   │
│ 27        │ 27         │ 27          │ 1        │ 2024-02-27   │
│ 28        │ 28         │ 28          │ 2        │ 2024-02-28   │
│ 29        │ 29         │ 29          │ 1        │ 2024-02-29   │
└───────────┴────────────┴─────────────┴──────────┴──────────────┘

-- Obtener la cantidad total de productos en todos los pedidos por producto.
SELECT pro.nombre,pe.cantidad FROM Pedidos as pe, Productos as pro WHERE pe.id_producto=pro.id;
┌───────────────────────────────────┬──────────┐
│              nombre               │ cantidad │
├───────────────────────────────────┼──────────┤
│ Laptop                            │ 2        │
│ Smartphone                        │ 1        │
│ TV LED                            │ 3        │
│ Tablet                            │ 1        │
│ Auriculares Bluetooth             │ 2        │
│ Impresora                         │ 1        │
│ Cámara Digital                    │ 3        │
│ Reproductor de Audio              │ 2        │
│ Altavoces Inalámbricos            │ 1        │
│ Reloj Inteligente                 │ 2        │
│ Teclado Inalámbrico               │ 1        │
│ Ratón Óptico                      │ 3        │
│ Monitor LED                       │ 1        │
│ Mochila para Portátil             │ 2        │
│ Disco Duro Externo                │ 1        │
│ Router Wi-Fi                      │ 3        │
│ Lámpara LED                       │ 2        │
│ Batería Externa                   │ 1        │
│ Estuche para Auriculares          │ 2        │
│ Tarjeta de Memoria                │ 1        │
│ Cargador Inalámbrico              │ 3        │
│ Kit de Limpieza para Computadoras │ 1        │
│ Funda para Tablet                 │ 2        │
│ Soporte para Teléfono             │ 1        │
│ Hub USB                           │ 3        │
│ Webcam HD                         │ 2        │
│ Funda para Laptop                 │ 1        │
│ Adaptador HDMI                    │ 2        │
└───────────────────────────────────┴──────────┘

-- Obtener los clientes que han realizado más de un pedido.
SELECT c.nombre,p.cantidad FROM Pedidos as p, Clientes as c WHERE p.id_cliente=c.id and cantidad>1;
┌─────────────────┬──────────┐
│     nombre      │ cantidad │
├─────────────────┼──────────┤
│ Juan Pérez      │ 2        │
│ Carlos López    │ 3        │
│ Luisa Martínez  │ 2        │
│ Laura García    │ 3        │
│ Miguel Martín   │ 2        │
│ David Torres    │ 2        │
│ Javier López    │ 3        │
│ Daniel Muñoz    │ 2        │
│ Alejandro Muñoz │ 3        │
│ Raquel Herrera  │ 2        │
│ Marina Díaz     │ 2        │
│ Beatriz Romero  │ 3        │
│ Clara Sánchez   │ 2        │
│ Lucía Díaz      │ 3        │
│ Mario Serrano   │ 2        │
│ Roberto Ruiz    │ 2        │
└─────────────────┴──────────┘

-- Obtener los productos que tienen un precio registrado.
select * from productos where precio is not null;
┌────┬───────────────────────────────────┬────────┐
│ id │              nombre               │ precio │
├────┼───────────────────────────────────┼────────┤
│ 1  │ Laptop                            │ 1200.0 │
│ 2  │ Smartphone                        │ 699.99 │
│ 3  │ TV LED                            │ 799.5  │
│ 4  │ Tablet                            │ 299.99 │
│ 5  │ Auriculares Bluetooth             │ 79.99  │
│ 6  │ Impresora                         │ 199.99 │
│ 7  │ Cámara Digital                    │ 499.99 │
│ 8  │ Reproductor de Audio              │ 149.99 │
│ 9  │ Altavoces Inalámbricos            │ 129.99 │
│ 10 │ Reloj Inteligente                 │ 249.99 │
│ 11 │ Teclado Inalámbrico               │ 59.99  │
│ 12 │ Ratón Óptico                      │ 29.99  │
│ 13 │ Monitor LED                       │ 349.99 │
│ 14 │ Mochila para Portátil             │ 49.99  │
│ 15 │ Disco Duro Externo                │ 89.99  │
│ 16 │ Router Wi-Fi                      │ 69.99  │
│ 17 │ Lámpara LED                       │ 39.99  │
│ 18 │ Batería Externa                   │ 19.99  │
│ 19 │ Estuche para Auriculares          │ 14.99  │
│ 20 │ Tarjeta de Memoria                │ 24.99  │
│ 21 │ Cargador Inalámbrico              │ 34.99  │
│ 22 │ Kit de Limpieza para Computadoras │ 9.99   │
│ 23 │ Funda para Tablet                 │ 19.99  │
│ 24 │ Soporte para Teléfono             │ 14.99  │
│ 25 │ Hub USB                           │ 29.99  │
│ 26 │ Webcam HD                         │ 59.99  │
│ 27 │ Funda para Laptop                 │ 29.99  │
│ 28 │ Adaptador HDMI                    │ 12.99  │
└────┴───────────────────────────────────┴────────┘

-- Obtener la fecha del primer pedido realizado:
SELECT * FROM  Pedidos LIMIT 1;
┌───────────┬────────────┬─────────────┬──────────┬──────────────┐
│ id_pedido │ id_cliente │ id_producto │ cantidad │ fecha_pedido │
├───────────┼────────────┼─────────────┼──────────┼──────────────┤
│ 1         │ 1          │ 1           │ 2        │ 2024-02-01   │
└───────────┴────────────┴─────────────┴──────────┴──────────────┘

-- Obtener los productos cuyos nombres comienzan con 'A' o 'B':
SELECT nombre FROM  Productos WHERE nombre REGEXP '^[A]|[B]';
┌────────────────────────┐
│         nombre         │
├────────────────────────┤
│ Auriculares Bluetooth  │
│ Altavoces Inalámbricos │
│ Batería Externa        │
│ Adaptador HDMI         │
└────────────────────────┘

-- Obtener la cantidad total de productos en todos los pedidos por cliente ordenado por cliente.

-- Obtener los clientes que han realizado más de un pedido en febrero de 2024.
SELECT c.nombre FROM Pedidos as p, Clientes as c where p.id_cliente=c.id and fecha_pedido REGEXP '2024-02-';
┌─────────────────┐
│     nombre      │
├─────────────────┤
│ Juan Pérez      │
│ María Gómez     │
│ Carlos López    │
│ Ana Rodríguez   │
│ Luisa Martínez  │
│ Pedro Sánchez   │
│ Laura García    │
│ Miguel Martín   │
│ Elena González  │
│ David Torres    │
│ Sofía Ruiz      │
│ Javier López    │
│ Carmen Vargas   │
│ Daniel Muñoz    │
│ Isabel Serrano  │
│ Alejandro Muñoz │
│ Raquel Herrera  │
│ Francisco Mora  │
│ Marina Díaz     │
│ Antonio Jiménez │
│ Beatriz Romero  │
│ Carlos Gómez    │
│ Clara Sánchez   │
│ Andrés Martínez │
│ Lucía Díaz      │
│ Mario Serrano   │
│ Eva Torres      │
│ Roberto Ruiz    │
│ Celia García    │
└─────────────────┘

-- Obtener los productos con precio entre 100 y 500.
SELECT nombre,precio FROM  Productos WHERE precio>100 and precio<500;
┌────────────────────────┬────────┐
│         nombre         │ precio │
├────────────────────────┼────────┤
│ Tablet                 │ 299.99 │
│ Impresora              │ 199.99 │
│ Cámara Digital         │ 499.99 │
│ Reproductor de Audio   │ 149.99 │
│ Altavoces Inalámbricos │ 129.99 │
│ Reloj Inteligente      │ 249.99 │
│ Monitor LED            │ 349.99 │
└────────────────────────┴────────┘

-- Obtener la cantidad total de productos en todos los pedidos por cliente ordenado por cantidad descendente.
select c.id, c.nombre, sum(p.cantidad) as total_pedidos from pedidos as p, clientes as c where c.id=p.id_cliente group by p.id_cliente order by p.cantidad desc;
┌────┬─────────────────┬───────────────┐
│ id │     nombre      │ total_pedidos │
├────┼─────────────────┼───────────────┤
│ 25 │ Lucía Díaz      │ 3             │
│ 21 │ Beatriz Romero  │ 3             │
│ 16 │ Alejandro Muñoz │ 3             │
│ 12 │ Javier López    │ 3             │
│ 7  │ Laura García    │ 3             │
│ 3  │ Carlos López    │ 3             │
│ 28 │ Roberto Ruiz    │ 2             │
│ 26 │ Mario Serrano   │ 2             │
│ 23 │ Clara Sánchez   │ 2             │
│ 19 │ Marina Díaz     │ 2             │
│ 17 │ Raquel Herrera  │ 2             │
│ 14 │ Daniel Muñoz    │ 2             │
│ 10 │ David Torres    │ 2             │
│ 8  │ Miguel Martín   │ 2             │
│ 5  │ Luisa Martínez  │ 2             │
│ 1  │ Juan Pérez      │ 2             │
│ 29 │ Celia García    │ 1             │
│ 27 │ Eva Torres      │ 1             │
│ 24 │ Andrés Martínez │ 1             │
│ 22 │ Carlos Gómez    │ 1             │
│ 20 │ Antonio Jiménez │ 1             │
│ 18 │ Francisco Mora  │ 1             │
│ 15 │ Isabel Serrano  │ 1             │
│ 13 │ Carmen Vargas   │ 1             │
│ 11 │ Sofía Ruiz      │ 1             │
│ 9  │ Elena González  │ 1             │
│ 6  │ Pedro Sánchez   │ 1             │
│ 4  │ Ana Rodríguez   │ 1             │
│ 2  │ María Gómez     │ 1             │
└────┴─────────────────┴───────────────┘

-- Obtener los clientes que tienen una 'a' en cualquier posición de su nombre.
SELECT nombre FROM Clientes WHERE nombre REGEXP 'a';
┌─────────────────┐
│     nombre      │
├─────────────────┤
│ Juan Pérez      │
│ María Gómez     │
│ Carlos López    │
│ Ana Rodríguez   │
│ Luisa Martínez  │
│ Laura García    │
│ Miguel Martín   │
│ Elena González  │
│ David Torres    │
│ Sofía Ruiz      │
│ Javier López    │
│ Carmen Vargas   │
│ Daniel Muñoz    │
│ Isabel Serrano  │
│ Alejandro Muñoz │
│ Raquel Herrera  │
│ Francisco Mora  │
│ Marina Díaz     │
│ Beatriz Romero  │
│ Carlos Gómez    │
│ Clara Sánchez   │
│ Andrés Martínez │
│ Lucía Díaz      │
│ Mario Serrano   │
│ Eva Torres      │
│ Celia García    │
└─────────────────┘

-- Obtener el precio máximo de los productos.
SELECT *, Max(precio) FROM Productos ;
┌────┬────────┬────────┬─────────────┐
│ id │ nombre │ precio │ Max(precio) │
├────┼────────┼────────┼─────────────┤
│ 1  │ Laptop │ 1200.0 │ 1200.0      │
└────┴────────┴────────┴─────────────┘

-- Obtener los pedidos realizados por el cliente con ID 1 en febrero de 2024.
SELECT * FROM Pedidos as p, Clientes as c where p.id_cliente=c.id and fecha_pedido REGEXP '2024-02-' and c.id=1 ;
┌───────────┬────────────┬─────────────┬──────────┬──────────────┬────┬────────────┬──────────────────┐
│ id_pedido │ id_cliente │ id_producto │ cantidad │ fecha_pedido │ id │   nombre   │      email       │
├───────────┼────────────┼─────────────┼──────────┼──────────────┼────┼────────────┼──────────────────┤
│ 1         │ 1          │ 1           │ 2        │ 2024-02-01   │ 1  │ Juan Pérez │ juan@example.com │
└───────────┴────────────┴─────────────┴──────────┴──────────────┴────┴────────────┴──────────────────┘
-- Obtener la cantidad total de productos en todos los pedidos por producto ordenado por total de productos descendente.

-- Obtener los productos que no tienen un precio registrado.
SELECT * from productos where precio is null;
-- Obtener la fecha del último pedido realizado.
select * from pedidos order by fecha_pedido desc limit 1;
┌───────────┬────────────┬─────────────┬──────────┬──────────────┐
│ id_pedido │ id_cliente │ id_producto │ cantidad │ fecha_pedido │
├───────────┼────────────┼─────────────┼──────────┼──────────────┤
│ 30        │ 30         │ 30          │ 3        │ 2024-03-01   │
└───────────┴────────────┴─────────────┴──────────┴──────────────┘
-- Obtener los clientes cuyo nombre tiene al menos 5 caracteres.
SELECT nombre FROM  Clientes where nombre REGEXP '[a-zA-Z]{5}';
┌─────────────────┐
│     nombre      │
├─────────────────┤
│ Carlos López    │
│ Luisa Martínez  │
│ Pedro Sánchez   │
│ Laura García    │
│ Miguel Martín   │
│ Elena González  │
│ David Torres    │
│ Javier López    │
│ Carmen Vargas   │
│ Daniel Muñoz    │
│ Isabel Serrano  │
│ Alejandro Muñoz │
│ Raquel Herrera  │
│ Francisco Mora  │
│ Marina Díaz     │
│ Antonio Jiménez │
│ Beatriz Romero  │
│ Carlos Gómez    │
│ Clara Sánchez   │
│ Mario Serrano   │
│ Eva Torres      │
│ Roberto Ruiz    │
│ Celia García    │
└─────────────────┘

-- Obtener los productos que tienen la letra 'o' en cualquier posición del nombre.
SELECT nombre FROM  Productos where nombre REGEXP 'o';
┌───────────────────────────────────┐
│              nombre               │
├───────────────────────────────────┤
│ Laptop                            │
│ Smartphone                        │
│ Auriculares Bluetooth             │
│ Impresora                         │
│ Reproductor de Audio              │
│ Altavoces Inalámbricos            │
│ Reloj Inteligente                 │
│ Teclado Inalámbrico               │
│ Ratón Óptico                      │
│ Monitor LED                       │
│ Mochila para Portátil             │
│ Disco Duro Externo                │
│ Router Wi-Fi                      │
│ Tarjeta de Memoria                │
│ Cargador Inalámbrico              │
│ Kit de Limpieza para Computadoras │
│ Soporte para Teléfono             │
│ Funda para Laptop                 │
│ Adaptador HDMI                    │
└───────────────────────────────────┘

-- Obtener la cantidad total de productos en todos los pedidos por cliente ordenado por cliente.
SELECT pe.id_cliente, c.id, c.nombre, sum(pe.cantidad) as total_cantidad from Clientes as c, Pedidos as pe where c.id=pe.id_cliente group by c.id order by c.id;
┌────────────┬────┬─────────────────┬────────────────┐
│ id_cliente │ id │     nombre      │ total_cantidad │
├────────────┼────┼─────────────────┼────────────────┤
│ 1          │ 1  │ Juan Pérez      │ 2              │
│ 2          │ 2  │ María Gómez     │ 1              │
│ 3          │ 3  │ Carlos López    │ 3              │
│ 4          │ 4  │ Ana Rodríguez   │ 1              │
│ 5          │ 5  │ Luisa Martínez  │ 2              │
│ 6          │ 6  │ Pedro Sánchez   │ 1              │
│ 7          │ 7  │ Laura García    │ 3              │
│ 8          │ 8  │ Miguel Martín   │ 2              │
│ 9          │ 9  │ Elena González  │ 1              │
│ 10         │ 10 │ David Torres    │ 2              │
│ 11         │ 11 │ Sofía Ruiz      │ 1              │
│ 12         │ 12 │ Javier López    │ 3              │
│ 13         │ 13 │ Carmen Vargas   │ 1              │
│ 14         │ 14 │ Daniel Muñoz    │ 2              │
│ 15         │ 15 │ Isabel Serrano  │ 1              │
│ 16         │ 16 │ Alejandro Muñoz │ 3              │
│ 17         │ 17 │ Raquel Herrera  │ 2              │
│ 18         │ 18 │ Francisco Mora  │ 1              │
│ 19         │ 19 │ Marina Díaz     │ 2              │
│ 20         │ 20 │ Antonio Jiménez │ 1              │
│ 21         │ 21 │ Beatriz Romero  │ 3              │
│ 22         │ 22 │ Carlos Gómez    │ 1              │
│ 23         │ 23 │ Clara Sánchez   │ 2              │
│ 24         │ 24 │ Andrés Martínez │ 1              │
│ 25         │ 25 │ Lucía Díaz      │ 3              │
│ 26         │ 26 │ Mario Serrano   │ 2              │
│ 27         │ 27 │ Eva Torres      │ 1              │
│ 28         │ 28 │ Roberto Ruiz    │ 2              │
│ 29         │ 29 │ Celia García    │ 1              │
└────────────┴────┴─────────────────┴────────────────┘

-- Obtener los clientes cuyos nombres no contienen la letra 'i':
SELECT nombre FROM  Clientes where nombre not  REGEXP '[iíI]';
┌─────────────────┐
│     nombre      │
├─────────────────┤
│ Juan Pérez      │
│ Carlos López    │
│ Pedro Sánchez   │
│ Elena González  │
│ Carmen Vargas   │
│ Alejandro Muñoz │
│ Raquel Herrera  │
│ Carlos Gómez    │
│ Clara Sánchez   │
│ Eva Torres      │
└─────────────────┘

-- Obtener los pedidos realizados por el cliente con ID 2 en febrero de 2024.
SELECT * FROM Pedidos as p, Clientes as c WHERE p.id_cliente=c.id and c.id=2;
┌───────────┬────────────┬─────────────┬──────────┬──────────────┬────┬─────────────┬───────────────────┐
│ id_pedido │ id_cliente │ id_producto │ cantidad │ fecha_pedido │ id │   nombre    │       email       │
├───────────┼────────────┼─────────────┼──────────┼──────────────┼────┼─────────────┼───────────────────┤
│ 2         │ 2          │ 2           │ 1        │ 2024-02-02   │ 2  │ María Gómez │ maria@example.com │
└───────────┴────────────┴─────────────┴──────────┴──────────────┴────┴─────────────┴───────────────────┘

-- Obtener el precio mínimo de los productos.
SELECT *, MIN(precio) FROM Productos ;
┌────┬───────────────────────────────────┬────────┬─────────────┐
│ id │              nombre               │ precio │ MIN(precio) │
├────┼───────────────────────────────────┼────────┼─────────────┤
│ 22 │ Kit de Limpieza para Computadoras │ 9.99   │ 9.99        │
└────┴───────────────────────────────────┴────────┴─────────────┘

-- Obtener los clientes que han realizado al menos un pedido en febrero de 2024.
SELECT c.nombre,p.cantidad FROM Pedidos as p, Clientes as c WHERE p.id_cliente=c.id and cantidad>0;
┌─────────────────┬──────────┐
│     nombre      │ cantidad │
├─────────────────┼──────────┤
│ Juan Pérez      │ 2        │
│ María Gómez     │ 1        │
│ Carlos López    │ 3        │
│ Ana Rodríguez   │ 1        │
│ Luisa Martínez  │ 2        │
│ Pedro Sánchez   │ 1        │
│ Laura García    │ 3        │
│ Miguel Martín   │ 2        │
│ Elena González  │ 1        │
│ David Torres    │ 2        │
│ Sofía Ruiz      │ 1        │
│ Javier López    │ 3        │
│ Carmen Vargas   │ 1        │
│ Daniel Muñoz    │ 2        │
│ Isabel Serrano  │ 1        │
│ Alejandro Muñoz │ 3        │
│ Raquel Herrera  │ 2        │
│ Francisco Mora  │ 1        │
│ Marina Díaz     │ 2        │
│ Antonio Jiménez │ 1        │
│ Beatriz Romero  │ 3        │
│ Carlos Gómez    │ 1        │
│ Clara Sánchez   │ 2        │
│ Andrés Martínez │ 1        │
│ Lucía Díaz      │ 3        │
│ Mario Serrano   │ 2        │
│ Eva Torres      │ 1        │
│ Roberto Ruiz    │ 2        │
│ Celia García    │ 1        │
└─────────────────┴──────────┘

-- Obtener la fecha del último pedido realizado por el cliente con ID 3.
SELECT * FROM Pedidos as p, Clientes as c WHERE p.id_cliente=c.id and c.id=3 LIMIT 1;
┌───────────┬────────────┬─────────────┬──────────┬──────────────┬────┬──────────────┬────────────────────┐
│ id_pedido │ id_cliente │ id_producto │ cantidad │ fecha_pedido │ id │    nombre    │       email        │
├───────────┼────────────┼─────────────┼──────────┼──────────────┼────┼──────────────┼────────────────────┤
│ 3         │ 3          │ 3           │ 3        │ 2024-02-03   │ 3  │ Carlos López │ carlos@example.com │
└───────────┴────────────┴─────────────┴──────────┴──────────────┴────┴──────────────┴────────────────────┘


-- Obtener los productos que tienen una 'a' al final del nombre.
SELECT nombre FROM Productos where nombre REGEXP '[a]$';
┌────────────────────┐
│       nombre       │
├────────────────────┤
│ Impresora          │
│ Batería Externa    │
│ Tarjeta de Memoria │
└────────────────────┘

-- Obtener los clientes cuyos nombres tienen al menos 4 vocales (mayúsculas|minúsculas).
SELECT nombre FROM Clientes where nombre REGEXP '[aeiou]{4}';

-- Obtener los productos cuyo precio tenga al menos 4 números sin contrar los decimales.
SELECT precio from Productos WHERE precio REGEXP '[0-9]{4}';
┌────────┐
│ precio │
├────────┤
│ 1200.0 │
└────────┘

-- Obtener los clientes cuyos nombres tienen al menos una 'a' seguida de una 'e'.
SELECT nombre FROM Clientes WHERE nombre REGEXP 'ae';

-- Obtener los productos cuyos nombres terminan con una consonante.
SELECT nombre FROM Productos where nombre not REGEXP '[aeiouAEIOU]$';
┌───────────────────────────────────┐
│              nombre               │
├───────────────────────────────────┤
│ Laptop                            │
│ TV LED                            │
│ Tablet                            │
│ Auriculares Bluetooth             │
│ Cámara Digital                    │
│ Altavoces Inalámbricos            │
│ Monitor LED                       │
│ Mochila para Portátil             │
│ Lámpara LED                       │
│ Estuche para Auriculares          │
│ Kit de Limpieza para Computadoras │
│ Funda para Tablet                 │
│ Hub USB                           │
│ Webcam HD                         │
│ Funda para Laptop                 │
└───────────────────────────────────┘

-- Obtener los productos cuyos nombres empiezan con una vocal.
SELECT nombre FROM Productos where nombre REGEXP '^[AEIOU]';
┌──────────────────────────┐
│          nombre          │
├──────────────────────────┤
│ Auriculares Bluetooth    │
│ Impresora                │
│ Altavoces Inalámbricos   │
│ Estuche para Auriculares │
│ Adaptador HDMI           │
└──────────────────────────┘
