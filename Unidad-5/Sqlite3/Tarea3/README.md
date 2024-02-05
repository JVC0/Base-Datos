### Modelo E-R

 <img src=./Mr.drawio.png>

 ### Modelo M-R

 <img src=./ER.drawio.png>

#### Tablas originales

```sql
┌────┬────────────────────┬───────────┬────────┐
│ id │       nombre       │ categoria │ precio │
├────┼────────────────────┼───────────┼────────┤
│ 1  │ Arroz              │ Alimentos │ 2.5    │
│ 2  │ Leche              │ Lácteos   │ 1.8    │
│ 3  │ Pan                │ Panadería │ 1.2    │
│ 4  │ Manzanas           │ Frutas    │ 3.0    │
│ 5  │ Pollo              │ Carnes    │ 5.5    │
│ 6  │ Huevos             │ Lácteos   │ 1.0    │
│ 7  │ Yogurt             │ Lácteos   │ 2.0    │
│ 8  │ Tomates            │ Verduras  │ 2.2    │
│ 9  │ Queso              │ Lácteos   │ 4.0    │
│ 10 │ Cereal             │ Desayuno  │ 3.5    │
│ 11 │ Papel Higiénico    │ Hogar     │ 1.5    │
│ 12 │ Cepillo de Dientes │ Higiene   │ 2.0    │
│ 13 │ Detergente         │ Limpieza  │ 2.8    │
│ 14 │ Galletas           │ Snacks    │ 1.7    │
│ 15 │ Aceite de Oliva    │ Cocina    │ 4.5    │
│ 16 │ Café               │ Bebidas   │ 5.0    │
│ 17 │ Sopa enlatada      │ Conservas │ 2.3    │
│ 18 │ Jabón de Baño      │ Higiene   │ 1.2    │
│ 19 │ Botellas de Agua   │ Bebidas   │ 1.0    │
│ 20 │ Cerveza            │ Bebidas   │ 3.8    │
└────┴────────────────────┴───────────┴────────┘
┌────┬─────────────┬──────────┬────────────┐
│ id │ id_producto │ cantidad │   fecha    │
├────┼─────────────┼──────────┼────────────┤
│ 1  │ 1           │ 5        │ 2024-01-17 │
│ 2  │ 2           │ 3        │ 2024-01-17 │
│ 3  │ 4           │ 2        │ 2024-01-17 │
│ 4  │ 5           │ 1        │ 2024-01-17 │
│ 5  │ 6           │ 10       │ 2024-01-18 │
│ 6  │ 8           │ 4        │ 2024-01-18 │
│ 7  │ 10          │ 2        │ 2024-01-18 │
│ 8  │ 14          │ 7        │ 2024-01-19 │
│ 9  │ 16          │ 3        │ 2024-01-19 │
│ 10 │ 18          │ 6        │ 2024-01-20 │
└────┴─────────────┴──────────┴────────────┘
```

#### Mostrar todos los productos de la categoría "Bebidas".

```sql
SELECT nombre,categoria FROM productos WHERE categoria="Bebidas";
┌──────────────────┬───────────┐
│      nombre      │ categoria │
├──────────────────┼───────────┤
│ Café             │ Bebidas   │
│ Botellas de Agua │ Bebidas   │
│ Cerveza          │ Bebidas   │
└──────────────────┴───────────┘

```

#### Listar los productos ordenados por precio de forma descendente.

```sql
 select * from productos order by precio asc;
┌────┬────────────────────┬───────────┬────────┐
│ id │       nombre       │ categoria │ precio │
├────┼────────────────────┼───────────┼────────┤
│ 6  │ Huevos             │ Lácteos   │ 1.0    │
│ 19 │ Botellas de Agua   │ Bebidas   │ 1.0    │
│ 3  │ Pan                │ Panadería │ 1.2    │
│ 18 │ Jabón de Baño      │ Higiene   │ 1.2    │
│ 11 │ Papel Higiénico    │ Hogar     │ 1.5    │
│ 14 │ Galletas           │ Snacks    │ 1.7    │
│ 2  │ Leche              │ Lácteos   │ 1.8    │
│ 7  │ Yogurt             │ Lácteos   │ 2.0    │
│ 12 │ Cepillo de Dientes │ Higiene   │ 2.0    │
│ 8  │ Tomates            │ Verduras  │ 2.2    │
│ 17 │ Sopa enlatada      │ Conservas │ 2.3    │
│ 1  │ Arroz              │ Alimentos │ 2.5    │
│ 13 │ Detergente         │ Limpieza  │ 2.8    │
│ 4  │ Manzanas           │ Frutas    │ 3.0    │
│ 10 │ Cereal             │ Desayuno  │ 3.5    │
│ 20 │ Cerveza            │ Bebidas   │ 3.8    │
│ 9  │ Queso              │ Lácteos   │ 4.0    │
│ 15 │ Aceite de Oliva    │ Cocina    │ 4.5    │
│ 16 │ Café               │ Bebidas   │ 5.0    │
│ 5  │ Pollo              │ Carnes    │ 5.5    │
└────┴────────────────────┴───────────┴────────┘

```


