
## Creacion de tabla

```sql
CREATE TABLE comments (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    texto TEXT NOT NULL,
    entero INTEGER NOT NULL,
    decimal REAL NOT NULL,
    fecha DATE NOT NULL,
    booleano BOOLEAN NOT NULL );
```

## Añadir informacion de la tabla