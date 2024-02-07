-- Consulta para obtener el nombre y la edad de los clientes que han comprado coches de la marca Toyota.
SELECT  cli.nombre,co.marca,co.precio FROM clientes as cli , ventas as v , coches as co WHERE cli.id_cliente=v.id_cliente and v.id_coche=co.id_coche and marca="Toyota";
┌────────────┬────────┬─────────┐
│   nombre   │ marca  │ precio  │
├────────────┼────────┼─────────┤
│ Juan Pérez │ Toyota │ 25000.0 │
└────────────┴────────┴─────────┘

-- Consulta para calcular el precio promedio de los coches vendidos.
SELECT AVG(co.precio) FROM clientes as cli , ventas as v , coches as co WHERE cli.id_cliente=v.id_cliente and v.id_coche=co.id_coche ; 
┌──────────────────┐
│  AVG(co.precio)  │
├──────────────────┤
│ 28777.7777777778 │
└──────────────────┘

-- Consulta para obtener el modelo y la marca de los coches vendidos a clientes menores de 30 años.
SELECT co.modelo,co.marca FROM clientes as cli , ventas as v , coches as co WHERE cli.id_cliente=v.id_cliente and v.id_coche=co.id_coche and cli.edad<30; 
┌────────────────┬───────────┐
│     modelo     │   marca   │
├────────────────┼───────────┤
│ Hatchback 2021 │ Honda     │
│ Coupé 2022     │ Chevrolet │
│ Híbrido 2022   │ Hyundai   │
│ Eléctrico 2021 │ Tesla     │
└────────────────┴───────────┘

-- Consulta para contar el número de coches vendidos de cada marca.
SELECT co.marca,count(co.id_coche)as coches_vendidos FROM coches as co WHERE  v.id_coche=co.id_coche GROUP BY co.marca ;
┌────────────┬─────────────────┐
│   marca    │ coches_vendidos │
├────────────┼─────────────────┤
│ Chevrolet  │ 1               │
│ Ford       │ 1               │
│ Honda      │ 1               │
│ Hyundai    │ 1               │
│ Mazda      │ 1               │
│ Nissan     │ 1               │
│ Tesla      │ 1               │
│ Toyota     │ 1               │
│ Volkswagen │ 1               │
└────────────┴─────────────────┘

-- Consulta para obtener el nombre y la dirección de los clientes que han llevado a reparar sus coches en 2024.
SELECT cli.nombre, cli.direccion from clientes as cli, reparacion as r WHERE cli.id_cliente=r.id_cliente and r.fecha_reparación  regexp '2024';
┌─────────────────┬────────────────┐
│     nombre      │   direccion    │
├─────────────────┼────────────────┤
│ Francisco Ruiz  │ Calle I #222   │
│ Elena Torres    │ Avenida J #333 │
│ Juan Pérez      │ Calle A #123   │
│ María Gómez     │ Avenida B #456 │
│ Carlos López    │ Calle C #789   │
│ Ana Martínez    │ Avenida D #101 │
│ Pedro Rodríguez │ Calle E #234   │
│ Laura Sánchez   │ Avenida F #567 │
│ Miguel González │ Calle G #890   │
│ Isabel Díaz     │ Avenida H #111 │
│ Francisco Ruiz  │ Calle I #222   │
│ Elena Torres    │ Avenida J #333 │
└─────────────────┴────────────────┘


-- Consulta para calcular el total gastado en reparaciones por cada cliente.


-- Consulta para obtener el nombre y la edad de los clientes que han comprado coches de más de 30000 euros.
SELECT cli.nombre,cli.edad FROM clientes as cli , ventas as v , coches as co WHERE cli.id_cliente=v.id_cliente and v.id_coche=co.id_coche and co.precio >30000; 
┌─────────────────┬──────┐
│     nombre      │ edad │
├─────────────────┼──────┤
│ Pedro Rodríguez │ 40   │
│ Isabel Díaz     │ 38   │
│ Elena Torres    │ 29   │
└─────────────────┴──────┘
 
-- Consulta para calcular el precio medio de los coches vendidos en 2023.
SELECT avg(c.precio)as promedio FROM coches as c, ventas as v,clientes as cli WHERE c.id_coche=v.id_coche and v.id_coche=c.id_coche and v.fecha_venta REGEXP '2023';
┌──────────────────┐
│     promedio     │
├──────────────────┤
│ 28777.7777777778 │
└──────────────────┘