#### Calcular el precio total de todos los productos en la tabla "productos".

```sql
SELECT SUM(precio) AS suma_precio FROM productos;
┌─────────────┐
│ suma_precio │
├─────────────┤
│ 52.5        │
└─────────────┘

```


#### Encontrar los productos con un nombre que contenga la letra 'a'.

```sql
 select * from productos where (nombre like '%a%');
┌────┬──────────────────┬───────────┬────────┐
│ id │      nombre      │ categoria │ precio │
├────┼──────────────────┼───────────┼────────┤
│ 1  │ Arroz            │ Alimentos │ 2.5    │
│ 3  │ Pan              │ Panadería │ 1.2    │
│ 4  │ Manzanas         │ Frutas    │ 3.0    │
│ 8  │ Tomates          │ Verduras  │ 2.2    │
│ 10 │ Cereal           │ Desayuno  │ 3.5    │
│ 11 │ Papel Higiénico  │ Hogar     │ 1.5    │
│ 14 │ Galletas         │ Snacks    │ 1.7    │
│ 15 │ Aceite de Oliva  │ Cocina    │ 4.5    │
│ 16 │ Café             │ Bebidas   │ 5.0    │
│ 17 │ Sopa enlatada    │ Conservas │ 2.3    │
│ 18 │ Jabón de Baño    │ Higiene   │ 1.2    │
│ 19 │ Botellas de Agua │ Bebidas   │ 1.0    │
│ 20 │ Cerveza          │ Bebidas   │ 3.8    │
└────┴──────────────────┴───────────┴────────┘
```

#### Obtener la cantidad total de productos vendidos en todas las fechas.

```sql
SELECT SUM(cantidad) AS total_vendidos FROM ventas;
┌────────────────┐
│ total_vendidos │
├────────────────┤
│ 43             │
└────────────────┘

```

#### Encontrar el producto más caro en cada categoría.

```sql
SELECT nombre,MAX(precio) FROM productos GROUP BY categoria;
┌────────────────────┬─────────────┐
│       nombre       │ MAX(precio) │
├────────────────────┼─────────────┤
│ Arroz              │ 2.5         │
│ Café               │ 5.0         │
│ Pollo              │ 5.5         │
│ Aceite de Oliva    │ 4.5         │
│ Sopa enlatada      │ 2.3         │
│ Cereal             │ 3.5         │
│ Manzanas           │ 3.0         │
│ Cepillo de Dientes │ 2.0         │
│ Papel Higiénico    │ 1.5         │
│ Detergente         │ 2.8         │
│ Queso              │ 4.0         │
│ Pan                │ 1.2         │
│ Galletas           │ 1.7         │
│ Tomates            │ 2.2         │
└────────────────────┴─────────────┘

```

#### Listar los productos que no han sido vendidos.

```sql
SELECT * from productos where id not in(select p.id from productos as p, ventas as v where p.id = v.id_producto);
┌────┬────────────────────┬───────────┬────────┐
│ id │       nombre       │ categoria │ precio │
├────┼────────────────────┼───────────┼────────┤
│ 3  │ Pan                │ Panadería │ 1.2    │
│ 7  │ Yogurt             │ Lácteos   │ 2.0    │
│ 9  │ Queso              │ Lácteos   │ 4.0    │
│ 11 │ Papel Higiénico    │ Hogar     │ 1.5    │
│ 12 │ Cepillo de Dientes │ Higiene   │ 2.0    │
│ 13 │ Detergente         │ Limpieza  │ 2.8    │
│ 15 │ Aceite de Oliva    │ Cocina    │ 4.5    │
│ 17 │ Sopa enlatada      │ Conservas │ 2.3    │
│ 19 │ Botellas de Agua   │ Bebidas   │ 1.0    │
│ 20 │ Cerveza            │ Bebidas   │ 3.8    │
└────┴────────────────────┴───────────┴────────┘

```

