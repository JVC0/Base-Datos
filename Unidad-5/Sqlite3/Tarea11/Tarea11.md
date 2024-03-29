## Consultas SQL sobre una tabla
Devuelve un listado con el código de oficina y la ciudad donde hay oficinas.
SELECT codigo_oficina,pais FROM oficina ;
┌────────────────┬────────────┐
│ codigo_oficina │    pais    │
├────────────────┼────────────┤
│ BCN-ES         │ España     │
│ BOS-USA        │ EEUU       │
│ LON-UK         │ Inglaterra │
│ MAD-ES         │ España     │
│ PAR-FR         │ Francia    │
│ SFC-USA        │ EEUU       │
│ SYD-AU         │ Australia  │
│ TAL-ES         │ España     │
│ TOK-JP         │ Japón      │
└────────────────┴────────────┘
Devuelve un listado con la ciudad y el teléfono de las oficinas de España.
SELECT ciudad,telefono from oficina where pais='España';
┌──────────────────────┬────────────────┐
│        ciudad        │    telefono    │
├──────────────────────┼────────────────┤
│ Barcelona            │ +34 93 3561182 │
│ Madrid               │ +34 91 7514487 │
│ Talavera de la Reina │ +34 925 867231 │
└──────────────────────┴────────────────┘

Devuelve un listado con el nombre, apellidos y email de los empleados cuyo jefe tiene un código de jefe igual a 7.
SELECT nombre,apellido1,apellido2,email FROM empleado WHERE codigo_jefe=7;
┌─────────┬───────────┬───────────┬──────────────────────────┐
│ nombre  │ apellido1 │ apellido2 │          email           │
├─────────┼───────────┼───────────┼──────────────────────────┤
│ Mariano │ López     │ Murcia    │ mlopez@jardineria.es     │
│ Lucio   │ Campoamor │ Martín    │ lcampoamor@jardineria.es │
│ Hilario │ Rodriguez │ Huertas   │ hrodriguez@jardineria.es │
└─────────┴───────────┴───────────┴──────────────────────────┘

Devuelve el nombre del puesto, nombre, apellidos y email del jefe de la empresa.
SELECT puesto,nombre,apellido1,apellido2 FROM  empleado where codigo_jefe NOT NULL;
┌───────────────────────┬─────────────────┬────────────┬───────────┐
│        puesto         │     nombre      │ apellido1  │ apellido2 │
├───────────────────────┼─────────────────┼────────────┼───────────┤
│ Subdirector Marketing │ Ruben           │ López      │ Martinez  │
│ Subdirector Ventas    │ Alberto         │ Soria      │ Carrasco  │
│ Secretaria            │ Maria           │ Solís      │ Jerez     │
│ Representante Ventas  │ Felipe          │ Rosas      │ Marquez   │
│ Representante Ventas  │ Juan Carlos     │ Ortiz      │ Serrano   │
│ Director Oficina      │ Carlos          │ Soria      │ Jimenez   │
│ Representante Ventas  │ Mariano         │ López      │ Murcia    │
│ Representante Ventas  │ Lucio           │ Campoamor  │ Martín    │
│ Representante Ventas  │ Hilario         │ Rodriguez  │ Huertas   │
│ Director Oficina      │ Emmanuel        │ Magaña     │ Perez     │
│ Representante Ventas  │ José Manuel     │ Martinez   │ De la Osa │
│ Representante Ventas  │ David           │ Palma      │ Aceituno  │
│ Representante Ventas  │ Oscar           │ Palma      │ Aceituno  │
│ Director Oficina      │ Francois        │ Fignon     │           │
│ Representante Ventas  │ Lionel          │ Narvaez    │           │
│ Representante Ventas  │ Laurent         │ Serra      │           │
│ Director Oficina      │ Michael         │ Bolton     │           │
│ Representante Ventas  │ Walter Santiago │ Sanchez    │ Lopez     │
│ Director Oficina      │ Hilary          │ Washington │           │
│ Representante Ventas  │ Marcus          │ Paxton     │           │
│ Representante Ventas  │ Lorena          │ Paxton     │           │
│ Director Oficina      │ Nei             │ Nishikori  │           │
│ Representante Ventas  │ Narumi          │ Riko       │           │
│ Representante Ventas  │ Takuma          │ Nomura     │           │
│ Director Oficina      │ Amy             │ Johnson    │           │
│ Representante Ventas  │ Larry           │ Westfalls  │           │
│ Representante Ventas  │ John            │ Walton     │           │
│ Director Oficina      │ Kevin           │ Fallmer    │           │
│ Representante Ventas  │ Julian          │ Bellinelli │           │
│ Representante Ventas  │ Mariko          │ Kishi      │           │
└───────────────────────┴─────────────────┴────────────┴───────────┘