-- Consulta para obtener el nombre y la dirección de los clientes que han comprado coches de la marca Ford.
SELECT cli.nombre,cli.direccion,c.marca FROM coches as c, ventas as v,clientes as cli WHERE c.id_coche=v.id_coche and v.id_coche=c.id_coche and c.marca = 'Ford';
┌─────────────────┬────────────────┬───────┐
│     nombre      │   direccion    │ marca │
├─────────────────┼────────────────┼───────┤
│ Juan Pérez      │ Calle A #123   │ Ford  │
│ María Gómez     │ Avenida B #456 │ Ford  │
│ Carlos López    │ Calle C #789   │ Ford  │
│ Ana Martínez    │ Avenida D #101 │ Ford  │
│ Pedro Rodríguez │ Calle E #234   │ Ford  │
│ Laura Sánchez   │ Avenida F #567 │ Ford  │
│ Miguel González │ Calle G #890   │ Ford  │
│ Isabel Díaz     │ Avenida H #111 │ Ford  │
│ Francisco Ruiz  │ Calle I #222   │ Ford  │
│ Elena Torres    │ Avenida J #333 │ Ford  │
└─────────────────┴────────────────┴───────┘

-- Consulta para contar el número de coches vendidos por año.
select substr(fecha_venta, 1, 4) as año, count(id_coche) as coches_por_anyo from ventas group by año;
┌──────┬─────────────────┐
│ año  │ coches_por_anyo │
├──────┼─────────────────┤
│ 2023 │ 9               │
└──────┴─────────────────┘

-- Consulta para obtener el nombre y la edad de los clientes que han comprado coches de más de 30000 euros y llevado a reparar sus coches.
SELECT cli.nombre,cli.edad FROM clientes as cli , ventas as v , coches as co,reparacion as r WHERE cli.id_cliente=v.id_cliente and v.id_coche=co.id_coche and co.id_coche=r.id_coche and cli.id_cliente=r.id_cliente and co.precio >30000;
┌──────────────┬──────┐
│    nombre    │ edad │
├──────────────┼──────┤
│ Isabel Díaz  │ 38   │
│ Elena Torres │ 29   │
└──────────────┴──────┘

-- Consulta para calcular el precio total de los coches vendidos a clientes menores de 30 años.
SELECT sum(co.precio) FROM clientes as cli , ventas as v , coches as co WHERE cli.id_cliente=v.id_cliente and v.id_coche=co.id_coche and cli.edad<30; 
┌────────────────┐
│ sum(co.precio) │
├────────────────┤
│ 117000.0       │
└────────────────┘
 
-- Consulta para obtener el modelo y el año de los coches vendidos en 2023 y llevados a reparar.
select c.modelo,v.fecha_venta from coches as c, ventas as v WHERE c.id_coche=v.id_coche and v.fecha_venta regexp '2023';
┌────────────────┬─────────────┐
│     modelo     │ fecha_venta │
├────────────────┼─────────────┤
│ Sedán 2022     │ 2023-01-15  │
│ Hatchback 2021 │ 2023-02-20  │
│ SUV 2023       │ 2023-03-25  │
│ Coupé 2022     │ 2023-04-10  │
│ Camioneta 2023 │ 2023-05-05  │
│ Compacto 2021  │ 2023-06-15  │
│ Híbrido 2022   │ 2023-07-20  │
│ Deportivo 2023 │ 2023-08-25  │
│ Eléctrico 2021 │ 2023-10-05  │
└────────────────┴─────────────┘

-- Consulta para contar el número de coches vendidos por cliente.
select cli.nombre,count(v.id_cliente) from clientes as cli , ventas as v WHERE cli.id_cliente=v.id_cliente group by cli.nombre;
┌─────────────────┬─────────────────────┐
│     nombre      │ count(v.id_cliente) │
├─────────────────┼─────────────────────┤
│ Ana Martínez    │ 1                   │
│ Carlos López    │ 1                   │
│ Elena Torres    │ 1                   │
│ Isabel Díaz     │ 1                   │
│ Juan Pérez      │ 1                   │
│ Laura Sánchez   │ 1                   │
│ María Gómez     │ 1                   │
│ Miguel González │ 1                   │
│ Pedro Rodríguez │ 1                   │
└─────────────────┴─────────────────────┘

