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


```sql

```


```sql

```


```sql

```


```sql

```


```sql

```


```sql

```


```sql

```


```sql

```


```sql

```


```sql

```


```sql

```


```sql

```


```sql

```


```sql

```


```sql

```


```sql

```


```sql

```


```sql

```


```sql

```