Devuelve un listado con el nombre, apellidos y puesto de aquellos empleados que no sean representantes de ventas.
SELECT nombre,apellido1,apellido2 FROM empleado WHERE puesto !='representantes de ventas';
┌─────────────────┬────────────┬───────────┐
│     nombre      │ apellido1  │ apellido2 │
├─────────────────┼────────────┼───────────┤
│ Marcos          │ Magaña     │ Perez     │
│ Ruben           │ López      │ Martinez  │
│ Alberto         │ Soria      │ Carrasco  │
│ Maria           │ Solís      │ Jerez     │
│ Felipe          │ Rosas      │ Marquez   │
│ Juan Carlos     │ Ortiz      │ Serrano   │
│ Carlos          │ Soria      │ Jimenez   │
│ Mariano         │ López      │ Murcia    │
│ Lucio           │ Campoamor  │ Martín    │
│ Hilario         │ Rodriguez  │ Huertas   │
│ Emmanuel        │ Magaña     │ Perez     │
│ José Manuel     │ Martinez   │ De la Osa │
│ David           │ Palma      │ Aceituno  │
│ Oscar           │ Palma      │ Aceituno  │
│ Francois        │ Fignon     │           │
│ Lionel          │ Narvaez    │           │
│ Laurent         │ Serra      │           │
│ Michael         │ Bolton     │           │
│ Walter Santiago │ Sanchez    │ Lopez     │
│ Hilary          │ Washington │           │
│ Marcus          │ Paxton     │           │
│ Lorena          │ Paxton     │           │
│ Nei             │ Nishikori  │           │
│ Narumi          │ Riko       │           │
│ Takuma          │ Nomura     │           │
│ Amy             │ Johnson    │           │
│ Larry           │ Westfalls  │           │
│ John            │ Walton     │           │
│ Kevin           │ Fallmer    │           │
│ Julian          │ Bellinelli │           │
│ Mariko          │ Kishi      │           │
└─────────────────┴────────────┴───────────┘

Devuelve un listado con el nombre de los todos los clientes españoles.
SELECT nombre_cliente from cliente where pais='Spain';
┌────────────────────────────────┐
│         nombre_cliente         │
├────────────────────────────────┤
│ Lasas S.A.                     │
│ Beragua                        │
│ Club Golf Puerta del hierro    │
│ Naturagua                      │
│ DaraDistribuciones             │
│ Madrileña de riegos            │
│ Lasas S.A.                     │
│ Camunas Jardines S.L.          │
│ Dardena S.A.                   │
│ Jardin de Flores               │
│ Flores Marivi                  │
│ Flowers, S.A                   │
│ Naturajardin                   │
│ Golf S.A.                      │
│ Americh Golf Management SL     │
│ Aloha                          │
│ El Prat                        │
│ Sotogrande                     │
│ Vivero Humanes                 │
│ Fuenla City                    │
│ Jardines y Mansiones Cactus SL │
│ Jardinerías Matías SL          │
│ Agrojardin                     │
│ Top Campo                      │
│ Jardineria Sara                │
│ Campohermoso                   │
│ Flores S.L.                    │
└────────────────────────────────┘
Devuelve un listado con los distintos estados por los que puede pasar un pedido.
select distinct(estado) FROM  pedido ;
┌───────────┐
│  estado   │
├───────────┤
│ Entregado │
│ Rechazado │
│ Pendiente │
└───────────┘

