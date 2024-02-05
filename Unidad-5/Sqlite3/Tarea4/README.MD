## Tablas inicial
```sql
SELECT * FROM Pokemon;
┌────┬────────────┬─────────┬───────┐
│ id │   nombre   │ id_tipo │ nivel │
├────┼────────────┼─────────┼───────┤
│ 1  │ Bulbasaur  │ 3       │ 10    │
│ 2  │ Charmander │ 2       │ 12    │
│ 3  │ Squirtle   │ 1       │ 8     │
│ 4  │ Pikachu    │ 4       │ 15    │
│ 5  │ Geodude    │ 5       │ 11    │
│ 6  │ Vaporeon   │ 1       │ 25    │
│ 7  │ Flareon    │ 2       │ 27    │
│ 8  │ Ivysaur    │ 3       │ 18    │
│ 9  │ Jolteon    │ 4       │ 22    │
│ 10 │ Cubone     │ 5       │ 14    │
│ 11 │ Gyarados   │ 1       │ 30    │
│ 12 │ Arcanine   │ 2       │ 35    │
│ 13 │ Exeggutor  │ 3       │ 40    │
│ 14 │ Raichu     │ 4       │ 38    │
│ 15 │ Sandslash  │ 5       │ 33    │
│ 16 │ Venusaur   │ 3       │ 45    │
│ 17 │ Charizard  │ 2       │ 50    │
│ 18 │ Blastoise  │ 1       │ 55    │
│ 19 │ Electabuzz │ 4       │ 48    │
│ 20 │ Rhydon     │ 5       │ 52    │
│ 21 │ Dragonite  │ 2       │ 60    │
│ 22 │ Flareon    │ 2       │ 65    │
│ 23 │ Venusaur   │ 3       │ 70    │
│ 24 │ Zapdos     │ 4       │ 75    │
│ 25 │ Rhydon     │ 5       │ 80    │
└────┴────────────┴─────────┴───────┘


SELECT * FROM Tipo;
┌────┬───────────┐
│ id │  nombre   │
├────┼───────────┤
│ 1  │ Agua      │
│ 2  │ Fuego     │
│ 3  │ Planta    │
│ 4  │ Eléctrico │
│ 5  │ Tierra    │
└────┴───────────┘

```





```sql
UPDATE Pokemon SET nivel=15 WHERE nombre="Bulbasaur";
SELECT * FROM Pokemon WHERE nombre="Bulbasaur";
┌────┬───────────┬─────────┬───────┐
│ id │  nombre   │ id_tipo │ nivel │
├────┼───────────┼─────────┼───────┤
│ 1  │ Bulbasaur │ 3       │ 15    │
└────┴───────────┴─────────┴───────┘
```
### Incrementar el nivel de todos los Pokémon de tipo Agua.

```sql
UPDATE pokemon SET nivel = nivel + 1 WHERE id_Tipo = (SELECT id FROM Tipo WHERE nombre = 'Agua');
SELECT * FROM  Pokemon as p,Tipo as t where p.id_tipo=t.id and t.nombre="Agua" ;
┌────┬───────────┬─────────┬───────┬────┬────────┐
│ id │  nombre   │ id_tipo │ nivel │ id │ nombre │
├────┼───────────┼─────────┼───────┼────┼────────┤
│ 3  │ Squirtle  │ 1       │ 9     │ 1  │ Agua   │
│ 6  │ Vaporeon  │ 1       │ 26    │ 1  │ Agua   │
│ 11 │ Gyarados  │ 1       │ 31    │ 1  │ Agua   │
│ 18 │ Blastoise │ 1       │ 56    │ 1  │ Agua   │
└────┴───────────┴─────────┴───────┴────┴────────┘

```


```sql
DELETE FROM Pokemon WHERE nombre= "Jynx";

```


```sql
DELETE FROM Pokemon WHERE id_tipo IN (SELECT id FROM Tipo WHERE nombre = 'Hielo');
```


