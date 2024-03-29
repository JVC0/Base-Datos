Consultas sobre una tabla
--Devuelve un listado con todos los pedidos que se han realizado. Los pedidos deben estar ordenados por la fecha de realización, mostrando en primer lugar los pedidos más recientes.
SELECT * FROM pedido ORDER by fecha DESC;
┌────┬─────────┬────────────┬────────────┬──────────────┐
│ id │  total  │   fecha    │ id_cliente │ id_comercial │
├────┼─────────┼────────────┼────────────┼──────────────┤
│ 15 │ 370.85  │ 2019-03-11 │ 1          │ 5            │
│ 16 │ 2389.23 │ 2019-03-11 │ 1          │ 5            │
│ 13 │ 545.75  │ 2019-01-25 │ 6          │ 1            │
│ 8  │ 1983.43 │ 2017-10-10 │ 4          │ 6            │
│ 1  │ 150.5   │ 2017-10-05 │ 5          │ 2            │
│ 3  │ 65.26   │ 2017-10-05 │ 2          │ 1            │
│ 5  │ 948.5   │ 2017-09-10 │ 5          │ 2            │
│ 12 │ 3045.6  │ 2017-04-25 │ 2          │ 1            │
│ 14 │ 145.82  │ 2017-02-02 │ 6          │ 1            │
│ 9  │ 2480.4  │ 2016-10-10 │ 8          │ 3            │
│ 2  │ 270.65  │ 2016-09-10 │ 1          │ 5            │
│ 4  │ 110.5   │ 2016-08-17 │ 8          │ 3            │
│ 11 │ 75.29   │ 2016-08-17 │ 3          │ 7            │
│ 6  │ 2400.6  │ 2016-07-27 │ 7          │ 1            │
│ 7  │ 5760.0  │ 2015-09-10 │ 2          │ 1            │
│ 10 │ 250.45  │ 2015-06-27 │ 8          │ 2            │
└────┴─────────┴────────────┴────────────┴──────────────┘

--Devuelve todos los datos de los dos pedidos de mayor valor.
SELECT * FROM pedido ORDER BY total DESC LIMIT 2;
┌────┬────────┬────────────┬────────────┬──────────────┐
│ id │ total  │   fecha    │ id_cliente │ id_comercial │
├────┼────────┼────────────┼────────────┼──────────────┤
│ 7  │ 5760.0 │ 2015-09-10 │ 2          │ 1            │
│ 12 │ 3045.6 │ 2017-04-25 │ 2          │ 1            │
└────┴────────┴────────────┴────────────┴──────────────┘

--Devuelve un listado con los identificadores de los clientes que han realizado algún pedido. Tenga en cuenta que no debe mostrar identificadores que estén repetidos.
SELECT id_cliente from pedido GROUP by id_cliente ;
┌────────────┐
│ id_cliente │
├────────────┤
│ 1          │
│ 2          │
│ 3          │
│ 4          │
│ 5          │
│ 6          │
│ 7          │
│ 8          │
└────────────┘

--Devuelve un listado de todos los pedidos que se realizaron durante el año 2017, cuya cantidad total sea superior a 500€.
SELECT * FROM  pedido WHERE fecha REGEXP '2017-' and total>500;
┌────┬─────────┬────────────┬────────────┬──────────────┐
│ id │  total  │   fecha    │ id_cliente │ id_comercial │
├────┼─────────┼────────────┼────────────┼──────────────┤
│ 5  │ 948.5   │ 2017-09-10 │ 5          │ 2            │
│ 8  │ 1983.43 │ 2017-10-10 │ 4          │ 6            │
│ 12 │ 3045.6  │ 2017-04-25 │ 2          │ 1            │
└────┴─────────┴────────────┴────────────┴──────────────┘

--Devuelve un listado con el nombre y los apellidos de los comerciales que tienen una comisión entre 0.05 y 0.11.
SELECT nombre,apellido1,apellido2 FROM  comercial WHERE categoria>.05 and categoria <.11;

--Devuelve el valor de la comisión de mayor valor que existe en la tabla comercial.
SELECT max(categoria) FROM  comercial ;
┌────────────────┐
│ max(categoria) │
├────────────────┤
│ 0.15           │
└────────────────┘

--Devuelve el identificador, nombre y primer apellido de aquellos clientes cuyo segundo apellido no es NULL. El listado deberá estar ordenado alfabéticamente por apellidos y nombre.
SELECT id, nombre, apellido1 FROM  cliente WHERE apellido2 not NULL ORDER by nombre;
┌────┬───────────┬───────────┐
│ id │  nombre   │ apellido1 │
├────┼───────────┼───────────┤
│ 1  │ Aarón     │ Rivero    │
│ 2  │ Adela     │ Salas     │
│ 3  │ Adolfo    │ Rubio     │
│ 10 │ Daniel    │ Santana   │
│ 9  │ Guillermo │ López     │
│ 5  │ Marcos    │ Loyola    │
│ 6  │ María     │ Santana   │
│ 8  │ Pepe      │ Ruiz      │
└────┴───────────┴───────────┘