-- Consulta para obtener el nombre y el precio de los coches vendidos a clientes mayores de 35 años. 
SELECT cli.nombre,co.precio FROM clientes as cli , ventas as v , coches as co WHERE cli.id_cliente=v.id_cliente and v.id_coche=co.id_coche and cli.edad<35; 
┌─────────────────┬─────────┐
│     nombre      │ precio  │
├─────────────────┼─────────┤
│ Juan Pérez      │ 25000.0 │
│ María Gómez     │ 22000.0 │
│ Ana Martínez    │ 28000.0 │
│ Laura Sánchez   │ 20000.0 │
│ Miguel González │ 27000.0 │
│ Elena Torres    │ 40000.0 │
└─────────────────┴─────────┘

-- Consulta para calcular el precio total de los coches vendidos a clientes que viven en una calle (en la dirección).
SELECT sum(co.precio) FROM clientes as cli , ventas as v , coches as co WHERE cli.id_cliente=v.id_cliente and v.id_coche=co.id_coche and cli.direccion regexp 'Calle';
┌────────────────┐
│ sum(co.precio) │
├────────────────┤
│ 114000.0       │
└────────────────┘

-- Consulta para obtener el nombre y la dirección de los clientes que han comprado coches de más de 30000 euros y llevado a reparar sus coches en 2024.
SELECT cli.nombre,cli.direccion,r.fecha_reparación,co.precio FROM clientes as cli , ventas as v , coches as co,reparacion as r WHERE cli.id_cliente=v.id_cliente and v.id_coche=co.id_coche and co.id_coche=r.id_coche and cli.id_cliente=r.id_cliente and co.precio >30000 and r.fecha_reparación regexp '2024';
┌──────────────┬────────────────┬──────────────────┬─────────┐
│    nombre    │   direccion    │ fecha_reparación │ precio  │
├──────────────┼────────────────┼──────────────────┼─────────┤
│ Elena Torres │ Avenida J #333 │ 2024-02-10       │ 40000.0 │
└──────────────┴────────────────┴──────────────────┴─────────┘

-- Consulta para calcular el precio medio de los coches vendidos en 2023 y llevados a reparar por clientes menores de 30 años.
SELECT avg(co.precio) FROM clientes as cli , ventas as v , coches as co,reparacion as r WHERE cli.id_cliente=v.id_cliente and v.id_coche=co.id_coche and co.id_coche=r.id_coche and cli.id_cliente=r.id_cliente and cli.edad<30;
┌────────────────┐
│ avg(co.precio) │
├────────────────┤
│ 31000.0        │
└────────────────┘

-- Consulta para obtener el modelo y el año de los coches vendidos por clientes que tienen una dirección que contiene la palabra "Avenida".
SELECT co.modelo,co.año FROM clientes as cli , ventas as v , coches as co WHERE cli.id_cliente=v.id_cliente and v.id_coche=co.id_coche and cli.direccion regexp 'Avenida';
┌────────────────┬──────┐
│     modelo     │ año  │
├────────────────┼──────┤
│ Hatchback 2021 │ 2021 │
│ Coupé 2022     │ 2022 │
│ Compacto 2021  │ 2021 │
│ Deportivo 2023 │ 2023 │
│ Eléctrico 2021 │ 2021 │
└────────────────┴──────┘
-- Consulta para contar el número de reparaciones realizadas en 2024 por cada cliente.
select clientes.id_cliente, clientes.nombre, count(reparacion.id_cliente) as cantidad_reparaciones from reparacion, clientes where clientes.id_cliente=reparacion.id_cliente group by clientes.id_cliente;
┌────────────┬─────────────────┬───────────────────────┐
│ id_cliente │     nombre      │ cantidad_reparaciones │
├────────────┼─────────────────┼───────────────────────┤
│ 1          │ Juan Pérez      │ 2                     │
│ 2          │ María Gómez     │ 2                     │
│ 3          │ Carlos López    │ 2                     │
│ 4          │ Ana Martínez    │ 2                     │
│ 5          │ Pedro Rodríguez │ 2                     │
│ 6          │ Laura Sánchez   │ 2                     │
│ 7          │ Miguel González │ 2                     │
│ 8          │ Isabel Díaz     │ 2                     │
│ 9          │ Francisco Ruiz  │ 2                     │
│ 10         │ Elena Torres    │ 2                     │
└────────────┴─────────────────┴───────────────────────┘