```sql
SELECT * FROM Pokemon ;
┌────┬────────────┬─────────┬───────┐
│ id │   nombre   │ id_tipo │ nivel │
├────┼────────────┼─────────┼───────┤
│ 1  │ Bulbasaur  │ 3       │ 15    │
│ 2  │ Charmander │ 2       │ 12    │
│ 3  │ Squirtle   │ 1       │ 8     │
│ 4  │ Pikachu    │ 4       │ 15    │
│ 5  │ Geodude    │ 5       │ 11    │
│ 6  │ Vaporeon   │ 1       │ 25    │
│ 7  │ Flareon    │ 2       │ 27    │
│ 8  │ Ivysaur    │ 3       │ 18    │
│ 9  │ Jolteon    │ 4       │ 22    │
│ 10 │ Cubone     │ 5       │ 14    │
│ 11 │ Gyarados   │ 1       │ 30    │
│ 12 │ Arcanine   │ 2       │ 35    │
│ 13 │ Exeggutor  │ 3       │ 40    │
│ 14 │ Raichu     │ 4       │ 38    │
│ 15 │ Sandslash  │ 5       │ 33    │
│ 16 │ Venusaur   │ 3       │ 45    │
│ 17 │ Charizard  │ 2       │ 50    │
│ 18 │ Blastoise  │ 1       │ 55    │
│ 19 │ Electabuzz │ 4       │ 48    │
│ 20 │ Rhydon     │ 5       │ 52    │
│ 21 │ Dragonite  │ 2       │ 60    │
│ 22 │ Flareon    │ 2       │ 65    │
│ 23 │ Venusaur   │ 3       │ 70    │
│ 24 │ Zapdos     │ 4       │ 75    │
│ 25 │ Rhydon     │ 5       │ 80    │
└────┴────────────┴─────────┴───────┘
```


```sql
SELECT * FROM Pokemon as p, Tipo as t WHERE p.id_tipo=t.id and t.nombre ="Fuego";
┌────┬────────────┬─────────┬───────┬────┬────────┐
│ id │   nombre   │ id_tipo │ nivel │ id │ nombre │
├────┼────────────┼─────────┼───────┼────┼────────┤
│ 2  │ Charmander │ 2       │ 12    │ 2  │ Fuego  │
│ 7  │ Flareon    │ 2       │ 27    │ 2  │ Fuego  │
│ 12 │ Arcanine   │ 2       │ 35    │ 2  │ Fuego  │
│ 17 │ Charizard  │ 2       │ 50    │ 2  │ Fuego  │
│ 21 │ Dragonite  │ 2       │ 60    │ 2  │ Fuego  │
│ 22 │ Flareon    │ 2       │ 65    │ 2  │ Fuego  │
└────┴────────────┴─────────┴───────┴────┴────────┘

```


```sql
SELECT * FROM Pokemon WHERE nivel>30;
┌────┬────────────┬─────────┬───────┐
│ id │   nombre   │ id_tipo │ nivel │
├────┼────────────┼─────────┼───────┤
│ 12 │ Arcanine   │ 2       │ 35    │
│ 13 │ Exeggutor  │ 3       │ 40    │
│ 14 │ Raichu     │ 4       │ 38    │
│ 15 │ Sandslash  │ 5       │ 33    │
│ 16 │ Venusaur   │ 3       │ 45    │
│ 17 │ Charizard  │ 2       │ 50    │
│ 18 │ Blastoise  │ 1       │ 55    │
│ 19 │ Electabuzz │ 4       │ 48    │
│ 20 │ Rhydon     │ 5       │ 52    │
│ 21 │ Dragonite  │ 2       │ 60    │
│ 22 │ Flareon    │ 2       │ 65    │
│ 23 │ Venusaur   │ 3       │ 70    │
│ 24 │ Zapdos     │ 4       │ 75    │
│ 25 │ Rhydon     │ 5       │ 80    │
└────┴────────────┴─────────┴───────┘

```


```sql
SELECT * FROM Pokemon ORDER BY nivel DESC;
┌────┬────────────┬─────────┬───────┐
│ id │   nombre   │ id_tipo │ nivel │
├────┼────────────┼─────────┼───────┤
│ 25 │ Rhydon     │ 5       │ 80    │
│ 24 │ Zapdos     │ 4       │ 75    │
│ 23 │ Venusaur   │ 3       │ 70    │
│ 22 │ Flareon    │ 2       │ 65    │
│ 21 │ Dragonite  │ 2       │ 60    │
│ 18 │ Blastoise  │ 1       │ 55    │
│ 20 │ Rhydon     │ 5       │ 52    │
│ 17 │ Charizard  │ 2       │ 50    │
│ 19 │ Electabuzz │ 4       │ 48    │
│ 16 │ Venusaur   │ 3       │ 45    │
│ 13 │ Exeggutor  │ 3       │ 40    │
│ 14 │ Raichu     │ 4       │ 38    │
│ 12 │ Arcanine   │ 2       │ 35    │
│ 15 │ Sandslash  │ 5       │ 33    │
│ 11 │ Gyarados   │ 1       │ 30    │
│ 7  │ Flareon    │ 2       │ 27    │
│ 6  │ Vaporeon   │ 1       │ 25    │
│ 9  │ Jolteon    │ 4       │ 22    │
│ 8  │ Ivysaur    │ 3       │ 18    │
│ 1  │ Bulbasaur  │ 3       │ 15    │
│ 4  │ Pikachu    │ 4       │ 15    │
│ 10 │ Cubone     │ 5       │ 14    │
│ 2  │ Charmander │ 2       │ 12    │
│ 5  │ Geodude    │ 5       │ 11    │
│ 3  │ Squirtle   │ 1       │ 8     │
└────┴────────────┴─────────┴───────┘

```