Devuelve un listado con el código de cliente de aquellos clientes que realizaron algún pago en 2008. Tenga en cuenta que deberá eliminar aquellos códigos de cliente que aparezcan repetidos.
SELECT Distinct codigo_cliente FROM  pago where fecha_pago REGEXP "2008";
┌────────────────┐
│ codigo_cliente │
├────────────────┤
│ 1              │
│ 13             │
│ 14             │
│ 26             │
└────────────────┘
Devuelve un listado con el código de pedido, código de cliente, fecha esperada y fecha de entrega de los pedidos que no han sido entregados a tiempo.
SELECT codigo_pedido,codigo_cliente,fecha_entrega FROM  pedido WHERE  fecha_esperada <fecha_entrega ;
┌───────────────┬────────────────┬───────────────┐
│ codigo_pedido │ codigo_cliente │ fecha_entrega │
├───────────────┼────────────────┼───────────────┤
│ 9             │ 1              │ 2008-12-28    │
│ 13            │ 7              │ 2009-01-15    │
│ 16            │ 7              │ 2009-01-15    │
│ 17            │ 7              │ 2009-01-11    │
│ 18            │ 9              │ 2009-01-07    │
│ 22            │ 9              │ 2009-01-13    │
│ 28            │ 3              │ 2009-02-20    │
│ 31            │ 13             │ 2008-10-04    │
│ 32            │ 4              │ 2007-01-27    │
│ 38            │ 19             │ 2009-03-07    │
│ 39            │ 19             │ 2009-03-09    │
│ 40            │ 19             │ 2009-03-13    │
│ 42            │ 19             │ 2009-03-27    │
│ 43            │ 23             │ 2009-03-28    │
│ 44            │ 23             │ 2009-03-30    │
│ 45            │ 23             │ 2009-03-07    │
│ 46            │ 23             │ 2009-03-05    │
│ 49            │ 26             │ 2008-07-30    │
│ 55            │ 14             │ 2009-01-11    │
│ 60            │ 1              │ 2008-12-28    │
│ 68            │ 3              │ 2009-02-20    │
│ 92            │ 27             │ 2009-05-03    │
│ 96            │ 35             │ 2008-04-13    │
│ 103           │ 30             │ 2009-01-24    │
│ 106           │ 30             │ 2009-05-20    │
│ 112           │ 36             │ 2009-05-07    │
│ 113           │ 36             │ 2009-01-09    │
│ 114           │ 36             │ 2009-01-31    │
│ 115           │ 36             │ 2009-02-27    │
│ 123           │ 30             │ 2009-01-24    │
│ 126           │ 30             │ 2009-05-20    │
│ 128           │ 38             │ 2008-12-29    │
└───────────────┴────────────────┴───────────────┘

Devuelve un listado con el código de pedido, código de cliente, fecha esperada y fecha de entrega de los pedidos cuya fecha de entrega ha sido al menos dos días antes de la fecha esperada.

Devuelve un listado de todos los pedidos que fueron rechazados en 2009.
┌───────────────┬──────────────┬────────────────┬───────────────┬───────────┬──────────────────────────────────────────────────────────────────────────┬────────────────┐
│ codigo_pedido │ fecha_pedido │ fecha_esperada │ fecha_entrega │  estado   │                               comentarios                                │ codigo_cliente │
├───────────────┼──────────────┼────────────────┼───────────────┼───────────┼──────────────────────────────────────────────────────────────────────────┼────────────────┤
│ 14            │ 2009-01-02   │ 2009-01-02     │               │ Rechazado │ mal pago                                                                 │ 7              │
│ 21            │ 2009-01-09   │ 2009-01-09     │ 2009-01-09    │ Rechazado │ mal pago                                                                 │ 9              │
│ 25            │ 2009-02-02   │ 2009-02-08     │               │ Rechazado │ El cliente carece de saldo en la cuenta asociada                         │ 1              │
│ 26            │ 2009-02-06   │ 2009-02-12     │               │ Rechazado │ El cliente anula la operacion para adquirir mas producto                 │ 3              │
│ 40            │ 2009-03-09   │ 2009-03-10     │ 2009-03-13    │ Rechazado │                                                                          │ 19             │
│ 46            │ 2009-04-03   │ 2009-03-04     │ 2009-03-05    │ Rechazado │                                                                          │ 23             │
│ 65            │ 2009-02-02   │ 2009-02-08     │               │ Rechazado │ El cliente carece de saldo en la cuenta asociada                         │ 1              │
│ 66            │ 2009-02-06   │ 2009-02-12     │               │ Rechazado │ El cliente anula la operacion para adquirir mas producto                 │ 3              │
│ 74            │ 2009-01-14   │ 2009-01-22     │               │ Rechazado │ El pedido no llego el dia que queria el cliente por fallo del transporte │ 15             │
│ 81            │ 2009-01-18   │ 2009-01-24     │               │ Rechazado │ Los producto estaban en mal estado                                       │ 28             │
│ 101           │ 2009-03-07   │ 2009-03-27     │               │ Rechazado │ El pedido fue rechazado por el cliente                                   │ 16             │
│ 105           │ 2009-02-14   │ 2009-02-20     │               │ Rechazado │ el producto ha sido rechazado por la pesima calidad                      │ 30             │
│ 120           │ 2009-03-07   │ 2009-03-27     │               │ Rechazado │ El pedido fue rechazado por el cliente                                   │ 16             │
│ 125           │ 2009-02-14   │ 2009-02-20     │               │ Rechazado │ el producto ha sido rechazado por la pesima calidad                      │ 30             │
└───────────────┴──────────────┴────────────────┴───────────────┴───────────┴──────────────────────────────────────────────────────────────────────────┴────────────────┘

