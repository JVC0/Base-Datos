-- Listar los coches vendidos con sus modelos y precios, junto con los nombres de los clientes que los compraron.
  -- Cosas que debo de tener en cuenta:modelo precios y nombre de los clientes
    -- ¿Qué me están pidiendo?. ¿Qué es lo que no me han pedido?
   
SELECT  cli.nombre,co.modelo,co.precio FROM clientes as cli , ventas as v , coches as co WHERE cli.id_cliente=v.id_cliente and v.id_coche=co.id_coche; 
┌─────────────────┬────────────────┬─────────┐
│     nombre      │     modelo     │ precio  │
├─────────────────┼────────────────┼─────────┤
│ Juan Pérez      │ Sedán 2022     │ 25000.0 │
│ María Gómez     │ Hatchback 2021 │ 22000.0 │
│ Carlos López    │ SUV 2023       │ 30000.0 │
│ Ana Martínez    │ Coupé 2022     │ 28000.0 │
│ Pedro Rodríguez │ Camioneta 2023 │ 32000.0 │
│ Laura Sánchez   │ Compacto 2021  │ 20000.0 │
│ Miguel González │ Híbrido 2022   │ 27000.0 │
│ Isabel Díaz     │ Deportivo 2023 │ 35000.0 │
│ Elena Torres    │ Eléctrico 2021 │ 40000.0 │
└─────────────────┴────────────────┴─────────┘

-- Encontrar los clientes que han comprado coches con precios superiores al promedio de todos los coches vendidos.
  -- Cosas que debo de tener en cuenta:precio, nombre cliene
    -- Precios superiores.
    -- Obtener la media. AVG(precio)
SELECT cli.nombre,co.precio FROM clientes as cli , ventas as v , coches as co WHERE cli.id_cliente=v.id_cliente and v.id_coche=co.id_coche and precio> (SELECT AVG(precio) FROM coches); 
┌─────────────────┬─────────┐
│     nombre      │ precio  │
├─────────────────┼─────────┤
│ Carlos López    │ 30000.0 │
│ Pedro Rodríguez │ 32000.0 │
│ Isabel Díaz     │ 35000.0 │
│ Elena Torres    │ 40000.0 │
└─────────────────┴─────────┘

-- Mostrar los modelos de coches y sus precios que no han sido vendidos aún:

  -- Cosas que debo de tener en cuenta: modelo de coche precio
    -- Coches que han sido vendidos.
    -- Quiero los coches que no han sido vendidos. NOT id_coche IN ventas
SELECT modelo, precio FROM coches WHERE id_coche not in (SELECT v.id_venta from ventas as v, coches as c WHERE c.id_coche=v.id_coche);   
┌────────────────┬─────────┐
│     modelo     │ precio  │
├────────────────┼─────────┤
│ Eléctrico 2021 │ 40000.0 │
└────────────────┴─────────┘

    
-- Calcular el total gastado por todos los clientes en coches:
  -- Cosas que debo de tener en cuenta:
    -- Me estan pidiendo la suma total de todos los coches vendidos, NO de aquellos que aún no se han vendido.
SELECT  SUM(co.precio) FROM clientes as cli , ventas as v , coches as co WHERE cli.id_cliente=v.id_cliente and v.id_coche=co.id_coche; 
┌────────────────┐
│ SUM(co.precio) │
├────────────────┤
│ 259000.0       │
└────────────────┘

-- Listar los coches vendidos junto con la fecha de venta y el nombre del cliente, ordenados por fecha de venta de forma descendente:
  -- Cosas que debo de tener en cuenta:
    -- ¿Qué me están pidiendo?. ¿Por qué campo tengo que ordenadar. Es uno o más campos?