```sql
SELECT Count(id_tipo),t.nombre FROM Pokemon as p,Tipo as t WHERE p.id_tipo=t.id GROUP BY t.nombre;
┌────────────────┬───────────┐
│ Count(id_tipo) │  nombre   │
├────────────────┼───────────┤
│ 4              │ Agua      │
│ 5              │ Eléctrico │
│ 6              │ Fuego     │
│ 5              │ Planta    │
│ 5              │ Tierra    │
└────────────────┴───────────┘

```


```sql
SELECT * FROM Pokemon as p,Tipo as t WHERE p.id_tipo=t.id and p.nombre="Bulbasaur";
┌────┬───────────┬─────────┬───────┬────┬────────┐
│ id │  nombre   │ id_tipo │ nivel │ id │ nombre │
├────┼───────────┼─────────┼───────┼────┼────────┤
│ 1  │ Bulbasaur │ 3       │ 15    │ 3  │ Planta │
└────┴───────────┴─────────┴───────┴────┴────────┘
```


```sql
SELECT AVG(nivel) FROM Pokemon;
┌────────────┐
│ AVG(nivel) │
├────────────┤
│ 37.72      │
└────────────┘
```


```sql
UPDATE Pokemon SET nombre="Bulbasaur Nv. 15" WHERE nombre="Bulbasaur";
sqlite> SELECT nombre FROM Pokemon where nombre="Bulbasaur Nv. 15";
┌──────────────────┐
│      nombre      │
├──────────────────┤
│ Bulbasaur Nv. 15 │
└──────────────────┘

```


```sql
SELECT * FROM  Pokemon where nivel= 50;
┌────┬───────────┬─────────┬───────┐
│ id │  nombre   │ id_tipo │ nivel │
├────┼───────────┼─────────┼───────┤
│ 17 │ Charizard │ 2       │ 50    │
└────┴───────────┴─────────┴───────┘

```


```sql
DELETE FROM Pokemon  WHERE nivel=40;


```


```sql
SELECT p.nombre,t.nombre,p.nivel FROM Pokemon as p, Tipo as t where p.id_tipo=t.id and p.nombre="Pikachu";
┌─────────┬───────────┬───────┐
│ nombre  │  nombre   │ nivel │
├─────────┼───────────┼───────┤
│ Pikachu │ Eléctrico │ 15    │
└─────────┴───────────┴───────┘
```


```sql
SELECT * FROM  Pokemon as p,Tipo as t where p.id_tipo=t.id and p.nivel>20;
┌────┬────────────┬─────────┬───────┬────┬───────────┐
│ id │   nombre   │ id_tipo │ nivel │ id │  nombre   │
├────┼────────────┼─────────┼───────┼────┼───────────┤
│ 6  │ Vaporeon   │ 1       │ 25    │ 1  │ Agua      │
│ 7  │ Flareon    │ 2       │ 27    │ 2  │ Fuego     │
│ 9  │ Jolteon    │ 4       │ 22    │ 4  │ Eléctrico │
│ 11 │ Gyarados   │ 1       │ 30    │ 1  │ Agua      │
│ 12 │ Arcanine   │ 2       │ 35    │ 2  │ Fuego     │
│ 14 │ Raichu     │ 4       │ 38    │ 4  │ Eléctrico │
│ 15 │ Sandslash  │ 5       │ 33    │ 5  │ Tierra    │
│ 16 │ Venusaur   │ 3       │ 45    │ 3  │ Planta    │
│ 17 │ Charizard  │ 2       │ 50    │ 2  │ Fuego     │
│ 18 │ Blastoise  │ 1       │ 55    │ 1  │ Agua      │
│ 19 │ Electabuzz │ 4       │ 48    │ 4  │ Eléctrico │
│ 20 │ Rhydon     │ 5       │ 52    │ 5  │ Tierra    │
│ 21 │ Dragonite  │ 2       │ 60    │ 2  │ Fuego     │
│ 22 │ Flareon    │ 2       │ 65    │ 2  │ Fuego     │
│ 23 │ Venusaur   │ 3       │ 70    │ 3  │ Planta    │
│ 24 │ Zapdos     │ 4       │ 75    │ 4  │ Eléctrico │
│ 25 │ Rhydon     │ 5       │ 80    │ 5  │ Tierra    │
└────┴────────────┴─────────┴───────┴────┴───────────┘
```


```sql
UPDATE Tipo SET nombre="Eléctrico/Azul" WHERE id = (SELECT id_tipo FROM Pokemon WHERE nombre="Pikachu");

```