#### Calcular el precio promedio de los productos en la categoría "Snacks".

```sql
SELECT AVG(precio) FROM productos WHERE Categoria="Snacks";
┌─────────────┐
│ AVG(precio) │
├─────────────┤
│ 1.7         │
└─────────────┘

```

#### Encontrar los productos que han sido vendidos más de 5 veces.

```sql
id_producto,cantidad from ventas where cantidad>5;
┌─────────────┬──────────┐
│ id_producto │ cantidad │
├─────────────┼──────────┤
│ 6           │ 10       │
│ 14          │ 7        │
│ 18          │ 6        │
└─────────────┴──────────┘

```

#### Mostrar la fecha y la cantidad de ventas para cada producto.

```sql
SELECT p.id,p.nombre,cantidad FROM ventas, productos as p, p = id_producto ; 

```

#### Encontrar los productos que tienen un precio menor o igual a 2.

```sql
SELECT nombre,precio FROM productos WHERE precio <= 2.0;
┌────────────────────┬────────┐
│       nombre       │ precio │
├────────────────────┼────────┤
│ Leche              │ 1.8    │
│ Pan                │ 1.2    │
│ Huevos             │ 1.0    │
│ Yogurt             │ 2.0    │
│ Papel Higiénico    │ 1.5    │
│ Cepillo de Dientes │ 2.0    │
│ Galletas           │ 1.7    │
│ Jabón de Baño      │ 1.2    │
│ Botellas de Agua   │ 1.0    │
└────────────────────┴────────┘

```

#### Calcular la cantidad total de ventas para cada fecha.

```sql
SELECT sum(cantidad),fecha FROM ventas GROUP BY  fecha ;
┌───────────────┬────────────┐
│ sum(cantidad) │   fecha    │
├───────────────┼────────────┤
│ 11            │ 2024-01-17 │
│ 16            │ 2024-01-18 │
│ 10            │ 2024-01-19 │
│ 6             │ 2024-01-20 │
└───────────────┴────────────┘

```

#### Listar los productos cuyo nombre comienza con la letra 'P'.

```sql
select * from productos where (nombre like 'P%');
┌────┬─────────────────┬───────────┬────────┐
│ id │     nombre      │ categoria │ precio │
├────┼─────────────────┼───────────┼────────┤
│ 3  │ Pan             │ Panadería │ 1.2    │
│ 5  │ Pollo           │ Carnes    │ 5.5    │
│ 11 │ Papel Higiénico │ Hogar     │ 1.5    │
└────┴─────────────────┴───────────┴────────┘

```

#### Obtener el producto más vendido en términos de cantidad.

```sql
select p.nombre, max(cantidad) as cantidad_máxima from productos as p, ventas as v where p.id=v.id_producto;
┌────────┬─────────────────┐
│ nombre │ cantidad_máxima │
├────────┼─────────────────┤
│ Huevos │ 10              │
└────────┴─────────────────┘

```

#### Mostrar los productos que fueron vendidos en la fecha '2024-01-18'.

```sql
select p.nombre from productos as p, ventas as v where p.id=v.id_producto and fecha='2024-01-18';
┌─────────┐
│ nombre  │
├─────────┤
│ Huevos  │
│ Tomates │
│ Cereal  │
└─────────┘

```

#### Calcular el total de ventas para cada producto.

```sql
select p.nombre, v.cantidad from productos as p, ventas as v where p.id=v.id_producto;
┌───────────────┬──────────┐
│    nombre     │ cantidad │
├───────────────┼──────────┤
│ Arroz         │ 5        │
│ Leche         │ 3        │
│ Manzanas      │ 2        │
│ Pollo         │ 1        │
│ Huevos        │ 10       │
│ Tomates       │ 4        │
│ Cereal        │ 2        │
│ Galletas      │ 7        │
│ Café          │ 3        │
│ Jabón de Baño │ 6        │
└───────────────┴──────────┘

```

#### Encontrar los productos con un precio entre 3 y 4.

```sql
select nombre, precio from productos where precio between 3 and 4;
┌──────────┬────────┐
│  nombre  │ precio │
├──────────┼────────┤
│ Manzanas │ 3.0    │
│ Queso    │ 4.0    │
│ Cereal   │ 3.5    │
│ Cerveza  │ 3.8    │
└──────────┴────────┘

```