Devuelve un listado de todos los pedidos que han sido entregados en el mes de enero de cualquier año.
SELECT fecha_pedido FROM  pedido where fecha_pedido not REGEXP '-02-'; 
┌──────────────┐
│ fecha_pedido │
├──────────────┤
│ 2006-01-17   │
│ 2007-10-23   │
│ 2008-06-20   │
│ 2009-01-20   │
│ 2008-11-09   │
│ 2008-12-22   │
│ 2009-01-15   │
│ 2009-01-20   │
│ 2009-01-22   │
│ 2009-01-12   │
│ 2009-01-02   │
│ 2009-01-09   │
│ 2009-01-06   │
│ 2009-01-08   │
│ 2009-01-05   │
│ 2009-01-18   │
│ 2009-01-20   │
│ 2009-01-09   │
│ 2009-01-11   │
│ 2008-12-30   │
│ 2008-07-14   │
│ 2008-08-01   │
│ 2008-08-03   │
│ 2008-09-04   │
│ 2007-01-07   │
│ 2007-05-20   │
│ 2007-06-20   │
│ 2008-03-10   │
│ 2008-10-15   │
│ 2008-11-03   │
│ 2009-03-05   │
│ 2009-03-06   │
│ 2009-03-09   │
│ 2009-03-12   │
│ 2009-03-22   │
│ 2009-03-25   │
│ 2009-03-26   │
│ 2009-04-01   │
│ 2009-04-03   │
│ 2009-04-15   │
│ 2008-03-17   │
│ 2008-07-12   │
│ 2008-03-17   │
│ 2008-10-01   │
│ 2008-12-07   │
│ 2008-10-15   │
│ 2009-01-11   │
│ 2008-12-10   │
│ 2008-12-19   │
│ 2009-01-05   │
│ 2009-01-24   │
│ 2008-11-09   │
│ 2008-12-22   │
│ 2009-01-15   │
│ 2009-01-20   │
│ 2009-01-22   │
│ 2009-01-24   │
│ 2009-01-14   │
│ 2009-01-11   │
│ 2008-11-15   │
│ 2009-01-03   │
│ 2008-12-15   │
│ 2009-01-12   │
│ 2009-01-25   │
│ 2009-01-18   │
│ 2009-01-20   │
│ 2009-01-24   │
│ 2007-10-05   │
│ 2009-03-18   │
│ 2009-04-19   │
│ 2009-05-03   │
│ 2009-10-18   │
│ 2008-01-04   │
│ 2008-03-20   │
│ 2008-10-08   │
│ 2009-01-08   │
│ 2009-01-10   │
│ 2009-03-07   │
│ 2008-12-28   │
│ 2009-01-15   │
│ 2009-03-02   │
│ 2009-05-13   │
│ 2009-04-06   │
│ 2009-04-09   │
│ 2006-05-25   │
│ 2007-03-19   │
│ 2008-03-05   │
│ 2009-03-05   │
│ 2008-10-28   │
│ 2009-01-15   │
│ 2008-11-29   │
│ 2008-06-28   │
│ 2008-08-25   │
│ 2009-01-10   │
│ 2009-03-07   │
│ 2008-12-28   │
│ 2009-04-09   │
│ 2009-01-15   │
│ 2009-03-02   │
│ 2009-05-13   │
│ 2009-04-06   │
│ 2008-11-10   │
└──────────────┘