--Devuelve un listado de los nombres de los clientes que empiezan por A y terminan por n y también los nombres que empiezan por P. El listado deberá estar ordenado alfabéticamente.
SELECT nombre from cliente where nombre REGEXP '^A' or nombre REGEXP 'n$' or nombre REGEXP '^P';
┌────────┐
│ nombre │
├────────┤
│ Aarón  │
│ Adela  │
│ Adolfo │
│ Adrián │
│ Pilar  │
│ Pepe   │
└────────┘

--Devuelve un listado de los nombres de los clientes que no empiezan por A. El listado deberá estar ordenado alfabéticamente.
SELECT nombre from cliente where nombre not REGEXP '^A';
┌───────────┐
│  nombre   │
├───────────┤
│ Marcos    │
│ María     │
│ Pilar     │
│ Pepe      │
│ Guillermo │
│ Daniel    │
└───────────┘

--Devuelve un listado con los nombres de los comerciales que terminan por el o o. Tenga en cuenta que se deberán eliminar los nombres repetidos.
SELECT nombre FROM  comercial where nombre REGEXP 'o$'or nombre REGEXP 'el' group by nombre;
┌─────────┐
│ nombre  │
├─────────┤
│ Alfredo │
│ Antonio │
│ Daniel  │
│ Diego   │
│ Manuel  │
└─────────┘

Consultas multitabla
Nota: Resuelva todas las consultas utilizando las cláusulas INNER JOIN.

--Devuelve un listado con el identificador, nombre y los apellidos de todos los clientes que han realizado algún pedido. El listado debe estar ordenado alfabéticamente y se deben eliminar los elementos repetidos.
SELECT c.id,c.nombre,c.apellido1,c.apellido2 FROM  cliente as c join pedido as p on c.id=p.id_cliente GROUP BY c.nombre ORDER BY c.nombre;
┌────┬────────┬───────────┬───────────┐
│ id │ nombre │ apellido1 │ apellido2 │
├────┼────────┼───────────┼───────────┤
│ 1  │ Aarón  │ Rivero    │ Gómez     │
│ 2  │ Adela  │ Salas     │ Díaz      │
│ 3  │ Adolfo │ Rubio     │ Flores    │
│ 4  │ Adrián │ Suárez    │           │
│ 5  │ Marcos │ Loyola    │ Méndez    │
│ 6  │ María  │ Santana   │ Moreno    │
│ 8  │ Pepe   │ Ruiz      │ Santana   │
│ 7  │ Pilar  │ Ruiz      │           │
└────┴────────┴───────────┴───────────┘

--Devuelve un listado que muestre todos los pedidos que ha realizado cada cliente. El resultado debe mostrar todos los datos de los pedidos y del cliente. El listado debe mostrar los datos de los clientes ordenados alfabéticamente.
SELECT c.*,p.* FROM  cliente as c join pedido as p on c.id=p.id_cliente  ORDER BY c.nombre;
┌────┬────────┬───────────┬───────────┬─────────┬───────────┬────┬─────────┬────────────┬────────────┬──────────────┐
│ id │ nombre │ apellido1 │ apellido2 │ ciudad  │ categoria │ id │  total  │   fecha    │ id_cliente │ id_comercial │
├────┼────────┼───────────┼───────────┼─────────┼───────────┼────┼─────────┼────────────┼────────────┼──────────────┤
│ 1  │ Aarón  │ Rivero    │ Gómez     │ Almería │ 100       │ 2  │ 270.65  │ 2016-09-10 │ 1          │ 5            │
│ 1  │ Aarón  │ Rivero    │ Gómez     │ Almería │ 100       │ 15 │ 370.85  │ 2019-03-11 │ 1          │ 5            │
│ 1  │ Aarón  │ Rivero    │ Gómez     │ Almería │ 100       │ 16 │ 2389.23 │ 2019-03-11 │ 1          │ 5            │
│ 2  │ Adela  │ Salas     │ Díaz      │ Granada │ 200       │ 3  │ 65.26   │ 2017-10-05 │ 2          │ 1            │
│ 2  │ Adela  │ Salas     │ Díaz      │ Granada │ 200       │ 7  │ 5760.0  │ 2015-09-10 │ 2          │ 1            │
│ 2  │ Adela  │ Salas     │ Díaz      │ Granada │ 200       │ 12 │ 3045.6  │ 2017-04-25 │ 2          │ 1            │
│ 3  │ Adolfo │ Rubio     │ Flores    │ Sevilla │           │ 11 │ 75.29   │ 2016-08-17 │ 3          │ 7            │
│ 4  │ Adrián │ Suárez    │           │ Jaén    │ 300       │ 8  │ 1983.43 │ 2017-10-10 │ 4          │ 6            │
│ 5  │ Marcos │ Loyola    │ Méndez    │ Almería │ 200       │ 1  │ 150.5   │ 2017-10-05 │ 5          │ 2            │
│ 5  │ Marcos │ Loyola    │ Méndez    │ Almería │ 200       │ 5  │ 948.5   │ 2017-09-10 │ 5          │ 2            │
│ 6  │ María  │ Santana   │ Moreno    │ Cádiz   │ 100       │ 13 │ 545.75  │ 2019-01-25 │ 6          │ 1            │
│ 6  │ María  │ Santana   │ Moreno    │ Cádiz   │ 100       │ 14 │ 145.82  │ 2017-02-02 │ 6          │ 1            │
│ 8  │ Pepe   │ Ruiz      │ Santana   │ Huelva  │ 200       │ 4  │ 110.5   │ 2016-08-17 │ 8          │ 3            │
│ 8  │ Pepe   │ Ruiz      │ Santana   │ Huelva  │ 200       │ 9  │ 2480.4  │ 2016-10-10 │ 8          │ 3            │
│ 8  │ Pepe   │ Ruiz      │ Santana   │ Huelva  │ 200       │ 10 │ 250.45  │ 2015-06-27 │ 8          │ 2            │
│ 7  │ Pilar  │ Ruiz      │           │ Sevilla │ 300       │ 6  │ 2400.6  │ 2016-07-27 │ 7          │ 1            │
└────┴────────┴───────────┴───────────┴─────────┴───────────┴────┴─────────┴────────────┴────────────┴──────────────┘

