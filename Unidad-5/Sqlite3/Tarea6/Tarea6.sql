	-- Selección de libros cuyo título comienza con "H".
	SELECT * FROM libro where titulo REGEXP '^H';

	-- Libros escritos por autores cuyos nombres terminan con "ing".
	SELECT * FROM autor where nombre REGEXP 'ing$';
	┌────┬──────────────┐
	│ id │    nombre    │
	├────┼──────────────┤
	│ 1  │ J.K. Rowling │
	│ 2  │ Stephen King │
	└────┴──────────────┘

	-- Libros con títulos que contienen la palabra "and" en cualquier posición.
	SELECT * FROM libro where titulo REGEXP 'and';
	┌────────┬──────────────────────────────────┬──────────┬─────────────────────────┬────────┐
	│ codigo │              titulo              │ autor_id │        editorial        │ precio │
	├────────┼──────────────────────────────────┼──────────┼─────────────────────────┼────────┤
	│ 15     │ The Old Man and the Sea          │ 17       │ Charles Scribner's Sons │ 18.95  │
	│ 20     │ Alice's Adventures in Wonderland │ 22       │ Macmillan               │ 11.5   │
	│ 28     │ War and Peace                    │ 26       │ The Russian Messenger   │ 33.25  │
	│ 29     │ Crime and Punishment             │ 30       │ The Russian Messenger   │ 19.99  │
	└────────┴──────────────────────────────────┴──────────┴─────────────────────────┴────────┘


	-- Libros cuyo título comienza con una vocal.

	SELECT * FROM libro where titulo REGEXP '^[aeiouAEIOU]';
	┌────────┬──────────────────────────────────┬──────────┬───────────────────────┬────────┐
	│ codigo │              titulo              │ autor_id │       editorial       │ precio │
	├────────┼──────────────────────────────────┼──────────┼───────────────────────┼────────┤
	│ 4      │ One Hundred Years of Solitude    │ 9        │ Harper & Row          │ 22.5   │
	│ 20     │ Alice's Adventures in Wonderland │ 22       │ Macmillan             │ 11.5   │
	│ 24     │ Anna Karenina                    │ 26       │ The Russian Messenger │ 23.99  │
	└────────┴──────────────────────────────────┴──────────┴────── ────────────────┴────────┘

	-- Libros cuyo autor tiene al menos  una vocal repetida.
	SELECT * FROM autor as a,libro as l WHERE a.id=l.autor_id and nombre REGEXP '[aeiouAEIOU]{2}';
┌────┬───────────────┬────────┬─────────────────┬──────────┬─────────────────┬────────┐
│ id │    nombre     │ codigo │     titulo      │ autor_id │    editorial    │ precio │
├────┼───────────────┼────────┼─────────────────┼──────────┼─────────────────┼────────┤
│ 3  │ George Orwell │ 5      │ Brave New World │ 3        │ Chatto & Windus │ 17.99  │
└────┴───────────────┴────────┴─────────────────┴──────────┴─────────────────┴────────┘



	-- Libros con precios que tienen dos dígitos decimales exactos.