#### Listar los productos y sus categorías ordenados alfabéticamente por categoría.

```sql
select nombre, categoria from productos order by categoria;
┌────────────────────┬───────────┐
│       nombre       │ categoria │
├────────────────────┼───────────┤
│ Arroz              │ Alimentos │
│ Café               │ Bebidas   │
│ Botellas de Agua   │ Bebidas   │
│ Cerveza            │ Bebidas   │
│ Pollo              │ Carnes    │
│ Aceite de Oliva    │ Cocina    │
│ Sopa enlatada      │ Conservas │
│ Cereal             │ Desayuno  │
│ Manzanas           │ Frutas    │
│ Cepillo de Dientes │ Higiene   │
│ Jabón de Baño      │ Higiene   │
│ Papel Higiénico    │ Hogar     │
│ Detergente         │ Limpieza  │
│ Leche              │ Lácteos   │
│ Huevos             │ Lácteos   │
│ Yogurt             │ Lácteos   │
│ Queso              │ Lácteos   │
│ Pan                │ Panadería │
│ Galletas           │ Snacks    │
│ Tomates            │ Verduras  │
└────────────────────┴───────────┘
```

#### Calcular el precio total de los productos vendidos en la fecha '2024-01-19'.

```sql
select nombre, categoria from productos where not categoria='Higiene';
┌──────────────────┬───────────┐
│      nombre      │ categoria │
├──────────────────┼───────────┤
│ Arroz            │ Alimentos │
│ Leche            │ Lácteos   │
│ Pan              │ Panadería │
│ Manzanas         │ Frutas    │
│ Pollo            │ Carnes    │
│ Huevos           │ Lácteos   │
│ Yogurt           │ Lácteos   │
│ Tomates          │ Verduras  │
│ Queso            │ Lácteos   │
│ Cereal           │ Desayuno  │
│ Papel Higiénico  │ Hogar     │
│ Detergente       │ Limpieza  │
│ Galletas         │ Snacks    │
│ Aceite de Oliva  │ Cocina    │
│ Café             │ Bebidas   │
│ Sopa enlatada    │ Conservas │
│ Botellas de Agua │ Bebidas   │
│ Cerveza          │ Bebidas   │
└──────────────────┴───────────┘

```

#### Mostrar los productos que no pertenecen a la categoría "Higiene".

```sql
select categoria, count(nombre) as cantidad_total from productos group by categoria;
┌───────────┬────────────────┐
│ categoria │ cantidad_total │
├───────────┼────────────────┤
│ Alimentos │ 1              │
│ Bebidas   │ 3              │
│ Carnes    │ 1              │
│ Cocina    │ 1              │
│ Conservas │ 1              │
│ Desayuno  │ 1              │
│ Frutas    │ 1              │
│ Higiene   │ 2              │
│ Hogar     │ 1              │
│ Limpieza  │ 1              │
│ Lácteos   │ 4              │
│ Panadería │ 1              │
│ Snacks    │ 1              │
│ Verduras  │ 1              │
└───────────┴────────────────┘

```

#### Encontrar la cantidad total de productos en cada categoría.

```sql

```

#### Listar los productos que tienen un precio igual a la media de precios.

```sql
select * from productos where precio = (select avg(precio) from productos);
```

#### Calcular el precio total de los productos vendidos en cada fecha.

```sql
select fecha, sum(precio) as precio_total from productos, ventas where productos.id=ventas.id_producto group by fecha;
┌────────────┬──────────────┐
│   fecha    │ precio_total │
├────────────┼──────────────┤
│ 2024-01-17 │ 12.8         │
│ 2024-01-18 │ 6.7          │
│ 2024-01-19 │ 6.7          │
│ 2024-01-20 │ 1.2          │
└────────────┴──────────────┘


```

#### Mostrar los productos con un nombre que termina con la letra 'o'.

```sql
select categoria, count(nombre) as cantidad_total from productos group by categoria;
┌───────────┬────────────────┐
│ categoria │ cantidad_total │
├───────────┼────────────────┤
│ Alimentos │ 1              │
│ Bebidas   │ 3              │
│ Carnes    │ 1              │
│ Cocina    │ 1              │
│ Conservas │ 1              │
│ Desayuno  │ 1              │
│ Frutas    │ 1              │
│ Higiene   │ 2              │
│ Hogar     │ 1              │
│ Limpieza  │ 1              │
│ Lácteos   │ 4              │
│ Panadería │ 1              │
│ Snacks    │ 1              │
│ Verduras  │ 1              │
└───────────┴────────────────┘

```