--Devuelve un listado que muestre todos los pedidos en los que ha participado un comercial. El resultado debe mostrar todos los datos de los pedidos y de los comerciales. El listado debe mostrar los datos de los comerciales ordenados alfabéticamente.
SELECT p.*,c.* from pedido as p join comercial as c on c.id=p.id_comercial ORDER by c.nombre;
┌────┬─────────┬────────────┬────────────┬──────────────┬────┬─────────┬───────────┬───────────┬───────────┐
│ id │  total  │   fecha    │ id_cliente │ id_comercial │ id │ nombre  │ apellido1 │ apellido2 │ categoria │
├────┼─────────┼────────────┼────────────┼──────────────┼────┼─────────┼───────────┼───────────┼───────────┤
│ 2  │ 270.65  │ 2016-09-10 │ 1          │ 5            │ 5  │ Antonio │ Carretero │ Ortega    │ 0.12      │
│ 11 │ 75.29   │ 2016-08-17 │ 3          │ 7            │ 7  │ Antonio │ Vega      │ Hernández │ 0.11      │
│ 15 │ 370.85  │ 2019-03-11 │ 1          │ 5            │ 5  │ Antonio │ Carretero │ Ortega    │ 0.12      │
│ 16 │ 2389.23 │ 2019-03-11 │ 1          │ 5            │ 5  │ Antonio │ Carretero │ Ortega    │ 0.12      │
│ 3  │ 65.26   │ 2017-10-05 │ 2          │ 1            │ 1  │ Daniel  │ Sáez      │ Vega      │ 0.15      │
│ 6  │ 2400.6  │ 2016-07-27 │ 7          │ 1            │ 1  │ Daniel  │ Sáez      │ Vega      │ 0.15      │
│ 7  │ 5760.0  │ 2015-09-10 │ 2          │ 1            │ 1  │ Daniel  │ Sáez      │ Vega      │ 0.15      │
│ 12 │ 3045.6  │ 2017-04-25 │ 2          │ 1            │ 1  │ Daniel  │ Sáez      │ Vega      │ 0.15      │
│ 13 │ 545.75  │ 2019-01-25 │ 6          │ 1            │ 1  │ Daniel  │ Sáez      │ Vega      │ 0.15      │
│ 14 │ 145.82  │ 2017-02-02 │ 6          │ 1            │ 1  │ Daniel  │ Sáez      │ Vega      │ 0.15      │
│ 4  │ 110.5   │ 2016-08-17 │ 8          │ 3            │ 3  │ Diego   │ Flores    │ Salas     │ 0.11      │
│ 9  │ 2480.4  │ 2016-10-10 │ 8          │ 3            │ 3  │ Diego   │ Flores    │ Salas     │ 0.11      │
│ 1  │ 150.5   │ 2017-10-05 │ 5          │ 2            │ 2  │ Juan    │ Gómez     │ López     │ 0.13      │
│ 5  │ 948.5   │ 2017-09-10 │ 5          │ 2            │ 2  │ Juan    │ Gómez     │ López     │ 0.13      │
│ 10 │ 250.45  │ 2015-06-27 │ 8          │ 2            │ 2  │ Juan    │ Gómez     │ López     │ 0.13      │
│ 8  │ 1983.43 │ 2017-10-10 │ 4          │ 6            │ 6  │ Manuel  │ Domínguez │ Hernández │ 0.13      │
└────┴─────────┴────────────┴────────────┴──────────────┴────┴─────────┴───────────┴───────────┴───────────┘
--Devuelve un listado que muestre todos los clientes, con todos los pedidos que han realizado y con los datos de los comerciales asociados a cada pedido.
SELECT cl.*,p.*,co.* from pedido as p join comercial as co on co.id=p.id_comercial join cliente as cl on cl.id=p.id_cliente;
┌────┬────────┬───────────┬───────────┬─────────┬───────────┬────┬─────────┬────────────┬────────────┬──────────────┬────┬─────────┬───────────┬───────────┬───────────┐
│ id │ nombre │ apellido1 │ apellido2 │ ciudad  │ categoria │ id │  total  │   fecha    │ id_cliente │ id_comercial │ id │ nombre  │ apellido1 │ apellido2 │ categoria │
├────┼────────┼───────────┼───────────┼─────────┼───────────┼────┼─────────┼────────────┼────────────┼──────────────┼────┼─────────┼───────────┼───────────┼───────────┤
│ 5  │ Marcos │ Loyola    │ Méndez    │ Almería │ 200       │ 1  │ 150.5   │ 2017-10-05 │ 5          │ 2            │ 2  │ Juan    │ Gómez     │ López     │ 0.13      │
│ 1  │ Aarón  │ Rivero    │ Gómez     │ Almería │ 100       │ 2  │ 270.65  │ 2016-09-10 │ 1          │ 5            │ 5  │ Antonio │ Carretero │ Ortega    │ 0.12      │
│ 2  │ Adela  │ Salas     │ Díaz      │ Granada │ 200       │ 3  │ 65.26   │ 2017-10-05 │ 2          │ 1            │ 1  │ Daniel  │ Sáez      │ Vega      │ 0.15      │
│ 8  │ Pepe   │ Ruiz      │ Santana   │ Huelva  │ 200       │ 4  │ 110.5   │ 2016-08-17 │ 8          │ 3            │ 3  │ Diego   │ Flores    │ Salas     │ 0.11      │
│ 5  │ Marcos │ Loyola    │ Méndez    │ Almería │ 200       │ 5  │ 948.5   │ 2017-09-10 │ 5          │ 2            │ 2  │ Juan    │ Gómez     │ López     │ 0.13      │
│ 7  │ Pilar  │ Ruiz      │           │ Sevilla │ 300       │ 6  │ 2400.6  │ 2016-07-27 │ 7          │ 1            │ 1  │ Daniel  │ Sáez      │ Vega      │ 0.15      │
│ 2  │ Adela  │ Salas     │ Díaz      │ Granada │ 200       │ 7  │ 5760.0  │ 2015-09-10 │ 2          │ 1            │ 1  │ Daniel  │ Sáez      │ Vega      │ 0.15      │
│ 4  │ Adrián │ Suárez    │           │ Jaén    │ 300       │ 8  │ 1983.43 │ 2017-10-10 │ 4          │ 6            │ 6  │ Manuel  │ Domínguez │ Hernández │ 0.13      │
│ 8  │ Pepe   │ Ruiz      │ Santana   │ Huelva  │ 200       │ 9  │ 2480.4  │ 2016-10-10 │ 8          │ 3            │ 3  │ Diego   │ Flores    │ Salas     │ 0.11      │
│ 8  │ Pepe   │ Ruiz      │ Santana   │ Huelva  │ 200       │ 10 │ 250.45  │ 2015-06-27 │ 8          │ 2            │ 2  │ Juan    │ Gómez     │ López     │ 0.13      │
│ 3  │ Adolfo │ Rubio     │ Flores    │ Sevilla │           │ 11 │ 75.29   │ 2016-08-17 │ 3          │ 7            │ 7  │ Antonio │ Vega      │ Hernández │ 0.11      │
│ 2  │ Adela  │ Salas     │ Díaz      │ Granada │ 200       │ 12 │ 3045.6  │ 2017-04-25 │ 2          │ 1            │ 1  │ Daniel  │ Sáez      │ Vega      │ 0.15      │
│ 6  │ María  │ Santana   │ Moreno    │ Cádiz   │ 100       │ 13 │ 545.75  │ 2019-01-25 │ 6          │ 1            │ 1  │ Daniel  │ Sáez      │ Vega      │ 0.15      │
│ 6  │ María  │ Santana   │ Moreno    │ Cádiz   │ 100       │ 14 │ 145.82  │ 2017-02-02 │ 6          │ 1            │ 1  │ Daniel  │ Sáez      │ Vega      │ 0.15      │
│ 1  │ Aarón  │ Rivero    │ Gómez     │ Almería │ 100       │ 15 │ 370.85  │ 2019-03-11 │ 1          │ 5            │ 5  │ Antonio │ Carretero │ Ortega    │ 0.12      │
│ 1  │ Aarón  │ Rivero    │ Gómez     │ Almería │ 100       │ 16 │ 2389.23 │ 2019-03-11 │ 1          │ 5            │ 5  │ Antonio │ Carretero │ Ortega    │ 0.12      │
└────┴────────┴───────────┴───────────┴─────────┴───────────┴────┴─────────┴────────────┴────────────┴──────────────┴────┴─────────┴───────────┴───────────┴───────────┘