SELECT * FROM libro WHERE precio REGEXP '\.[0-9]{2}';
┌────────┬───────────────────────────────────┬──────────┬─────────────────────────────────────────────┬────────┐
│ codigo │              titulo               │ autor_id │                  editorial                  │ precio │
├────────┼───────────────────────────────────┼──────────┼─────────────────────────────────────────────┼────────┤
│ 1      │ The Great Gatsby                  │ 6        │ Charles Scribner's Sons                     │ 20.99  │
│ 2      │ To Kill a Mockingbird             │ 7        │ J.B. Lippincott & Co.                       │ 15.95  │
│ 3      │ The Catcher in the Rye            │ 8        │ Little, Brown and Company                   │ 18.75  │
│ 5      │ Brave New World                   │ 3        │ Chatto & Windus                             │ 17.99  │
│ 6      │ The Hobbit                        │ 10       │ George Allen & Unwin                        │ 24.99  │
│ 8      │ The Chronicles of Narnia          │ 11       │ Geoffrey Bles                               │ 28.99  │
│ 9      │ The Odyssey                       │ 12       │ Homer                                       │ 14.95  │
│ 10     │ The Iliad                         │ 12       │ Homer                                       │ 14.95  │
│ 11     │ Moby-Dick                         │ 13       │ Harper & Brothers                           │ 19.99  │
│ 12     │ The Road                          │ 14       │ Alfred A. Knopf                             │ 16.75  │
│ 14     │ Wuthering Heights                 │ 16       │ Emily Brontë                                │ 12.99  │
│ 15     │ The Old Man and the Sea           │ 17       │ Charles Scribner's Sons                     │ 18.95  │
│ 16     │ The Count of Monte Cristo         │ 18       │ Pétion                                      │ 27.99  │
│ 18     │ The Adventures of Sherlock Holmes │ 20       │ George Newnes                               │ 16.99  │
│ 19     │ Frankenstein                      │ 21       │ Lackington, Hughes, Harding, Mavor, & Jones │ 13.25  │
│ 21     │ The Prince                        │ 23       │ Niccolò Machiavelli                         │ 10.99  │
│ 22     │ Don Quixote                       │ 24       │ Francisco de Robles                         │ 26.75  │
│ 24     │ Anna Karenina                     │ 26       │ The Russian Messenger                       │ 23.99  │
│ 25     │ Les Misérables                    │ 27       │ A. Lacroix, Verboeckhoven & Cie.            │ 29.75  │
│ 26     │ The Jungle Book                   │ 28       │ Macmillan Publishers                        │ 14.99  │
│ 28     │ War and Peace                     │ 26       │ The Russian Messenger                       │ 33.25  │
│ 29     │ Crime and Punishment              │ 30       │ The Russian Messenger                       │ 19.99  │
└────────┴───────────────────────────────────┴──────────┴─────────────────────────────────────────────┴────────┘

	-- Libros cuyos títulos tienen al menos tres palabras.
SELECT titulo FROM libro WHERE titulo REGEXP '\s{3}+';

┌────────┬───────────────────────────────────┬──────────┬───────────────────────────┬────────┐
│ codigo │              titulo               │ autor_id │         editorial         │ precio │
├────────┼───────────────────────────────────┼──────────┼───────────────────────────┼────────┤
│ 1      │ The Great Gatsby                  │ 6        │ Charles Scribner's Sons   │ 20.99  │
│ 2      │ To Kill a Mockingbird             │ 7        │ J.B. Lippincott & Co.     │ 15.95  │
│ 3      │ The Catcher in the Rye            │ 8        │ Little, Brown and Company │ 18.75  │
│ 4      │ One Hundred Years of Solitude     │ 9        │ Harper & Row              │ 22.5   │
│ 5      │ Brave New World                   │ 3        │ Chatto & Windus           │ 17.99  │
│ 7      │ The Lord of the Rings             │ 10       │ George Allen & Unwin      │ 35.5   │
│ 8      │ The Chronicles of Narnia          │ 11       │ Geoffrey Bles             │ 28.99  │
│ 13     │ The Grapes of Wrath               │ 15       │ The Viking Press          │ 21.5   │
│ 15     │ The Old Man and the Sea           │ 17       │ Charles Scribner's Sons   │ 18.95  │
│ 16     │ The Count of Monte Cristo         │ 18       │ Pétion                    │ 27.99  │
│ 17     │ The Picture of Dorian Gray        │ 19       │ Ward, Lock, and Company   │ 14.5   │
│ 18     │ The Adventures of Sherlock Holmes │ 20       │ George Newnes             │ 16.99  │
│ 20     │ Alice's Adventures in Wonderland  │ 22       │ Macmillan                 │ 11.5   │
│ 23     │ The Divine Comedy                 │ 25       │ Dante Alighieri           │ 20.5   │
│ 26     │ The Jungle Book                   │ 28       │ Macmillan Publishers      │ 14.99  │
│ 27     │ The Wind in the Willows           │ 29       │ Methuen & Co.             │ 17.5   │
│ 28     │ War and Peace                     │ 26       │ The Russian Messenger     │ 33.25  │
│ 29     │ Crime and Punishment              │ 30       │ The Russian Messenger     │ 19.99  │
└────────┴───────────────────────────────────┴──────────┴───────────────────────────┴────────┘
######################################################################################################################
	-- Obtener todos los autores cuyo nombre empieza con la letra "A":
SELECT * FROM autor WHERE nombre REGEXP '^A';
┌────┬─────────────────┐
│ id │     nombre      │
├────┼─────────────────┤
│ 5  │ Agatha Christie │
└────┴─────────────────┘

	-- Seleccionar los libros cuyo título contiene la palabra "SQL":
