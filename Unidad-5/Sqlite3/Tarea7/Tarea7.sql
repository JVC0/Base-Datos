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


-- Encontrar el modelo de coche más caro que ha sido reparado al menos una vez.
  -- Cosas que debo de tener en cuenta:
    -- ¿Qué me están pidiendo?. MAX

-- Mostrar los clientes que han comprado al menos un coche (un coche o más) y la cantidad de coches comprados.
  -- Cosas que debo de tener en cuenta:
    -- ¿Qué me están pidiendo?. COUNT

-- Encontrar los clientes que han comprado coches de la marca 'Toyota':
  -- Cosas que debo de tener en cuenta:
    -- ¿Qué me están pidiendo?. Like | regexp | =. Tabla normalizada ?.

-- Calcular el promedio de edad de los clientes que han comprado coches de más de 25,000.
  -- Cosas que debo de tener en cuenta:
    -- ¿Qué me están pidiendo?. 

-- Mostrar los modelos de coches y sus precios que fueron comprados por clientes mayores de 30 años.
  -- Cosas que debo de tener en cuenta:
    -- ¿Qué me están pidiendo?.

-- Encontrar los coches vendidos en el año 2022 junto con la cantidad total de ventas en ese año.
  -- Cosas que debo de tener en cuenta:
    -- ¿Qué me están pidiendo?.

-- Listar los coches cuyos precios son mayores que el precio promedio de coches vendidos a clientes menores de 30 años.
  -- Cosas que debo de tener en cuenta:
    -- ¿Qué me están pidiendo?. AVG

-- Calcular el total de ventas por marca de coche, ordenado de forma descendente por el total de ventas:
  -- Cosas que debo de tener en cuenta:
    -- ¿Qué me están pidiendo?. COUNT| DESC|ASC precio