--Devuelve un listado de todos los clientes que realizaron un pedido durante el año 2017, cuya cantidad esté entre 300 € y 1000 €.
SELECT c.*,p.* FROM  cliente as c join pedido as p on c.id=p.id_cliente where p.fecha REGEXP '2017-' and p.total>300 and p.total<1000;
┌────┬────────┬───────────┬───────────┬─────────┬───────────┬────┬───────┬────────────┬────────────┬──────────────┐
│ id │ nombre │ apellido1 │ apellido2 │ ciudad  │ categoria │ id │ total │   fecha    │ id_cliente │ id_comercial │
├────┼────────┼───────────┼───────────┼─────────┼───────────┼────┼───────┼────────────┼────────────┼──────────────┤
│ 5  │ Marcos │ Loyola    │ Méndez    │ Almería │ 200       │ 5  │ 948.5 │ 2017-09-10 │ 5          │ 2            │
└────┴────────┴───────────┴───────────┴─────────┴───────────┴────┴───────┴────────────┴────────────┴──────────────┘

--Devuelve el nombre y los apellidos de todos los comerciales que ha participado en algún pedido realizado por María Santana Moreno.
SELECT p.*,c.* from pedido as p join comercial as c on c.id=p.id_comercial where c.nombre="María" and c.apellido1='Santana' and c.apellido2='Moreno';
--Devuelve el nombre de todos los clientes que han realizado algún pedido con el comercial Daniel Sáez Vega.
SELECT cl.* from pedido as p join comercial as co on co.id=p.id_comercial join cliente as cl on cl.id=p.id_cliente where co.nombre="Daniel" and co.apellido1='Sáez' and co.apellido2='Vega';
┌────┬────────┬───────────┬───────────┬─────────┬───────────┐
│ id │ nombre │ apellido1 │ apellido2 │ ciudad  │ categoria │
├────┼────────┼───────────┼───────────┼─────────┼───────────┤
│ 2  │ Adela  │ Salas     │ Díaz      │ Granada │ 200       │
│ 7  │ Pilar  │ Ruiz      │           │ Sevilla │ 300       │
│ 2  │ Adela  │ Salas     │ Díaz      │ Granada │ 200       │
│ 2  │ Adela  │ Salas     │ Díaz      │ Granada │ 200       │
│ 6  │ María  │ Santana   │ Moreno    │ Cádiz   │ 100       │
│ 6  │ María  │ Santana   │ Moreno    │ Cádiz   │ 100       │
└────┴────────┴───────────┴───────────┴─────────┴───────────┘