Devuelve un listado con todos los pagos que se realizaron en el año 2008 mediante Paypal. Ordene el resultado de mayor a menor.
SELECT * FROM  pago where forma_pago="Paypal" and fecha_pago REGEXP '2008-';

Devuelve un listado con todas las formas de pago que aparecen en la tabla pago. Tenga en cuenta que no deben aparecer formas de pago repetidas.
SELECT forma_pago FROM  pago GROUP BY forma_pago ;
┌───────────────┐
│  forma_pago   │
├───────────────┤
│ Cheque        │
│ PayPal        │
│ Transferencia │
└───────────────┘
Devuelve un listado con todos los productos que pertenecen a la gama Ornamentales y que tienen más de 100 unidades en stock. El listado deberá estar ordenado por su precio de venta, mostrando en primer lugar los de mayor precio.

Devuelve un listado con todos los clientes que sean de la ciudad de Madrid y cuyo representante de ventas tenga el código de empleado 11 o 30.

## Consultas multitabla (Where para unir tablas)

Obtén un listado con el nombre de cada cliente y el nombre y apellido de su representante de ventas.

Muestra el nombre de los clientes que hayan realizado pagos junto con el nombre de sus representantes de ventas.

Muestra el nombre de los clientes que no hayan realizado pagos junto con el nombre de sus representantes de ventas.

Devuelve el nombre de los clientes que han hecho pagos y el nombre de sus representantes junto con la ciudad de la oficina a la que pertenece el representante.

Devuelve el nombre de los clientes que no hayan hecho pagos y el nombre de sus representantes junto con la ciudad de la oficina a la que pertenece el representante.

Lista la dirección de las oficinas que tengan clientes en Fuenlabrada.

Devuelve el nombre de los clientes y el nombre de sus representantes junto con la ciudad de la oficina a la que pertenece el representante.

Devuelve un listado con el nombre de los empleados junto con el nombre de sus jefes.

Devuelve un listado que muestre el nombre de cada empleados, el nombre de su jefe y el nombre del jefe de sus jefe.

Devuelve el nombre de los clientes a los que no se les ha entregado a tiempo un pedido.

Devuelve un listado de las diferentes gamas de producto que ha comprado cada cliente.

### Consultas multitabla (inner join)

Devuelve un listado que muestre solamente los clientes que no han realizado ningún pago.

Devuelve un listado que muestre solamente los clientes que no han realizado ningún pedido.

Devuelve un listado que muestre los clientes que no han realizado ningún pago y los que no han realizado ningún pedido.

Devuelve un listado que muestre solamente los empleados que no tienen una oficina asociada.

Devuelve un listado que muestre solamente los empleados que no tienen un cliente asociado.

Devuelve un listado que muestre solamente los empleados que no tienen un cliente asociado junto con los datos de la oficina donde trabajan.

Devuelve un listado que muestre los empleados que no tienen una oficina asociada y los que no tienen un cliente asociado.

Devuelve un listado de los productos que nunca han aparecido en un pedido.

Devuelve un listado de los productos que nunca han aparecido en un pedido. El resultado debe mostrar el nombre, la descripción y la imagen del producto.


Devuelve las oficinas donde no trabajan ninguno de los empleados que hayan sido los representantes de ventas de algún cliente que haya realizado la compra de algún producto de la gama Frutales.

Devuelve un listado con los clientes que han realizado algún pedido pero no han realizado ningún pago.

Devuelve un listado con los datos de los empleados que no tienen clientes asociados y el nombre de su jefe asociado.

## Consultas resumen (count,avg,...)

¿Cuántos empleados hay en la compañía?

¿Cuántos clientes tiene cada país?

¿Cuál fue el pago medio en 2009?

¿Cuántos pedidos hay en cada estado? Ordena el resultado de forma descendente por el número de pedidos.

Calcula el precio de venta del producto más caro y más barato en una misma consulta.

Calcula el número de clientes que tiene la empresa.


¿Cuántos clientes existen con domicilio en la ciudad de Madrid?

¿Calcula cuántos clientes tiene cada una de las ciudades que empiezan por M?

Devuelve el nombre de los representantes de ventas y el número de clientes al que atiende cada uno.