SELECT * FROM libro WHERE titulo REGEXP 'SQL';

	-- Obtener todos los autores cuyo nombre termina con "ez":
SELECT * FROM autor WHERE nombre REGEXP 'ez$';

	-- Obtener todos los autores cuyo nombre tiene al menos 5 caracteres:
SELECT * FROM autor WHERE nombre REGEXP '.{5}';
┌────┬─────────────────┐
│ id │     nombre      │
├────┼─────────────────┤
│ 1  │ J.K. Rowling    │
│ 2  │ Stephen King    │
│ 3  │ George Orwell   │
│ 4  │ Jane Austen     │
│ 5  │ Agatha Christie │
└────┴─────────────────┘

	-- Seleccionar los libros cuya editorial es diferente de "EditorialX":
SELECT * FROM libro WHERE editorial not REGEXP '^EditorialX$';
┌────────┬───────────────────────────────────┬──────────┬─────────────────────────────────────────────┬────────┐
│ codigo │              titulo               │ autor_id │                  editorial                  │ precio │
├────────┼───────────────────────────────────┼──────────┼─────────────────────────────────────────────┼────────┤
│ 1      │ The Great Gatsby                  │ 6        │ Charles Scribner's Sons                     │ 20.99  │
│ 2      │ To Kill a Mockingbird             │ 7        │ J.B. Lippincott & Co.                       │ 15.95  │
│ 3      │ The Catcher in the Rye            │ 8        │ Little, Brown and Company                   │ 18.75  │
│ 4      │ One Hundred Years of Solitude     │ 9        │ Harper & Row                                │ 22.5   │
│ 5      │ Brave New World                   │ 3        │ Chatto & Windus                             │ 17.99  │
│ 6      │ The Hobbit                        │ 10       │ George Allen & Unwin                        │ 24.99  │
│ 7      │ The Lord of the Rings             │ 10       │ George Allen & Unwin                        │ 35.5   │
│ 8      │ The Chronicles of Narnia          │ 11       │ Geoffrey Bles                               │ 28.99  │
│ 9      │ The Odyssey                       │ 12       │ Homer                                       │ 14.95  │
│ 10     │ The Iliad                         │ 12       │ Homer                                       │ 14.95  │
│ 11     │ Moby-Dick                         │ 13       │ Harper & Brothers                           │ 19.99  │
│ 12     │ The Road                          │ 14       │ Alfred A. Knopf                             │ 16.75  │
│ 13     │ The Grapes of Wrath               │ 15       │ The Viking Press                            │ 21.5   │
│ 14     │ Wuthering Heights                 │ 16       │ Emily Brontë                                │ 12.99  │
│ 15     │ The Old Man and the Sea           │ 17       │ Charles Scribner's Sons                     │ 18.95  │
│ 16     │ The Count of Monte Cristo         │ 18       │ Pétion                                      │ 27.99  │
│ 17     │ The Picture of Dorian Gray        │ 19       │ Ward, Lock, and Company                     │ 14.5   │
│ 18     │ The Adventures of Sherlock Holmes │ 20       │ George Newnes                               │ 16.99  │
│ 19     │ Frankenstein                      │ 21       │ Lackington, Hughes, Harding, Mavor, & Jones │ 13.25  │
│ 20     │ Alice's Adventures in Wonderland  │ 22       │ Macmillan                                   │ 11.5   │
│ 21     │ The Prince                        │ 23       │ Niccolò Machiavelli                         │ 10.99  │
│ 22     │ Don Quixote                       │ 24       │ Francisco de Robles                         │ 26.75  │
│ 23     │ The Divine Comedy                 │ 25       │ Dante Alighieri                             │ 20.5   │
│ 24     │ Anna Karenina                     │ 26       │ The Russian Messenger                       │ 23.99  │
│ 25     │ Les Misérables                    │ 27       │ A. Lacroix, Verboeckhoven & Cie.            │ 29.75  │
│ 26     │ The Jungle Book                   │ 28       │ Macmillan Publishers                        │ 14.99  │
│ 27     │ The Wind in the Willows           │ 29       │ Methuen & Co.                               │ 17.5   │
│ 28     │ War and Peace                     │ 26       │ The Russian Messenger                       │ 33.25  │
│ 29     │ Crime and Punishment              │ 30       │ The Russian Messenger                       │ 19.99  │
└────────┴───────────────────────────────────┴──────────┴─────────────────────────────────────────────┴────────┘

	-- Obtener todos los autores cuyo nombre contiene al menos una vocal:
SELECT * FROM autor WHERE nombre REGEXP '[a-z]+';
┌────┬─────────────────┐
│ id │     nombre      │
├────┼─────────────────┤
│ 1  │ J.K. Rowling    │
│ 2  │ Stephen King    │
│ 3  │ George Orwell   │
│ 4  │ Jane Austen     │
│ 5  │ Agatha Christie │
└────┴─────────────────┘

	-- Seleccionar los libros cuyo título comienza con una letra mayúscula:
SELECT titulo FROM libro WHERE titulo REGEXP '^[A-Z]';
┌───────────────────────────────────┐
│              titulo               │
├───────────────────────────────────┤
│ The Great Gatsby                  │
│ To Kill a Mockingbird             │
│ The Catcher in the Rye            │
│ One Hundred Years of Solitude     │
│ Brave New World                   │
│ The Hobbit                        │
│ The Lord of the Rings             │
│ The Chronicles of Narnia          │
│ The Odyssey                       │
│ The Iliad                         │
│ Moby-Dick                         │
│ The Road                          │
│ The Grapes of Wrath               │
│ Wuthering Heights                 │
│ The Old Man and the Sea           │
│ The Count of Monte Cristo         │
│ The Picture of Dorian Gray        │
│ The Adventures of Sherlock Holmes │
│ Frankenstein                      │
│ Alice's Adventures in Wonderland  │
│ The Prince                        │
│ Don Quixote                       │
│ The Divine Comedy                 │
│ Anna Karenina                     │
│ Les Misérables                    │
│ The Jungle Book                   │
│ The Wind in the Willows           │
│ War and Peace                     │
│ Crime and Punishment              │
└───────────────────────────────────┘
	-- Obtener todos los autores cuyo nombre no contiene la letra "r":
SELECT * FROM autor WHERE nombre not REGEXP '[rR]';
┌────┬──────────────┐
│ id │    nombre    │
├────┼──────────────┤
│ 2  │ Stephen King │
│ 4  │ Jane Austen  │
└────┴──────────────┘

	-- Seleccionar los libros cuya editorial empieza con la letra "P":
SELECT editorial FROM libro where editorial REGEXP '^[P]';
┌───────────┐
│ editorial │
├───────────┤
│ Pétion    │
└───────────┘

	-- Obtener todos los autores cuyo nombre tiene exactamente 6 caracteres:
SELECT nombre FROM  autor WHERE nombre REGEXP '^.{6}$';

	-- Seleccionar los libros cuyo título contiene al menos un número:
SELECT titulo FROM  libro where in titulo  REGEXP '\d';
	-- Obtener todos los autores cuyo nombre inicia con una vocal:
SELECT nombre FROM  autor WHERE nombre REGEXP '^[aeiouAEIOU]';
┌─────────────────┐
│     nombre      │
├─────────────────┤
│ Agatha Christie │
└─────────────────┘
	-- Obtener todos los autores cuyo nombre no contiene espacios en blanco:
SELECT nombre FROM  autor WHERE nombre not REGEXP '\s';
	-- Seleccionar los libros cuyo título termina con una vocal:
SELECT titulo from libro where titulo REGEXP '[aeiou]$';
┌───────────────────────────────┐
│            titulo             │
├───────────────────────────────┤
│ The Catcher in the Rye        │
│ One Hundred Years of Solitude │
│ The Chronicles of Narnia      │
│ The Old Man and the Sea       │
│ The Count of Monte Cristo     │
│ The Prince                    │
│ Don Quixote                   │
│ Anna Karenina                 │
│ War and Peace                 │
└───────────────────────────────┘
	-- Obtener todos los autores cuyo nombre contiene la secuencia "er":
SELECT nombre FROM  autor WHERE nombre REGEXP 'er';

	-- Seleccionar los libros cuyo título empieza con la palabra "The":
SELECT titulo from libro where titulo REGEXP '^The';
┌───────────────────────────────────┐
│              titulo               │
├───────────────────────────────────┤
│ The Great Gatsby                  │
│ The Catcher in the Rye            │
│ The Hobbit                        │
│ The Lord of the Rings             │
│ The Chronicles of Narnia          │
│ The Odyssey                       │
│ The Iliad                         │
│ The Road                          │
│ The Grapes of Wrath               │
│ The Old Man and the Sea           │
│ The Count of Monte Cristo         │
│ The Picture of Dorian Gray        │
│ The Adventures of Sherlock Holmes │
│ The Prince                        │
│ The Divine Comedy                 │
│ The Jungle Book                   │
│ The Wind in the Willows           │
└───────────────────────────────────┘
	-- Obtener todos los autores cuyo nombre tiene al menos una letra mayúscula:
SELECT nombre FROM  autor WHERE nombre REGEXP '[A-Z]';
┌─────────────────┐
│     nombre      │
├─────────────────┤
│ J.K. Rowling    │
│ Stephen King    │
│ George Orwell   │
│ Jane Austen     │
│ Agatha Christie │
└─────────────────┘

	-- Seleccionar los libros cuyo precio es un número decimal con exactamente dos decimales:
SELECT precio FROM libro WHERE precio REGEXP '.[0-9]{2}';
┌────────┐
│ precio │
├────────┤
│ 20.99  │
│ 15.95  │
│ 18.75  │
│ 17.99  │
│ 24.99  │
│ 28.99  │
│ 14.95  │
│ 14.95  │
│ 19.99  │
│ 16.75  │
│ 12.99  │
│ 18.95  │
│ 27.99  │
│ 16.99  │
│ 13.25  │
│ 10.99  │
│ 26.75  │
│ 23.99  │
│ 29.75  │
│ 14.99  │
│ 33.25  │
│ 19.99  │
└────────┘

	-- Obtener todos los autores cuyo nombre no contiene números:
SELECT nombre FROM  autor WHERE nombre REGEXP '\D';
┌─────────────────┐
│     nombre      │
├─────────────────┤
│ J.K. Rowling    │
│ Stephen King    │
│ George Orwell   │
│ Jane Austen     │
│ Agatha Christie │
└─────────────────┘

	-- Seleccionar los libros cuyo título contiene al menos tres vocales:
SELECT titulo from libro where titulo REGEXP '[aeiouAEIOU]{3}';
	-- Obtener todos los autores cuyo nombre inicia con una consonante:
SELECT nombre from autor where nombre not REGEXP '^[aeiouAEIOU]';
┌───────────────┐
│    nombre     │
├───────────────┤
│ J.K. Rowling  │
│ Stephen King  │
│ George Orwell │
│ Jane Austen   │
└───────────────┘

	-- Seleccionar los libros cuyo título no contiene la palabra "Science":
SELECT titulo from libro where titulo not REGEXP 'Science';
┌───────────────────────────────────┐
│              titulo               │
├───────────────────────────────────┤
│ The Great Gatsby                  │
│ To Kill a Mockingbird             │
│ The Catcher in the Rye            │
│ One Hundred Years of Solitude     │
│ Brave New World                   │
│ The Hobbit                        │
│ The Lord of the Rings             │
│ The Chronicles of Narnia          │
│ The Odyssey                       │
│ The Iliad                         │
│ Moby-Dick                         │
│ The Road                          │
│ The Grapes of Wrath               │
│ Wuthering Heights                 │
│ The Old Man and the Sea           │
│ The Count of Monte Cristo         │
│ The Picture of Dorian Gray        │
│ The Adventures of Sherlock Holmes │
│ Frankenstein                      │
│ Alice's Adventures in Wonderland  │
│ The Prince                        │
│ Don Quixote                       │
│ The Divine Comedy                 │
│ Anna Karenina                     │
│ Les Misérables                    │
│ The Jungle Book                   │
│ The Wind in the Willows           │
│ War and Peace                     │
│ Crime and Punishment              │
└───────────────────────────────────┘

	-- Obtener todos los autores cuyo nombre tiene al menos una letra repetida consecutivamente:
SELECT nombre FROM autor WHERE  nombre  REGEXP '[a-zA-Z]{2}';
	-- Obtener todos los autores cuyo nombre empieza con "M" o termina con "n":
SELECT nombre  FROM autor where nombre regexp '^[Mm]';


	-- Obtener todos los autores cuyo nombre no contiene caracteres especiales:
    SELECT nombre FROM autor where nombre REGEXP '[a-zA-Z0-1]';
┌─────────────────┐
│     nombre      │
├─────────────────┤
│ J.K. Rowling    │
│ Stephen King    │
│ George Orwell   │
│ Jane Austen     │
│ Agatha Christie │
└─────────────────┘