--Calcula la cantidad total que suman todos los pedidos que aparecen en la tabla pedido.
SELECT sum(total) FROM  pedido ;
┌────────────┐
│ sum(total) │
├────────────┤
│ 20992.83   │
└────────────┘

--Calcula la cantidad media de todos los pedidos que aparecen en la tabla pedido.
SELECT AVG(total) FROM  pedido ;
┌─────────────┐
│ AVG(total)  │
├─────────────┤
│ 1312.051875 │
└─────────────┘

--Calcula el número total de comerciales distintos que aparecen en la tabla pedido.
SELECT distinct c.* from pedido as p join comercial as c on c.id=p.id_comercial;
┌────┬─────────┬───────────┬───────────┬───────────┐
│ id │ nombre  │ apellido1 │ apellido2 │ categoria │
├────┼─────────┼───────────┼───────────┼───────────┤
│ 2  │ Juan    │ Gómez     │ López     │ 0.13      │
│ 5  │ Antonio │ Carretero │ Ortega    │ 0.12      │
│ 1  │ Daniel  │ Sáez      │ Vega      │ 0.15      │
│ 3  │ Diego   │ Flores    │ Salas     │ 0.11      │
│ 6  │ Manuel  │ Domínguez │ Hernández │ 0.13      │
│ 7  │ Antonio │ Vega      │ Hernández │ 0.11      │
└────┴─────────┴───────────┴───────────┴───────────┘

--Calcula el número total de clientes que aparecen en la tabla cliente.
SELECT count(nombre) FROM cliente ;
┌───────────────┐
│ count(nombre) │
├───────────────┤
│ 10            │
└───────────────┘

--Calcula cuál es la mayor cantidad que aparece en la tabla pedido.
SELECT max(Total) from pedido;
┌────────────┐
│ max(Total) │
├────────────┤
│ 5760.0     │
└────────────┘

--Calcula cuál es la menor cantidad que aparece en la tabla pedido.
SELECT min(Total) from pedido;
┌────────────┐
│ min(Total) │
├────────────┤
│ 65.26      │
└────────────┘

--Calcula cuál es el valor máximo de categoría para cada una de las ciudades que aparece en la tabla cliente.
SELECT ciudad,max(categoria) FROM cliente GROUP BY  ciudad ;
┌─────────┬────────────────┐
│ ciudad  │ max(categoria) │
├─────────┼────────────────┤
│ Almería │ 200            │
│ Cádiz   │ 100            │
│ Granada │ 225            │
│ Huelva  │ 200            │
│ Jaén    │ 300            │
│ Sevilla │ 300            │
└─────────┴────────────────┘