Calcula el número de clientes que no tiene asignado representante de ventas.

Calcula la fecha del primer y último pago realizado por cada uno de los clientes. El listado deberá mostrar el nombre y los apellidos de cada cliente.

Calcula el número de productos diferentes que hay en cada uno de los pedidos.

Calcula la suma de la cantidad total de todos los productos que aparecen en cada uno de los pedidos.

Devuelve un listado de los 20 productos más vendidos y el número total de unidades que se han vendido de cada uno. El listado deberá estar ordenado por el número total de unidades vendidas.

La facturación que ha tenido la empresa en toda la historia, indicando la base imponible, el IGIC y el total facturado. La base imponible se calcula sumando el coste del producto por el número de unidades vendidas de la tabla detalle_pedido. El IGIC es el 7 % de la base imponible, y el total la suma de los dos campos anteriores.

La misma información que en la pregunta anterior, pero agrupada por código de producto.

La misma información que en la pregunta anterior, pero agrupada por código de producto filtrada por los códigos que empiecen por OR.

Lista las ventas totales de los productos que hayan facturado más de 3000 euros. Se mostrará el nombre, unidades vendidas, total facturado y total facturado con impuestos (7% IGIC).

Muestre la suma total de todos los pagos que se realizaron para cada uno de los años que aparecen en la tabla pagos.

## Subconsultas en SQL

Devuelve el nombre del cliente con mayor límite de crédito.

Devuelve el nombre del producto que tenga el precio de venta más caro.

Devuelve el nombre del producto del que se han vendido más unidades. (Tenga en cuenta que tendrá que calcular cuál es el número total de unidades que se han vendido de cada producto a partir de los datos de la tabla detalle_pedido)

Los clientes cuyo límite de crédito sea mayor que los pagos que haya realizado. (Sin utilizar INNER JOIN).

Devuelve el producto que más unidades tiene en stock.

Devuelve el producto que menos unidades tiene en stock.

Devuelve el nombre, los apellidos y el email de los empleados que están a cargo de Alberto Soria.

Devuelve el nombre del cliente con mayor límite de crédito.

Devuelve el nombre del producto que tenga el precio de venta más caro.

Devuelve el producto que menos unidades tiene en stock.

Devuelve el nombre, apellido1 y cargo de los empleados que no representen a ningún cliente.

Devuelve un listado que muestre solamente los clientes que no han realizado ningún pago.

Devuelve un listado que muestre solamente los clientes que sí han realizado algún pago.


Devuelve un listado de los productos que nunca han aparecido en un pedido.

Devuelve el nombre, apellidos, puesto y teléfono de la oficina de aquellos empleados que no sean representante de ventas de ningún cliente.

Devuelve las oficinas donde no trabajan ninguno de los empleados que hayan sido los representantes de ventas de algún cliente que haya realizado la compra de algún producto de la gama Frutales.

Devuelve un listado con los clientes que han realizado algún pedido pero no han realizado ningún pago.

Devuelve un listado que muestre solamente los clientes que no han realizado ningún pago.


Devuelve un listado que muestre solamente los clientes que sí han realizado algún pago.


Devuelve un listado de los productos que nunca han aparecido en un pedido.

Devuelve un listado de los productos que han aparecido en un pedido alguna vez.

## Consultas variadas en SQL

Devuelve el listado de clientes indicando el nombre del cliente y cuántos pedidos ha realizado. Tenga en cuenta que pueden existir clientes que no han realizado ningún pedido.

Devuelve un listado con los nombres de los clientes y el total pagado por cada uno de ellos. Tenga en cuenta que pueden existir clientes que no han realizado ningún pago.

Devuelve el nombre de los clientes que hayan hecho pedidos en 2008 ordenados alfabéticamente de menor a mayor.

Devuelve el nombre del cliente, el nombre y primer apellido de su representante de ventas y el número de teléfono de la oficina del representante de ventas, de aquellos clientes que no hayan realizado ningún pago.

Devuelve el listado de clientes donde aparezca el nombre del cliente, el nombre y primer apellido de su representante de ventas y la ciudad donde está su oficina.

Devuelve el nombre, apellidos, puesto y teléfono de la oficina de aquellos empleados que no sean representante de ventas de ningún cliente.

Devuelve un listado indicando todas las ciudades donde hay oficinas y el número de empleados que tiene.