SELECT  co.marca,v.fecha_venta,cli.nombre FROM clientes as cli , ventas as v , coches as co WHERE cli.id_cliente=v.id_cliente and v.id_coche=co.id_coche ORDER BY v.fecha_venta DESC; 
┌────────────┬─────────────┬─────────────────┐
│   marca    │ fecha_venta │     nombre      │
├────────────┼─────────────┼─────────────────┤
│ Tesla      │ 2023-10-05  │ Elena Torres    │
│ Mazda      │ 2023-08-25  │ Isabel Díaz     │
│ Hyundai    │ 2023-07-20  │ Miguel González │
│ Volkswagen │ 2023-06-15  │ Laura Sánchez   │
│ Nissan     │ 2023-05-05  │ Pedro Rodríguez │
│ Chevrolet  │ 2023-04-10  │ Ana Martínez    │
│ Ford       │ 2023-03-25  │ Carlos López    │
│ Honda      │ 2023-02-20  │ María Gómez     │
│ Toyota     │ 2023-01-15  │ Juan Pérez      │
└────────────┴─────────────┴─────────────────┘


-- Encontrar el modelo de coche más caro.
  -- Cosas que debo de tener en cuenta:
    -- ¿Qué me están pidiendo?. MAX
SELECT *,Max(precio) FROM  coches;
┌──────────┬────────────────┬───────┬──────┬─────────┬─────────────┐
│ id_coche │     modelo     │ marca │ año  │ precio  │ Max(precio) │
├──────────┼────────────────┼───────┼──────┼─────────┼─────────────┤
│ 10       │ Eléctrico 2021 │ Tesla │ 2021 │ 40000.0 │ 40000.0     │
└──────────┴────────────────┴───────┴──────┴─────────┴─────────────┘

-- Mostrar los clientes que han comprado al menos un coche (un coche o más) y la cantidad de coches comprados.
  -- Cosas que debo de tener en cuenta:
    -- ¿Qué me están pidiendo?. COUNT
SELECT  cli.*,Count(v.id_cliente) FROM clientes as cli , ventas as v  WHERE cli.id_cliente=v.id_cliente GROUP BY cli.id_cliente;
┌────────────┬─────────────────┬──────┬────────────────┬─────────────────────┐
│ id_cliente │     nombre      │ edad │   direccion    │ Count(v.id_cliente) │
├────────────┼─────────────────┼──────┼────────────────┼─────────────────────┤
│ 1          │ Juan Pérez      │ 30   │ Calle A #123   │ 1                   │
│ 2          │ María Gómez     │ 25   │ Avenida B #456 │ 1                   │
│ 3          │ Carlos López    │ 35   │ Calle C #789   │ 1                   │
│ 4          │ Ana Martínez    │ 28   │ Avenida D #101 │ 1                   │
│ 5          │ Pedro Rodríguez │ 40   │ Calle E #234   │ 1                   │
│ 6          │ Laura Sánchez   │ 32   │ Avenida F #567 │ 1                   │
│ 7          │ Miguel González │ 27   │ Calle G #890   │ 1                   │
│ 8          │ Isabel Díaz     │ 38   │ Avenida H #111 │ 1                   │
│ 10         │ Elena Torres    │ 29   │ Avenida J #333 │ 1                   │
└────────────┴─────────────────┴──────┴────────────────┴─────────────────────┘

-- Encontrar los clientes que han comprado coches de la marca 'Toyota':
  -- Cosas que debo de tener en cuenta:
    -- ¿Qué me están pidiendo?. Like | regexp | =. Tabla normalizada ?.
SELECT  cli.nombre,co.marca,co.precio FROM clientes as cli , ventas as v , coches as co WHERE cli.id_cliente=v.id_cliente and v.id_coche=co.id_coche and marca="Toyota";
┌────────────┬────────┬─────────┐
│   nombre   │ marca  │ precio  │
├────────────┼────────┼─────────┤
│ Juan Pérez │ Toyota │ 25000.0 │
└────────────┴────────┴─────────┘

-- Calcular el promedio de edad de los clientes que han comprado coches de más de 25,000.
  -- Cosas que debo de tener en cuenta:
    -- ¿Qué me están pidiendo?. 
SELECT AVG(co.precio) FROM clientes as cli , ventas as v , coches as co WHERE cli.id_cliente=v.id_cliente and v.id_coche=co.id_coche and co.precio >25000; 
┌────────────────┐
│ AVG(co.precio) │
├────────────────┤
│ 32000.0        │
└────────────────┘

-- Mostrar los modelos de coches y sus precios que fueron comprados por clientes mayores de 30 años.
  -- Cosas que debo de tener en cuenta:
    -- ¿Qué me están pidiendo?.