--Calcula cuál es el máximo valor de los pedidos realizados durante el mismo día para cada uno de los clientes. Es decir, el mismo cliente puede haber realizado varios pedidos de diferentes cantidades el mismo día. Se pide que se calcule cuál es el pedido de máximo valor para cada uno de los días en los que un cliente ha realizado un pedido. Muestra el identificador del cliente, nombre, apellidos, la fecha y el valor de la cantidad.
SELECT c.id,c.nombre,c.apellido1,c.apellido2,p.fecha,max(p.total) FROM  cliente as c join pedido as p on c.id=p.id_cliente group by p.fecha;
┌────┬────────┬───────────┬───────────┬────────────┬──────────────┐
│ id │ nombre │ apellido1 │ apellido2 │   fecha    │ max(p.total) │
├────┼────────┼───────────┼───────────┼────────────┼──────────────┤
│ 8  │ Pepe   │ Ruiz      │ Santana   │ 2015-06-27 │ 250.45       │
│ 2  │ Adela  │ Salas     │ Díaz      │ 2015-09-10 │ 5760.0       │
│ 7  │ Pilar  │ Ruiz      │           │ 2016-07-27 │ 2400.6       │
│ 8  │ Pepe   │ Ruiz      │ Santana   │ 2016-08-17 │ 110.5        │
│ 1  │ Aarón  │ Rivero    │ Gómez     │ 2016-09-10 │ 270.65       │
│ 8  │ Pepe   │ Ruiz      │ Santana   │ 2016-10-10 │ 2480.4       │
│ 6  │ María  │ Santana   │ Moreno    │ 2017-02-02 │ 145.82       │
│ 2  │ Adela  │ Salas     │ Díaz      │ 2017-04-25 │ 3045.6       │
│ 5  │ Marcos │ Loyola    │ Méndez    │ 2017-09-10 │ 948.5        │
│ 5  │ Marcos │ Loyola    │ Méndez    │ 2017-10-05 │ 150.5        │
│ 4  │ Adrián │ Suárez    │           │ 2017-10-10 │ 1983.43      │
│ 6  │ María  │ Santana   │ Moreno    │ 2019-01-25 │ 545.75       │
│ 1  │ Aarón  │ Rivero    │ Gómez     │ 2019-03-11 │ 2389.23      │
└────┴────────┴───────────┴───────────┴────────────┴──────────────┘
--Calcula cuál es el máximo valor de los pedidos realizados durante el mismo día para cada uno de los clientes, teniendo en cuenta que sólo queremos mostrar aquellos pedidos que superen la cantidad de 2000 €.
SELECT c.id,c.nombre,c.apellido1,c.apellido2,p.fecha,max(p.total) as maximo FROM  cliente as c join pedido as p on c.id=p.id_cliente where p.total>2000 group by p.fecha;
┌────┬────────┬───────────┬───────────┬────────────┬─────────┐
│ id │ nombre │ apellido1 │ apellido2 │   fecha    │ maximo  │
├────┼────────┼───────────┼───────────┼────────────┼─────────┤
│ 2  │ Adela  │ Salas     │ Díaz      │ 2015-09-10 │ 5760.0  │
│ 7  │ Pilar  │ Ruiz      │           │ 2016-07-27 │ 2400.6  │
│ 8  │ Pepe   │ Ruiz      │ Santana   │ 2016-10-10 │ 2480.4  │
│ 2  │ Adela  │ Salas     │ Díaz      │ 2017-04-25 │ 3045.6  │
│ 1  │ Aarón  │ Rivero    │ Gómez     │ 2019-03-11 │ 2389.23 │
└────┴────────┴───────────┴───────────┴────────────┴─────────┘

--Calcula el máximo valor de los pedidos realizados para cada uno de los comerciales durante la fecha 2016-08-17. Muestra el identificador del comercial, nombre, apellidos y total.
SELECT c.id,c.nombre,c.apellido1,c.apellido2,max(p.total) from pedido as p join comercial as c on c.id=p.id_comercial where p.fecha='2016-08-17';
┌────┬────────┬───────────┬───────────┬──────────────┐
│ id │ nombre │ apellido1 │ apellido2 │ max(p.total) │
├────┼────────┼───────────┼───────────┼──────────────┤
│ 3  │ Diego  │ Flores    │ Salas     │ 110.5        │
└────┴────────┴───────────┴───────────┴──────────────┘

--Devuelve un listado con el identificador de cliente, nombre y apellidos y el número total de pedidos que ha realizado cada uno de clientes. Tenga en cuenta que pueden existir clientes que no han realizado ningún pedido. Estos clientes también deben aparecer en el listado indicando que el número de pedidos realizados es 0.
select c.id, c.nombre, c.apellido1, apellido2, count(p.id_cliente) as pedidos_totales from cliente as c left join pedido as p on c.id = p.id_cliente group by c.id;
┌────┬───────────┬───────────┬───────────┬─────────────────┐
│ id │  nombre   │ apellido1 │ apellido2 │ pedidos_totales │
├────┼───────────┼───────────┼───────────┼─────────────────┤
│ 1  │ Aarón     │ Rivero    │ Gómez     │ 3               │
│ 2  │ Adela     │ Salas     │ Díaz      │ 3               │
│ 3  │ Adolfo    │ Rubio     │ Flores    │ 1               │
│ 4  │ Adrián    │ Suárez    │           │ 1               │
│ 5  │ Marcos    │ Loyola    │ Méndez    │ 2               │
│ 6  │ María     │ Santana   │ Moreno    │ 2               │
│ 7  │ Pilar     │ Ruiz      │           │ 1               │
│ 8  │ Pepe      │ Ruiz      │ Santana   │ 3               │
│ 9  │ Guillermo │ López     │ Gómez     │ 0               │
│ 10 │ Daniel    │ Santana   │ Loyola    │ 0               │
└────┴───────────┴───────────┴───────────┴─────────────────┘