#### Encontrar los productos que han sido vendidos en más de una fecha.

```sql
select p.id, p.nombre, v.fecha from productos as p, ventas as v where p.id = v.id_producto group by p.id having count(distinct fecha) > 1;
```

#### Listar los productos cuya categoría comienza con la letra 'L'.

```sql
select * from productos where (categoria like 'L%');
┌────┬────────────┬───────────┬────────┐
│ id │   nombre   │ categoria │ precio │
├────┼────────────┼───────────┼────────┤
│ 2  │ Leche      │ Lácteos   │ 1.8    │
│ 6  │ Huevos     │ Lácteos   │ 1.0    │
│ 7  │ Yogurt     │ Lácteos   │ 2.0    │
│ 9  │ Queso      │ Lácteos   │ 4.0    │
│ 13 │ Detergente │ Limpieza  │ 2.8    │
└────┴────────────┴───────────┴────────┘
```

#### Calcular el total de ventas para cada producto en la fecha '2024-01-17'.

```sql
select p.nombre, v.cantidad from productos as p, ventas as v where p.id=v.id_producto and fecha='2024-01-17';
┌──────────┬──────────┐
│  nombre  │ cantidad │
├──────────┼──────────┤
│ Arroz    │ 5        │
│ Leche    │ 3        │
│ Manzanas │ 2        │
│ Pollo    │ 1        │
└──────────┴──────────┘
```

#### Mostrar los productos cuyo nombre tiene al menos 5 caracteres.

```sql
select * from productos where length(nombre) >= 5;
┌────┬────────────────────┬───────────┬────────┐
│ id │       nombre       │ categoria │ precio │
├────┼────────────────────┼───────────┼────────┤
│ 1  │ Arroz              │ Alimentos │ 2.5    │
│ 2  │ Leche              │ Lácteos   │ 1.8    │
│ 4  │ Manzanas           │ Frutas    │ 3.0    │
│ 5  │ Pollo              │ Carnes    │ 5.5    │
│ 6  │ Huevos             │ Lácteos   │ 1.0    │
│ 7  │ Yogurt             │ Lácteos   │ 2.0    │
│ 8  │ Tomates            │ Verduras  │ 2.2    │
│ 9  │ Queso              │ Lácteos   │ 4.0    │
│ 10 │ Cereal             │ Desayuno  │ 3.5    │
│ 11 │ Papel Higiénico    │ Hogar     │ 1.5    │
│ 12 │ Cepillo de Dientes │ Higiene   │ 2.0    │
│ 13 │ Detergente         │ Limpieza  │ 2.8    │
│ 14 │ Galletas           │ Snacks    │ 1.7    │
│ 15 │ Aceite de Oliva    │ Cocina    │ 4.5    │
│ 17 │ Sopa enlatada      │ Conservas │ 2.3    │
│ 18 │ Jabón de Baño      │ Higiene   │ 1.2    │
│ 19 │ Botellas de Agua   │ Bebidas   │ 1.0    │
│ 20 │ Cerveza            │ Bebidas   │ 3.8    │
└────┴────────────────────┴───────────┴────────┘

```

#### Encontrar los productos que tienen un precio superior al precio máximo en la tabla "productos".

```sql
select * from productos where precio > (select avg(precio) from productos);
┌────┬─────────────────┬───────────┬────────┐
│ id │     nombre      │ categoria │ precio │
├────┼─────────────────┼───────────┼────────┤
│ 4  │ Manzanas        │ Frutas    │ 3.0    │
│ 5  │ Pollo           │ Carnes    │ 5.5    │
│ 9  │ Queso           │ Lácteos   │ 4.0    │
│ 10 │ Cereal          │ Desayuno  │ 3.5    │
│ 13 │ Detergente      │ Limpieza  │ 2.8    │
│ 15 │ Aceite de Oliva │ Cocina    │ 4.5    │
│ 16 │ Café            │ Bebidas   │ 5.0    │
│ 20 │ Cerveza         │ Bebidas   │ 3.8    │
└────┴─────────────────┴───────────┴────────┘

```