SELECT co.modelo,co.precio,cli.nombre FROM clientes as cli , ventas as v , coches as co WHERE cli.id_cliente=v.id_cliente and v.id_coche=co.id_coche and cli.edad>30;
┌────────────────┬─────────┬─────────────────┐
│     modelo     │ precio  │     nombre      │
├────────────────┼─────────┼─────────────────┤
│ SUV 2023       │ 30000.0 │ Carlos López    │
│ Camioneta 2023 │ 32000.0 │ Pedro Rodríguez │
│ Compacto 2021  │ 20000.0 │ Laura Sánchez   │
│ Deportivo 2023 │ 35000.0 │ Isabel Díaz     │
└────────────────┴─────────┴─────────────────┘

-- Encontrar los coches vendidos en el año 2022 junto con la cantidad total de ventas en ese año.
  -- Cosas que debo de tener en cuenta:
    -- ¿Qué me están pidiendo?.
SELECT  cli.*,Count(v.id_cliente) FROM clientes as cli , ventas as v  WHERE cli.id_cliente=v.id_cliente and v.fecha_venta regexp '^2022'GROUP BY cli.id_cliente;
-- Listar los coches cuyos precios son mayores que el precio promedio de coches vendidos a clientes menores de 30 años.
  -- Cosas que debo de tener en cuenta:
    -- ¿Qué me están pidiendo?. AVG
SELECT * FROM coches WHERE precio > (SELECT avg(c.precio) from ventas as v, coches as c, clientes as cli WHERE c.id_coche=v.id_coche and cli.edad<30);
┌──────────┬────────────────┬────────┬──────┬─────────┐
│ id_coche │     modelo     │ marca  │ año  │ precio  │
├──────────┼────────────────┼────────┼──────┼─────────┤
│ 3        │ SUV 2023       │ Ford   │ 2023 │ 30000.0 │
│ 5        │ Camioneta 2023 │ Nissan │ 2023 │ 32000.0 │
│ 8        │ Deportivo 2023 │ Mazda  │ 2023 │ 35000.0 │
│ 9        │ Pickup 2022    │ Ram    │ 2022 │ 31000.0 │
│ 10       │ Eléctrico 2021 │ Tesla  │ 2021 │ 40000.0 │
└──────────┴────────────────┴────────┴──────┴─────────┘

-- Calcular el total de ventas por marca de coche, ordenado de forma descendente por el total de ventas:
  -- Cosas que debo de tener en cuenta:
    -- ¿Qué me están pidiendo?. COUNT| DESC|ASC precio
    SELECT  c.*,Count(v.id_coche) FROM coches as c , ventas as v  WHERE c.id_coche=v.id_coche GROUP BY c.id_coche;
┌──────────┬────────────────┬────────────┬──────┬─────────┬───────────────────┐
│ id_coche │     modelo     │   marca    │ año  │ precio  │ Count(v.id_coche) │
├──────────┼────────────────┼────────────┼──────┼─────────┼───────────────────┤
│ 1        │ Sedán 2022     │ Toyota     │ 2022 │ 25000.0 │ 1                 │
│ 2        │ Hatchback 2021 │ Honda      │ 2021 │ 22000.0 │ 1                 │
│ 3        │ SUV 2023       │ Ford       │ 2023 │ 30000.0 │ 1                 │
│ 4        │ Coupé 2022     │ Chevrolet  │ 2022 │ 28000.0 │ 1                 │
│ 5        │ Camioneta 2023 │ Nissan     │ 2023 │ 32000.0 │ 1                 │
│ 6        │ Compacto 2021  │ Volkswagen │ 2021 │ 20000.0 │ 1                 │
│ 7        │ Híbrido 2022   │ Hyundai    │ 2022 │ 27000.0 │ 1                 │
│ 8        │ Deportivo 2023 │ Mazda      │ 2023 │ 35000.0 │ 1                 │
│ 10       │ Eléctrico 2021 │ Tesla      │ 2021 │ 40000.0 │ 1                 │
└──────────┴────────────────┴────────────┴──────┴─────────┴───────────────────┘