```sql

SELECT * FROM Pokemon as p, Tipo as t WHERE p.id_tipo=t.id and p.nombre="Pikachu";
┌────┬─────────┬─────────┬───────┬────┬────────────────┐
│ id │ nombre  │ id_tipo │ nivel │ id │     nombre     │
├────┼─────────┼─────────┼───────┼────┼────────────────┤
│ 4  │ Pikachu │ 4       │ 15    │ 4  │ Eléctrico/Azul │
└────┴─────────┴─────────┴───────┴────┴────────────────┘

```


```sql
DELETE FROM Pokemon WHERE id_tipo IN (SELECT id FROM Tipo WHERE nombre = 'Planta');
SELECT * FROM Pokemon ;
┌────┬────────────┬─────────┬───────┐
│ id │   nombre   │ id_tipo │ nivel │
├────┼────────────┼─────────┼───────┤
│ 2  │ Charmander │ 2       │ 12    │
│ 3  │ Squirtle   │ 1       │ 8     │
│ 4  │ Pikachu    │ 4       │ 15    │
│ 5  │ Geodude    │ 5       │ 11    │
│ 6  │ Vaporeon   │ 1       │ 25    │
│ 7  │ Flareon    │ 2       │ 27    │
│ 9  │ Jolteon    │ 4       │ 22    │
│ 10 │ Cubone     │ 5       │ 14    │
│ 11 │ Gyarados   │ 1       │ 30    │
│ 12 │ Arcanine   │ 2       │ 35    │
│ 14 │ Raichu     │ 4       │ 38    │
│ 15 │ Sandslash  │ 5       │ 33    │
│ 17 │ Charizard  │ 2       │ 50    │
│ 18 │ Blastoise  │ 1       │ 55    │
│ 19 │ Electabuzz │ 4       │ 48    │
│ 20 │ Rhydon     │ 5       │ 52    │
│ 21 │ Dragonite  │ 2       │ 60    │
│ 22 │ Flareon    │ 2       │ 65    │
│ 24 │ Zapdos     │ 4       │ 75    │
│ 25 │ Rhydon     │ 5       │ 80    │
└────┴────────────┴─────────┴───────┘

```


```sql
SELECT nombre FROM Pokemon ORDER BY nombre ASC;
┌────────────┐
│   nombre   │
├────────────┤
│ Arcanine   │
│ Blastoise  │
│ Charizard  │
│ Charmander │
│ Cubone     │
│ Dragonite  │
│ Electabuzz │
│ Flareon    │
│ Flareon    │
│ Geodude    │
│ Gyarados   │
│ Jolteon    │
│ Pikachu    │
│ Raichu     │
│ Rhydon     │
│ Rhydon     │
│ Sandslash  │
│ Squirtle   │
│ Vaporeon   │
│ Zapdos     │
└────────────┘


```

```sql
SELECT * FROM Pokemon  where(nombre like '%sa%');
┌────┬───────────┬─────────┬───────┐
│ id │  nombre   │ id_tipo │ nivel │
├────┼───────────┼─────────┼───────┤
│ 15 │ Sandslash │ 5       │ 33    │
└────┴───────────┴─────────┴───────┘

```

```sql
SELECT * FROM Pokemon WHERE nivel IN (40, 50, 60);
┌────┬───────────┬─────────┬───────┐
│ id │  nombre   │ id_tipo │ nivel │
├────┼───────────┼─────────┼───────┤
│ 17 │ Charizard │ 2       │ 50    │
│ 21 │ Dragonite │ 2       │ 60    │
└────┴───────────┴─────────┴───────┘

```

```sql
SELECT * FROM Pokemon as p, Tipo as t where p.id_tipo=t.id AND p.nombre like 'C%' AND t.nombre='Fuego';
┌────┬────────────┬─────────┬───────┬────┬────────┐
│ id │   nombre   │ id_tipo │ nivel │ id │ nombre │
├────┼────────────┼─────────┼───────┼────┼────────┤
│ 2  │ Charmander │ 2       │ 12    │ 2  │ Fuego  │
│ 17 │ Charizard  │ 2       │ 50    │ 2  │ Fuego  │
└────┴────────────┴─────────┴───────┴────┴────────┘
```

```sql
SELECT p.nombre, t.nombre AS tipo
FROM Pokemon AS p
JOIN Tipo AS t ON p.id_tipo = t.id
WHERE p.nivel > (SELECT AVG(nivel) FROM Pokemon);
┌────────────┬────────────────┐
│   nombre   │      tipo      │
├────────────┼────────────────┤
│ Raichu     │ Eléctrico/Azul │
│ Charizard  │ Fuego          │
│ Blastoise  │ Agua           │
│ Electabuzz │ Eléctrico/Azul │
│ Rhydon     │ Tierra         │
│ Dragonite  │ Fuego          │
│ Flareon    │ Fuego          │
│ Zapdos     │ Eléctrico/Azul │
│ Rhydon     │ Tierra         │
└────────────┴────────────────┘

```


