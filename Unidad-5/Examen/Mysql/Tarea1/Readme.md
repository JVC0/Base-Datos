


```sql
CREATE DATABASE IF NOT EXISTS tienda;
USE tienda;


CREATE TABLE IF NOT EXISTS usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    edad INT,
    correo VARCHAR(50)
);

INSERT INTO usuarios (nombre, edad, correo) VALUES
('Juan', 25, 'juan@example.com'),
('María', 30, 'maria@example.com'),
('Pedro', 28, 'pedro@example.com');

CREATE TABLE IF NOT EXISTS productos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    precio DECIMAL(10, 2),
    cantidad INT
);

INSERT INTO productos (nombre, precio, cantidad) VALUES
('Camisa', 25.99, 100),
('Pantalón', 35.50, 80),
('Zapatos', 59.99, 50);

CREATE TABLE IF NOT EXISTS pedidos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    usuario_id INT,
    producto_id INT,
    cantidad INT,
    fecha_pedido DATE,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id),
    FOREIGN KEY (producto_id) REFERENCES productos(id)
);

INSERT INTO pedidos (usuario_id, producto_id, cantidad, fecha_pedido) VALUES
(1, 1, 2, '2024-03-01'),
(2, 2, 1, '2024-03-02'),
(3, 3, 3, '2024-03-03');
```


Mostrar todos los usuarios.
Mostrar todos los productos.
Mostrar todos los pedidos.
Mostrar los usuarios que tienen más de 25 años.
Mostrar los productos con un precio mayor a 50.
Mostrar los pedidos realizados el día de hoy.
Mostrar el total de productos en stock.
Mostrar el promedio de edades de los usuarios.
Mostrar los usuarios que tienen la letra 'a' en su nombre
Mostrar los productos ordenados por precio de forma descendente.
Mostrar los pedidos realizados por el usuario con ID 2.
Mostrar los usuarios ordenados por edad de forma ascendente.
Mostrar los productos con un precio entre 20 y 50.
Mostrar los usuarios que tienen un correo de dominio 'example.com'.
Mostrar los pedidos con una cantidad mayor a 2