--Devuelve un listado con el identificador de cliente, nombre y apellidos y el número total de pedidos que ha realizado cada uno de clientes durante el año 2017.
SELECT c.id,c.nombre,c.apellido1,c.apellido2,count(p.id_cliente) FROM  cliente as c join pedido as p on c.id=p.id_cliente where p.fecha REGEXP '2017-' group by c.nombre;
┌────┬────────┬───────────┬───────────┬─────────────────────┐
│ id │ nombre │ apellido1 │ apellido2 │ count(p.id_cliente) │
├────┼────────┼───────────┼───────────┼─────────────────────┤
│ 2  │ Adela  │ Salas     │ Díaz      │ 2                   │
│ 4  │ Adrián │ Suárez    │           │ 1                   │
│ 5  │ Marcos │ Loyola    │ Méndez    │ 2                   │
│ 6  │ María  │ Santana   │ Moreno    │ 1                   │
└────┴────────┴───────────┴───────────┴─────────────────────┘

--Devuelve un listado que muestre el identificador de cliente, nombre, primer apellido y el valor de la máxima cantidad del pedido realizado por cada uno de los clientes. El resultado debe mostrar aquellos clientes que no han realizado ningún pedido indicando que la máxima cantidad de sus pedidos realizados es 0.
SELECT c.id,c.nombre,c.apellido1,count(p.total) FROM  cliente as c left join pedido as p on c.id=p.id_cliente group by c.nombre;
┌────┬───────────┬───────────┬────────────────┐
│ id │  nombre   │ apellido1 │ count(p.total) │
├────┼───────────┼───────────┼────────────────┤
│ 1  │ Aarón     │ Rivero    │ 3              │
│ 2  │ Adela     │ Salas     │ 3              │
│ 3  │ Adolfo    │ Rubio     │ 1              │
│ 4  │ Adrián    │ Suárez    │ 1              │
│ 10 │ Daniel    │ Santana   │ 0              │
│ 9  │ Guillermo │ López     │ 0              │
│ 5  │ Marcos    │ Loyola    │ 2              │
│ 6  │ María     │ Santana   │ 2              │
│ 8  │ Pepe      │ Ruiz      │ 3              │
│ 7  │ Pilar     │ Ruiz      │ 1              │
└────┴───────────┴───────────┴────────────────┘

--Devuelve cuál ha sido el pedido de máximo valor que se ha realizado cada año.
select substr(fecha, 1, 4)as anyo,max(total) from pedido group by anyo ;
┌──────┬────────────┐
│ anyo │ max(total) │
├──────┼────────────┤
│ 2015 │ 5760.0     │
│ 2016 │ 2480.4     │
│ 2017 │ 3045.6     │
│ 2019 │ 2389.23    │
└──────┴────────────┘

--Devuelve el número total de pedidos que se han realizado cada año.
select substr(fecha, 1, 4)as anyo,count(total) from pedido group by anyo ;
┌──────┬──────────────┐
│ anyo │ count(total) │
├──────┼──────────────┤
│ 2015 │ 2            │
│ 2016 │ 5            │
│ 2017 │ 6            │
│ 2019 │ 3            │
└──────┴──────────────

Subconsultas
Con operadores básicos de comparación
--Devuelve un listado con todos los pedidos que ha realizado Adela Salas Díaz. (Sin utilizar INNER JOIN).
select p.*,c.nombre from cliente as c ,pedido as p where c.id = p.id_cliente and c.nombre||' '|| c.apellido1 ||' '|| c.apellido2='Adela Salas Díaz';
┌────┬────────┬────────────┬────────────┬──────────────┬────────┐
│ id │ total  │   fecha    │ id_cliente │ id_comercial │ nombre │
├────┼────────┼────────────┼────────────┼──────────────┼────────┤
│ 3  │ 65.26  │ 2017-10-05 │ 2          │ 1            │ Adela  │
│ 7  │ 5760.0 │ 2015-09-10 │ 2          │ 1            │ Adela  │
│ 12 │ 3045.6 │ 2017-04-25 │ 2          │ 1            │ Adela  │
└────┴────────┴────────────┴────────────┴──────────────┴────────┘

--Devuelve el número de pedidos en los que ha participado el comercial Daniel Sáez Vega. (Sin utilizar INNER JOIN)
select c.nombre,p.* from comercial as c , pedido as p where c.id=p.id_comercial and c.nombre||' '|| c.apellido1 ||' '|| c.apellido2='Daniel Sáez Vega';
┌────────┬────┬────────┬────────────┬────────────┬──────────────┐
│ nombre │ id │ total  │   fecha    │ id_cliente │ id_comercial │
├────────┼────┼────────┼────────────┼────────────┼──────────────┤
│ Daniel │ 3  │ 65.26  │ 2017-10-05 │ 2          │ 1            │
│ Daniel │ 6  │ 2400.6 │ 2016-07-27 │ 7          │ 1            │
│ Daniel │ 7  │ 5760.0 │ 2015-09-10 │ 2          │ 1            │
│ Daniel │ 12 │ 3045.6 │ 2017-04-25 │ 2          │ 1            │
│ Daniel │ 13 │ 545.75 │ 2019-01-25 │ 6          │ 1            │
│ Daniel │ 14 │ 145.82 │ 2017-02-02 │ 6          │ 1            │
└────────┴────┴────────┴────────────┴────────────┴──────────────┘

--Devuelve los datos del cliente que realizó el pedido más caro en el año 2019. (Sin utilizar INNER JOIN)
select c.*,max(p.total) from cliente as c ,pedido as p where c.id = p.id_cliente and p.fecha regexp '2019-'; 
┌────┬────────┬───────────┬───────────┬─────────┬───────────┬──────────────┐
│ id │ nombre │ apellido1 │ apellido2 │ ciudad  │ categoria │ max(p.total) │
├────┼────────┼───────────┼───────────┼─────────┼───────────┼──────────────┤
│ 1  │ Aarón  │ Rivero    │ Gómez     │ Almería │ 100       │ 2389.23      │
└────┴────────┴───────────┴───────────┴─────────┴───────────┴──────────────┘

--Devuelve la fecha y la cantidad del pedido de menor valor realizado por el cliente Pepe Ruiz Santana.
select c.*,min(p.total) from cliente as c ,pedido as p where c.id = p.id_cliente and c.nombre||' '|| c.apellido1 ||' '|| c.apellido2='Pepe Ruiz Santana'; 
┌────┬────────┬───────────┬───────────┬────────┬───────────┬──────────────┐
│ id │ nombre │ apellido1 │ apellido2 │ ciudad │ categoria │ min(p.total) │
├────┼────────┼───────────┼───────────┼────────┼───────────┼──────────────┤
│ 8  │ Pepe   │ Ruiz      │ Santana   │ Huelva │ 200       │ 110.5        │
└────┴────────┴───────────┴───────────┴────────┴───────────┴──────────────┘

--Devuelve un listado con los datos de los clientes y los pedidos, de todos los clientes que han realizado un pedido durante el año 2017 con un valor mayor o igual al valor medio de los pedidos realizados durante ese mismo año.
select c.* from cliente as c ,pedido as p where c.id = p.id_cliente and p.fecha regexp '2017-' and P.total>=(SELECT AVG(pedido.total) FROM pedido WHERE pedido.id_cliente = c.id); 
┌────┬────────┬───────────┬───────────┬─────────┬───────────┐
│ id │ nombre │ apellido1 │ apellido2 │ ciudad  │ categoria │
├────┼────────┼───────────┼───────────┼─────────┼───────────┤
│ 5  │ Marcos │ Loyola    │ Méndez    │ Almería │ 200       │
│ 4  │ Adrián │ Suárez    │           │ Jaén    │ 300       │
│ 2  │ Adela  │ Salas     │ Díaz      │ Granada │ 200       │
└────┴────────┴───────────┴───────────┴─────────┴───────────┘

Subconsultas con IN y NOT IN
--Devuelve un listado de los clientes que no han realizado ningún pedido. (Utilizando IN o NOT IN).
SELECT c.nombre FROM cliente AS c WHERE c.id NOT IN (SELECT id_cliente FROM pedido);
┌───────────┐
│  nombre   │
├───────────┤
│ Guillermo │
│ Daniel    │
└───────────┘

--Devuelve un listado de los comerciales que no han realizado ningún pedido. (Utilizando IN o NOT IN).
SELECT c.nombre FROM comercial AS c WHERE c.id NOT IN (SELECT id_cliente FROM pedido);

Subconsultas con EXISTS y NOT EXISTS
--Devuelve un listado de los clientes que no han realizado ningún pedido. (Utilizando EXISTS o NOT EXISTS).
SELECT c.nombre FROM cliente AS c WHERE EXISTS (SELECT 1 FROM pedido as p WHERE c.id = p.id_cliente);
┌────────┐
│ nombre │
├────────┤
│ Aarón  │
│ Adela  │
│ Adolfo │
│ Adrián │
│ Marcos │
│ María  │
│ Pilar  │
│ Pepe   │
└────────┘

--Devuelve un listado de los comerciales que no han realizado ningún pedido. (Utilizando EXISTS o NOT EXISTS).
SELECT c.nombre FROM comercial AS c WHERE NOT EXISTS (SELECT 1 FROM pedido as p WHERE c.id = p.id_comercial);
┌─────────┐
│ nombre  │
├─────────┤
│ Marta   │
│ Alfredo │
└─────────┘
