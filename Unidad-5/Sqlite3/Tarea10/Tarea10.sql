--Proporciona una consulta que muestre solo los clientes de Brazil.
Select * from customers WHERE Country = "Brazil";
┌────────────┬───────────┬───────────┬──────────────────────────────────────────────────┬─────────────────────────────────┬─────────────────────┬───────┬─────────┬────────────┬────────────────────┬────────────────────┬───────────────────────────────┬──────────────┐
│ CustomerId │ FirstName │ LastName  │                     Company                      │             Address             │        City         │ State │ Country │ PostalCode │       Phone        │        Fax         │             Email             │ SupportRepId │
├────────────┼───────────┼───────────┼──────────────────────────────────────────────────┼─────────────────────────────────┼─────────────────────┼───────┼─────────┼────────────┼────────────────────┼────────────────────┼───────────────────────────────┼──────────────┤
│ 1          │ Luís      │ Gonçalves │ Embraer - Empresa Brasileira de Aeronáutica S.A. │ Av. Brigadeiro Faria Lima, 2170 │ São José dos Campos │ SP    │ Brazil  │ 12227-000  │ +55 (12) 3923-5555 │ +55 (12) 3923-5566 │ luisg@embraer.com.br          │ 3            │
│ 10         │ Eduardo   │ Martins   │ Woodstock Discos                                 │ Rua Dr. Falcão Filho, 155       │ São Paulo           │ SP    │ Brazil  │ 01007-010  │ +55 (11) 3033-5446 │ +55 (11) 3033-4564 │ eduardo@woodstock.com.br      │ 4            │
│ 11         │ Alexandre │ Rocha     │ Banco do Brasil S.A.                             │ Av. Paulista, 2022              │ São Paulo           │ SP    │ Brazil  │ 01310-200  │ +55 (11) 3055-3278 │ +55 (11) 3055-8131 │ alero@uol.com.br              │ 5            │
│ 12         │ Roberto   │ Almeida   │ Riotur                                           │ Praça Pio X, 119                │ Rio de Janeiro      │ RJ    │ Brazil  │ 20040-020  │ +55 (21) 2271-7000 │ +55 (21) 2271-7070 │ roberto.almeida@riotur.gov.br │ 3            │
│ 13         │ Fernanda  │ Ramos     │                                                  │ Qe 7 Bloco G                    │ Brasília            │ DF    │ Brazil  │ 71020-677  │ +55 (61) 3363-5547 │ +55 (61) 3363-7855 │ fernadaramos4@uol.com.br      │ 4            │
└────────────┴───────────┴───────────┴──────────────────────────────────────────────────┴─────────────────────────────────┴─────────────────────┴───────┴─────────┴────────────┴────────────────────┴────────────────────┴───────────────────────────────┴──────────────┘

--Proporciona una consulta que muestre las facturas de clientes que son de Brazil. La tabla resultante debe mostrar el nombre completo del cliente, ID de factura, fecha de la factura y país de facturación.
Select c.FirstName,c.LastName,i.InvoiceId,i.InvoiceDate,i.BillingCountry from invoices as i JOIN customers as c on c.CustomerId=i.CustomerId and c.Country="Brazil";
┌───────────┬───────────┬───────────┬─────────────────────┬────────────────┐
│ FirstName │ LastName  │ InvoiceId │     InvoiceDate     │ BillingCountry │
├───────────┼───────────┼───────────┼─────────────────────┼────────────────┤
│ Luís      │ Gonçalves │ 98        │ 2010-03-11 00:00:00 │ Brazil         │
│ Luís      │ Gonçalves │ 121       │ 2010-06-13 00:00:00 │ Brazil         │
│ Luís      │ Gonçalves │ 143       │ 2010-09-15 00:00:00 │ Brazil         │
│ Luís      │ Gonçalves │ 195       │ 2011-05-06 00:00:00 │ Brazil         │
│ Luís      │ Gonçalves │ 316       │ 2012-10-27 00:00:00 │ Brazil         │
│ Luís      │ Gonçalves │ 327       │ 2012-12-07 00:00:00 │ Brazil         │
│ Luís      │ Gonçalves │ 382       │ 2013-08-07 00:00:00 │ Brazil         │
│ Eduardo   │ Martins   │ 25        │ 2009-04-09 00:00:00 │ Brazil         │
│ Eduardo   │ Martins   │ 154       │ 2010-11-14 00:00:00 │ Brazil         │
│ Eduardo   │ Martins   │ 177       │ 2011-02-16 00:00:00 │ Brazil         │
│ Eduardo   │ Martins   │ 199       │ 2011-05-21 00:00:00 │ Brazil         │
│ Eduardo   │ Martins   │ 251       │ 2012-01-09 00:00:00 │ Brazil         │
│ Eduardo   │ Martins   │ 372       │ 2013-07-02 00:00:00 │ Brazil         │
│ Eduardo   │ Martins   │ 383       │ 2013-08-12 00:00:00 │ Brazil         │
│ Alexandre │ Rocha     │ 57        │ 2009-09-06 00:00:00 │ Brazil         │
│ Alexandre │ Rocha     │ 68        │ 2009-10-17 00:00:00 │ Brazil         │
│ Alexandre │ Rocha     │ 123       │ 2010-06-17 00:00:00 │ Brazil         │
│ Alexandre │ Rocha     │ 252       │ 2012-01-22 00:00:00 │ Brazil         │
│ Alexandre │ Rocha     │ 275       │ 2012-04-25 00:00:00 │ Brazil         │
│ Alexandre │ Rocha     │ 297       │ 2012-07-28 00:00:00 │ Brazil         │
│ Alexandre │ Rocha     │ 349       │ 2013-03-18 00:00:00 │ Brazil         │
│ Roberto   │ Almeida   │ 34        │ 2009-05-23 00:00:00 │ Brazil         │
│ Roberto   │ Almeida   │ 155       │ 2010-11-14 00:00:00 │ Brazil         │
│ Roberto   │ Almeida   │ 166       │ 2010-12-25 00:00:00 │ Brazil         │
│ Roberto   │ Almeida   │ 221       │ 2011-08-25 00:00:00 │ Brazil         │
│ Roberto   │ Almeida   │ 350       │ 2013-03-31 00:00:00 │ Brazil         │
│ Roberto   │ Almeida   │ 373       │ 2013-07-03 00:00:00 │ Brazil         │
│ Roberto   │ Almeida   │ 395       │ 2013-10-05 00:00:00 │ Brazil         │
│ Fernanda  │ Ramos     │ 35        │ 2009-06-05 00:00:00 │ Brazil         │
│ Fernanda  │ Ramos     │ 58        │ 2009-09-07 00:00:00 │ Brazil         │
│ Fernanda  │ Ramos     │ 80        │ 2009-12-10 00:00:00 │ Brazil         │
│ Fernanda  │ Ramos     │ 132       │ 2010-07-31 00:00:00 │ Brazil         │
│ Fernanda  │ Ramos     │ 253       │ 2012-01-22 00:00:00 │ Brazil         │
│ Fernanda  │ Ramos     │ 264       │ 2012-03-03 00:00:00 │ Brazil         │
│ Fernanda  │ Ramos     │ 319       │ 2012-11-01 00:00:00 │ Brazil         │
└───────────┴───────────┴───────────┴─────────────────────┴────────────────┘

--Proporciona una consulta que muestre solo los empleados que son Agentes de Ventas.
SELECT * FROM  employees WHERE Title="Sales Support Agent";
┌────────────┬──────────┬───────────┬─────────────────────┬───────────┬─────────────────────┬─────────────────────┬──────────────────┬─────────┬───────┬─────────┬────────────┬───────────────────┬───────────────────┬──────────────────────────┐
│ EmployeeId │ LastName │ FirstName │        Title        │ ReportsTo │      BirthDate      │      HireDate       │     Address      │  City   │ State │ Country │ PostalCode │       Phone       │        Fax        │          Email           │
├────────────┼──────────┼───────────┼─────────────────────┼───────────┼─────────────────────┼─────────────────────┼──────────────────┼─────────┼───────┼─────────┼────────────┼───────────────────┼───────────────────┼──────────────────────────┤
│ 3          │ Peacock  │ Jane      │ Sales Support Agent │ 2         │ 1973-08-29 00:00:00 │ 2002-04-01 00:00:00 │ 1111 6 Ave SW    │ Calgary │ AB    │ Canada  │ T2P 5M5    │ +1 (403) 262-3443 │ +1 (403) 262-6712 │ jane@chinookcorp.com     │
│ 4          │ Park     │ Margaret  │ Sales Support Agent │ 2         │ 1947-09-19 00:00:00 │ 2003-05-03 00:00:00 │ 683 10 Street SW │ Calgary │ AB    │ Canada  │ T2P 5G3    │ +1 (403) 263-4423 │ +1 (403) 263-4289 │ margaret@chinookcorp.com │
│ 5          │ Johnson  │ Steve     │ Sales Support Agent │ 2         │ 1965-03-03 00:00:00 │ 2003-10-17 00:00:00 │ 7727B 41 Ave     │ Calgary │ AB    │ Canada  │ T3B 1Y7    │ 1 (780) 836-9987  │ 1 (780) 836-9543  │ steve@chinookcorp.com    │
└────────────┴──────────┴───────────┴─────────────────────┴───────────┴─────────────────────┴─────────────────────┴──────────────────┴─────────┴───────┴─────────┴────────────┴───────────────────┴───────────────────┴──────────────────────────┘

--Proporciona una consulta que muestre una lista única de países de facturación de la tabla de Facturas.
SELECT distinct(BillingCountry) FROM invoices;
┌────────────────┐
│ BillingCountry │
├────────────────┤
│ Germany        │
│ Norway         │
│ Belgium        │
│ Canada         │
│ USA            │
│ France         │
│ Ireland        │
│ United Kingdom │
│ Australia      │
│ Chile          │
│ India          │
│ Brazil         │
│ Portugal       │
│ Netherlands    │
│ Spain          │
│ Sweden         │
│ Czech Republic │
│ Finland        │
│ Denmark        │
│ Italy          │
│ Poland         │
│ Austria        │
│ Hungary        │
│ Argentina      │
└────────────────┘

--Proporciona una consulta que muestre las facturas de clientes que son de Brazil.
Select c.FirstName,c.LastName,i.* from invoices as i JOIN customers as c on c.CustomerId=i.CustomerId and c.Country="Brazil";
┌───────────┬───────────┬───────────┬────────────┬─────────────────────┬─────────────────────────────────┬─────────────────────┬──────────────┬────────────────┬───────────────────┬───────┐
│ FirstName │ LastName  │ InvoiceId │ CustomerId │     InvoiceDate     │         BillingAddress          │     BillingCity     │ BillingState │ BillingCountry │ BillingPostalCode │ Total │
├───────────┼───────────┼───────────┼────────────┼─────────────────────┼─────────────────────────────────┼─────────────────────┼──────────────┼────────────────┼───────────────────┼───────┤
│ Luís      │ Gonçalves │ 98        │ 1          │ 2010-03-11 00:00:00 │ Av. Brigadeiro Faria Lima, 2170 │ São José dos Campos │ SP           │ Brazil         │ 12227-000         │ 3.98  │
│ Luís      │ Gonçalves │ 121       │ 1          │ 2010-06-13 00:00:00 │ Av. Brigadeiro Faria Lima, 2170 │ São José dos Campos │ SP           │ Brazil         │ 12227-000         │ 3.96  │
│ Luís      │ Gonçalves │ 143       │ 1          │ 2010-09-15 00:00:00 │ Av. Brigadeiro Faria Lima, 2170 │ São José dos Campos │ SP           │ Brazil         │ 12227-000         │ 5.94  │
│ Luís      │ Gonçalves │ 195       │ 1          │ 2011-05-06 00:00:00 │ Av. Brigadeiro Faria Lima, 2170 │ São José dos Campos │ SP           │ Brazil         │ 12227-000         │ 0.99  │
│ Luís      │ Gonçalves │ 316       │ 1          │ 2012-10-27 00:00:00 │ Av. Brigadeiro Faria Lima, 2170 │ São José dos Campos │ SP           │ Brazil         │ 12227-000         │ 1.98  │
│ Luís      │ Gonçalves │ 327       │ 1          │ 2012-12-07 00:00:00 │ Av. Brigadeiro Faria Lima, 2170 │ São José dos Campos │ SP           │ Brazil         │ 12227-000         │ 13.86 │
│ Luís      │ Gonçalves │ 382       │ 1          │ 2013-08-07 00:00:00 │ Av. Brigadeiro Faria Lima, 2170 │ São José dos Campos │ SP           │ Brazil         │ 12227-000         │ 8.91  │
│ Eduardo   │ Martins   │ 25        │ 10         │ 2009-04-09 00:00:00 │ Rua Dr. Falcão Filho, 155       │ São Paulo           │ SP           │ Brazil         │ 01007-010         │ 8.91  │
│ Eduardo   │ Martins   │ 154       │ 10         │ 2010-11-14 00:00:00 │ Rua Dr. Falcão Filho, 155       │ São Paulo           │ SP           │ Brazil         │ 01007-010         │ 1.98  │
│ Eduardo   │ Martins   │ 177       │ 10         │ 2011-02-16 00:00:00 │ Rua Dr. Falcão Filho, 155       │ São Paulo           │ SP           │ Brazil         │ 01007-010         │ 3.96  │
│ Eduardo   │ Martins   │ 199       │ 10         │ 2011-05-21 00:00:00 │ Rua Dr. Falcão Filho, 155       │ São Paulo           │ SP           │ Brazil         │ 01007-010         │ 5.94  │
│ Eduardo   │ Martins   │ 251       │ 10         │ 2012-01-09 00:00:00 │ Rua Dr. Falcão Filho, 155       │ São Paulo           │ SP           │ Brazil         │ 01007-010         │ 0.99  │
│ Eduardo   │ Martins   │ 372       │ 10         │ 2013-07-02 00:00:00 │ Rua Dr. Falcão Filho, 155       │ São Paulo           │ SP           │ Brazil         │ 01007-010         │ 1.98  │
│ Eduardo   │ Martins   │ 383       │ 10         │ 2013-08-12 00:00:00 │ Rua Dr. Falcão Filho, 155       │ São Paulo           │ SP           │ Brazil         │ 01007-010         │ 13.86 │
│ Alexandre │ Rocha     │ 57        │ 11         │ 2009-09-06 00:00:00 │ Av. Paulista, 2022              │ São Paulo           │ SP           │ Brazil         │ 01310-200         │ 1.98  │
│ Alexandre │ Rocha     │ 68        │ 11         │ 2009-10-17 00:00:00 │ Av. Paulista, 2022              │ São Paulo           │ SP           │ Brazil         │ 01310-200         │ 13.86 │
│ Alexandre │ Rocha     │ 123       │ 11         │ 2010-06-17 00:00:00 │ Av. Paulista, 2022              │ São Paulo           │ SP           │ Brazil         │ 01310-200         │ 8.91  │
│ Alexandre │ Rocha     │ 252       │ 11         │ 2012-01-22 00:00:00 │ Av. Paulista, 2022              │ São Paulo           │ SP           │ Brazil         │ 01310-200         │ 1.98  │
│ Alexandre │ Rocha     │ 275       │ 11         │ 2012-04-25 00:00:00 │ Av. Paulista, 2022              │ São Paulo           │ SP           │ Brazil         │ 01310-200         │ 3.96  │
│ Alexandre │ Rocha     │ 297       │ 11         │ 2012-07-28 00:00:00 │ Av. Paulista, 2022              │ São Paulo           │ SP           │ Brazil         │ 01310-200         │ 5.94  │
│ Alexandre │ Rocha     │ 349       │ 11         │ 2013-03-18 00:00:00 │ Av. Paulista, 2022              │ São Paulo           │ SP           │ Brazil         │ 01310-200         │ 0.99  │
│ Roberto   │ Almeida   │ 34        │ 12         │ 2009-05-23 00:00:00 │ Praça Pio X, 119                │ Rio de Janeiro      │ RJ           │ Brazil         │ 20040-020         │ 0.99  │
│ Roberto   │ Almeida   │ 155       │ 12         │ 2010-11-14 00:00:00 │ Praça Pio X, 119                │ Rio de Janeiro      │ RJ           │ Brazil         │ 20040-020         │ 1.98  │
│ Roberto   │ Almeida   │ 166       │ 12         │ 2010-12-25 00:00:00 │ Praça Pio X, 119                │ Rio de Janeiro      │ RJ           │ Brazil         │ 20040-020         │ 13.86 │
│ Roberto   │ Almeida   │ 221       │ 12         │ 2011-08-25 00:00:00 │ Praça Pio X, 119                │ Rio de Janeiro      │ RJ           │ Brazil         │ 20040-020         │ 8.91  │
│ Roberto   │ Almeida   │ 350       │ 12         │ 2013-03-31 00:00:00 │ Praça Pio X, 119                │ Rio de Janeiro      │ RJ           │ Brazil         │ 20040-020         │ 1.98  │
│ Roberto   │ Almeida   │ 373       │ 12         │ 2013-07-03 00:00:00 │ Praça Pio X, 119                │ Rio de Janeiro      │ RJ           │ Brazil         │ 20040-020         │ 3.96  │
│ Roberto   │ Almeida   │ 395       │ 12         │ 2013-10-05 00:00:00 │ Praça Pio X, 119                │ Rio de Janeiro      │ RJ           │ Brazil         │ 20040-020         │ 5.94  │
│ Fernanda  │ Ramos     │ 35        │ 13         │ 2009-06-05 00:00:00 │ Qe 7 Bloco G                    │ Brasília            │ DF           │ Brazil         │ 71020-677         │ 1.98  │
│ Fernanda  │ Ramos     │ 58        │ 13         │ 2009-09-07 00:00:00 │ Qe 7 Bloco G                    │ Brasília            │ DF           │ Brazil         │ 71020-677         │ 3.96  │
│ Fernanda  │ Ramos     │ 80        │ 13         │ 2009-12-10 00:00:00 │ Qe 7 Bloco G                    │ Brasília            │ DF           │ Brazil         │ 71020-677         │ 5.94  │
│ Fernanda  │ Ramos     │ 132       │ 13         │ 2010-07-31 00:00:00 │ Qe 7 Bloco G                    │ Brasília            │ DF           │ Brazil         │ 71020-677         │ 0.99  │
│ Fernanda  │ Ramos     │ 253       │ 13         │ 2012-01-22 00:00:00 │ Qe 7 Bloco G                    │ Brasília            │ DF           │ Brazil         │ 71020-677         │ 1.98  │
│ Fernanda  │ Ramos     │ 264       │ 13         │ 2012-03-03 00:00:00 │ Qe 7 Bloco G                    │ Brasília            │ DF           │ Brazil         │ 71020-677         │ 13.86 │
│ Fernanda  │ Ramos     │ 319       │ 13         │ 2012-11-01 00:00:00 │ Qe 7 Bloco G                    │ Brasília            │ DF           │ Brazil         │ 71020-677         │ 8.91  │
└───────────┴───────────┴───────────┴────────────┴─────────────────────┴─────────────────────────────────┴─────────────────────┴──────────────┴────────────────┴───────────────────┴───────┘

--Proporciona una consulta que muestre las facturas asociadas con cada agente de ventas. La tabla resultante debe incluir el nombre completo del Agente de Ventas.
Select e.FirstName,e.LastName,i.* from invoices as i, employees as e, customers as c where e.title = 'Sales Support Agent' and c.CustomerId=i.CustomerId and
e.EmployeeId=c.SupportRepId;
┌───────────┬──────────┬───────────┬────────────┬─────────────────────┬──────────────────────────────────────────┬─────────────────────┬──────────────┬────────────────┬───────────────────┬───────┐
│ FirstName │ LastName │ InvoiceId │ CustomerId │     InvoiceDate     │              BillingAddress              │     BillingCity     │ BillingState │ BillingCountry │ BillingPostalCode │ Total │
├───────────┼──────────┼───────────┼────────────┼─────────────────────┼──────────────────────────────────────────┼─────────────────────┼──────────────┼────────────────┼───────────────────┼───────┤
│ Jane      │ Peacock  │ 98        │ 1          │ 2010-03-11 00:00:00 │ Av. Brigadeiro Faria Lima, 2170          │ São José dos Campos │ SP           │ Brazil         │ 12227-000         │ 3.98  │
│ Jane      │ Peacock  │ 121       │ 1          │ 2010-06-13 00:00:00 │ Av. Brigadeiro Faria Lima, 2170          │ São José dos Campos │ SP           │ Brazil         │ 12227-000         │ 3.96  │
│ Jane      │ Peacock  │ 143       │ 1          │ 2010-09-15 00:00:00 │ Av. Brigadeiro Faria Lima, 2170          │ São José dos Campos │ SP           │ Brazil         │ 12227-000         │ 5.94  │
│ Jane      │ Peacock  │ 195       │ 1          │ 2011-05-06 00:00:00 │ Av. Brigadeiro Faria Lima, 2170          │ São José dos Campos │ SP           │ Brazil         │ 12227-000         │ 0.99  │
│ Jane      │ Peacock  │ 316       │ 1          │ 2012-10-27 00:00:00 │ Av. Brigadeiro Faria Lima, 2170          │ São José dos Campos │ SP           │ Brazil         │ 12227-000         │ 1.98  │
│ Jane      │ Peacock  │ 327       │ 1          │ 2012-12-07 00:00:00 │ Av. Brigadeiro Faria Lima, 2170          │ São José dos Campos │ SP           │ Brazil         │ 12227-000         │ 13.86 │
│ Jane      │ Peacock  │ 382       │ 1          │ 2013-08-07 00:00:00 │ Av. Brigadeiro Faria Lima, 2170          │ São José dos Campos │ SP           │ Brazil         │ 12227-000         │ 8.91  │
│ Jane      │ Peacock  │ 99        │ 3          │ 2010-03-11 00:00:00 │ 1498 rue Bélanger                        │ Montréal            │ QC           │ Canada         │ H2G 1A7           │ 3.98  │
│ Jane      │ Peacock  │ 110       │ 3          │ 2010-04-21 00:00:00 │ 1498 rue Bélanger                        │ Montréal            │ QC           │ Canada         │ H2G 1A7           │ 13.86 │
│ Jane      │ Peacock  │ 165       │ 3          │ 2010-12-20 00:00:00 │ 1498 rue Bélanger                        │ Montréal            │ QC           │ Canada         │ H2G 1A7           │ 8.91  │
│ Jane      │ Peacock  │ 294       │ 3          │ 2012-07-26 00:00:00 │ 1498 rue Bélanger                        │ Montréal            │ QC           │ Canada         │ H2G 1A7           │ 1.98  │
│ Jane      │ Peacock  │ 317       │ 3          │ 2012-10-28 00:00:00 │ 1498 rue Bélanger                        │ Montréal            │ QC           │ Canada         │ H2G 1A7           │ 3.96  │
│ Jane      │ Peacock  │ 339       │ 3          │ 2013-01-30 00:00:00 │ 1498 rue Bélanger                        │ Montréal            │ QC           │ Canada         │ H2G 1A7           │ 5.94  │
│ Jane      │ Peacock  │ 391       │ 3          │ 2013-09-20 00:00:00 │ 1498 rue Bélanger                        │ Montréal            │ QC           │ Canada         │ H2G 1A7           │ 0.99  │
│ Jane      │ Peacock  │ 34        │ 12         │ 2009-05-23 00:00:00 │ Praça Pio X, 119                         │ Rio de Janeiro      │ RJ           │ Brazil         │ 20040-020         │ 0.99  │
│ Jane      │ Peacock  │ 155       │ 12         │ 2010-11-14 00:00:00 │ Praça Pio X, 119                         │ Rio de Janeiro      │ RJ           │ Brazil         │ 20040-020         │ 1.98  │
│ Jane      │ Peacock  │ 166       │ 12         │ 2010-12-25 00:00:00 │ Praça Pio X, 119                         │ Rio de Janeiro      │ RJ           │ Brazil         │ 20040-020         │ 13.86 │
│ Jane      │ Peacock  │ 221       │ 12         │ 2011-08-25 00:00:00 │ Praça Pio X, 119                         │ Rio de Janeiro      │ RJ           │ Brazil         │ 20040-020         │ 8.91  │
│ Jane      │ Peacock  │ 350       │ 12         │ 2013-03-31 00:00:00 │ Praça Pio X, 119                         │ Rio de Janeiro      │ RJ           │ Brazil         │ 20040-020         │ 1.98  │
│ Jane      │ Peacock  │ 373       │ 12         │ 2013-07-03 00:00:00 │ Praça Pio X, 119                         │ Rio de Janeiro      │ RJ           │ Brazil         │ 20040-020         │ 3.96  │
│ Jane      │ Peacock  │ 395       │ 12         │ 2013-10-05 00:00:00 │ Praça Pio X, 119                         │ Rio de Janeiro      │ RJ           │ Brazil         │ 20040-020         │ 5.94  │
│ Jane      │ Peacock  │ 36        │ 15         │ 2009-06-05 00:00:00 │ 700 W Pender Street                      │ Vancouver           │ BC           │ Canada         │ V6C 1G8           │ 1.98  │
│ Jane      │ Peacock  │ 47        │ 15         │ 2009-07-16 00:00:00 │ 700 W Pender Street                      │ Vancouver           │ BC           │ Canada         │ V6C 1G8           │ 13.86 │
│ Jane      │ Peacock  │ 102       │ 15         │ 2010-03-16 00:00:00 │ 700 W Pender Street                      │ Vancouver           │ BC           │ Canada         │ V6C 1G8           │ 9.91  │
│ Jane      │ Peacock  │ 231       │ 15         │ 2011-10-21 00:00:00 │ 700 W Pender Street                      │ Vancouver           │ BC           │ Canada         │ V6C 1G8           │ 1.98  │
│ Jane      │ Peacock  │ 254       │ 15         │ 2012-01-23 00:00:00 │ 700 W Pender Street                      │ Vancouver           │ BC           │ Canada         │ V6C 1G8           │ 3.96  │
│ Jane      │ Peacock  │ 276       │ 15         │ 2012-04-26 00:00:00 │ 700 W Pender Street                      │ Vancouver           │ BC           │ Canada         │ V6C 1G8           │ 5.94  │
│ Jane      │ Peacock  │ 328       │ 15         │ 2012-12-15 00:00:00 │ 700 W Pender Street                      │ Vancouver           │ BC           │ Canada         │ V6C 1G8           │ 0.99  │
│ Jane      │ Peacock  │ 112       │ 18         │ 2010-05-12 00:00:00 │ 627 Broadway                             │ New York            │ NY           │ USA            │ 10012-2612        │ 1.98  │
│ Jane      │ Peacock  │ 135       │ 18         │ 2010-08-14 00:00:00 │ 627 Broadway                             │ New York            │ NY           │ USA            │ 10012-2612        │ 3.96  │
│ Jane      │ Peacock  │ 157       │ 18         │ 2010-11-16 00:00:00 │ 627 Broadway                             │ New York            │ NY           │ USA            │ 10012-2612        │ 5.94  │
│ Jane      │ Peacock  │ 209       │ 18         │ 2011-07-07 00:00:00 │ 627 Broadway                             │ New York            │ NY           │ USA            │ 10012-2612        │ 0.99  │
│ Jane      │ Peacock  │ 330       │ 18         │ 2012-12-28 00:00:00 │ 627 Broadway                             │ New York            │ NY           │ USA            │ 10012-2612        │ 1.98  │
│ Jane      │ Peacock  │ 341       │ 18         │ 2013-02-07 00:00:00 │ 627 Broadway                             │ New York            │ NY           │ USA            │ 10012-2612        │ 13.86 │
│ Jane      │ Peacock  │ 396       │ 18         │ 2013-10-08 00:00:00 │ 627 Broadway                             │ New York            │ NY           │ USA            │ 10012-2612        │ 8.91  │
│ Jane      │ Peacock  │ 15        │ 19         │ 2009-03-04 00:00:00 │ 1 Infinite Loop                          │ Cupertino           │ CA           │ USA            │ 95014             │ 1.98  │
│ Jane      │ Peacock  │ 26        │ 19         │ 2009-04-14 00:00:00 │ 1 Infinite Loop                          │ Cupertino           │ CA           │ USA            │ 95014             │ 13.86 │
│ Jane      │ Peacock  │ 81        │ 19         │ 2009-12-13 00:00:00 │ 1 Infinite Loop                          │ Cupertino           │ CA           │ USA            │ 95014             │ 8.91  │
│ Jane      │ Peacock  │ 210       │ 19         │ 2011-07-20 00:00:00 │ 1 Infinite Loop                          │ Cupertino           │ CA           │ USA            │ 95014             │ 1.98  │
│ Jane      │ Peacock  │ 233       │ 19         │ 2011-10-22 00:00:00 │ 1 Infinite Loop                          │ Cupertino           │ CA           │ USA            │ 95014             │ 3.96  │
│ Jane      │ Peacock  │ 255       │ 19         │ 2012-01-24 00:00:00 │ 1 Infinite Loop                          │ Cupertino           │ CA           │ USA            │ 95014             │ 5.94  │
│ Jane      │ Peacock  │ 307       │ 19         │ 2012-09-13 00:00:00 │ 1 Infinite Loop                          │ Cupertino           │ CA           │ USA            │ 95014             │ 1.99  │
│ Jane      │ Peacock  │ 92        │ 24         │ 2010-02-08 00:00:00 │ 162 E Superior Street                    │ Chicago             │ IL           │ USA            │ 60611             │ 1.98  │
│ Jane      │ Peacock  │ 103       │ 24         │ 2010-03-21 00:00:00 │ 162 E Superior Street                    │ Chicago             │ IL           │ USA            │ 60611             │ 15.86 │
│ Jane      │ Peacock  │ 158       │ 24         │ 2010-11-19 00:00:00 │ 162 E Superior Street                    │ Chicago             │ IL           │ USA            │ 60611             │ 8.91  │
│ Jane      │ Peacock  │ 287       │ 24         │ 2012-06-25 00:00:00 │ 162 E Superior Street                    │ Chicago             │ IL           │ USA            │ 60611             │ 1.98  │
│ Jane      │ Peacock  │ 310       │ 24         │ 2012-09-27 00:00:00 │ 162 E Superior Street                    │ Chicago             │ IL           │ USA            │ 60611             │ 7.96  │
│ Jane      │ Peacock  │ 332       │ 24         │ 2012-12-30 00:00:00 │ 162 E Superior Street                    │ Chicago             │ IL           │ USA            │ 60611             │ 5.94  │
│ Jane      │ Peacock  │ 384       │ 24         │ 2013-08-20 00:00:00 │ 162 E Superior Street                    │ Chicago             │ IL           │ USA            │ 60611             │ 0.99  │
│ Jane      │ Peacock  │ 48        │ 29         │ 2009-07-24 00:00:00 │ 796 Dundas Street West                   │ Toronto             │ ON           │ Canada         │ M6J 1V1           │ 0.99  │
│ Jane      │ Peacock  │ 169       │ 29         │ 2011-01-15 00:00:00 │ 796 Dundas Street West                   │ Toronto             │ ON           │ Canada         │ M6J 1V1           │ 1.98  │
│ Jane      │ Peacock  │ 180       │ 29         │ 2011-02-25 00:00:00 │ 796 Dundas Street West                   │ Toronto             │ ON           │ Canada         │ M6J 1V1           │ 13.86 │
│ Jane      │ Peacock  │ 235       │ 29         │ 2011-10-26 00:00:00 │ 796 Dundas Street West                   │ Toronto             │ ON           │ Canada         │ M6J 1V1           │ 8.91  │
│ Jane      │ Peacock  │ 364       │ 29         │ 2013-06-01 00:00:00 │ 796 Dundas Street West                   │ Toronto             │ ON           │ Canada         │ M6J 1V1           │ 1.98  │
│ Jane      │ Peacock  │ 387       │ 29         │ 2013-09-03 00:00:00 │ 796 Dundas Street West                   │ Toronto             │ ON           │ Canada         │ M6J 1V1           │ 3.96  │
│ Jane      │ Peacock  │ 409       │ 29         │ 2013-12-06 00:00:00 │ 796 Dundas Street West                   │ Toronto             │ ON           │ Canada         │ M6J 1V1           │ 5.94  │
│ Jane      │ Peacock  │ 49        │ 30         │ 2009-08-06 00:00:00 │ 230 Elgin Street                         │ Ottawa              │ ON           │ Canada         │ K2P 1L7           │ 1.98  │
│ Jane      │ Peacock  │ 72        │ 30         │ 2009-11-08 00:00:00 │ 230 Elgin Street                         │ Ottawa              │ ON           │ Canada         │ K2P 1L7           │ 3.96  │
│ Jane      │ Peacock  │ 94        │ 30         │ 2010-02-10 00:00:00 │ 230 Elgin Street                         │ Ottawa              │ ON           │ Canada         │ K2P 1L7           │ 5.94  │
│ Jane      │ Peacock  │ 146       │ 30         │ 2010-10-01 00:00:00 │ 230 Elgin Street                         │ Ottawa              │ ON           │ Canada         │ K2P 1L7           │ 0.99  │
│ Jane      │ Peacock  │ 267       │ 30         │ 2012-03-24 00:00:00 │ 230 Elgin Street                         │ Ottawa              │ ON           │ Canada         │ K2P 1L7           │ 1.98  │
│ Jane      │ Peacock  │ 278       │ 30         │ 2012-05-04 00:00:00 │ 230 Elgin Street                         │ Ottawa              │ ON           │ Canada         │ K2P 1L7           │ 13.86 │
│ Jane      │ Peacock  │ 333       │ 30         │ 2013-01-02 00:00:00 │ 230 Elgin Street                         │ Ottawa              │ ON           │ Canada         │ K2P 1L7           │ 8.91  │
│ Jane      │ Peacock  │ 27        │ 33         │ 2009-04-22 00:00:00 │ 5112 48 Street                           │ Yellowknife         │ NT           │ Canada         │ X1A 1N6           │ 0.99  │
│ Jane      │ Peacock  │ 148       │ 33         │ 2010-10-14 00:00:00 │ 5112 48 Street                           │ Yellowknife         │ NT           │ Canada         │ X1A 1N6           │ 1.98  │
│ Jane      │ Peacock  │ 159       │ 33         │ 2010-11-24 00:00:00 │ 5112 48 Street                           │ Yellowknife         │ NT           │ Canada         │ X1A 1N6           │ 13.86 │
│ Jane      │ Peacock  │ 214       │ 33         │ 2011-07-25 00:00:00 │ 5112 48 Street                           │ Yellowknife         │ NT           │ Canada         │ X1A 1N6           │ 8.91  │
│ Jane      │ Peacock  │ 343       │ 33         │ 2013-02-28 00:00:00 │ 5112 48 Street                           │ Yellowknife         │ NT           │ Canada         │ X1A 1N6           │ 1.98  │
│ Jane      │ Peacock  │ 366       │ 33         │ 2013-06-02 00:00:00 │ 5112 48 Street                           │ Yellowknife         │ NT           │ Canada         │ X1A 1N6           │ 3.96  │
│ Jane      │ Peacock  │ 388       │ 33         │ 2013-09-04 00:00:00 │ 5112 48 Street                           │ Yellowknife         │ NT           │ Canada         │ X1A 1N6           │ 5.94  │
│ Jane      │ Peacock  │ 6         │ 37         │ 2009-01-19 00:00:00 │ Berger Straße 10                         │ Frankfurt           │              │ Germany        │ 60316             │ 0.99  │
│ Jane      │ Peacock  │ 127       │ 37         │ 2010-07-13 00:00:00 │ Berger Straße 10                         │ Frankfurt           │              │ Germany        │ 60316             │ 1.98  │
│ Jane      │ Peacock  │ 138       │ 37         │ 2010-08-23 00:00:00 │ Berger Straße 10                         │ Frankfurt           │              │ Germany        │ 60316             │ 13.86 │
│ Jane      │ Peacock  │ 193       │ 37         │ 2011-04-23 00:00:00 │ Berger Straße 10                         │ Frankfurt           │              │ Germany        │ 60316             │ 14.91 │
│ Jane      │ Peacock  │ 322       │ 37         │ 2012-11-27 00:00:00 │ Berger Straße 10                         │ Frankfurt           │              │ Germany        │ 60316             │ 1.98  │
│ Jane      │ Peacock  │ 345       │ 37         │ 2013-03-01 00:00:00 │ Berger Straße 10                         │ Frankfurt           │              │ Germany        │ 60316             │ 3.96  │
│ Jane      │ Peacock  │ 367       │ 37         │ 2013-06-03 00:00:00 │ Berger Straße 10                         │ Frankfurt           │              │ Germany        │ 60316             │ 5.94  │
│ Jane      │ Peacock  │ 7         │ 38         │ 2009-02-01 00:00:00 │ Barbarossastraße 19                      │ Berlin              │              │ Germany        │ 10779             │ 1.98  │
│ Jane      │ Peacock  │ 30        │ 38         │ 2009-05-06 00:00:00 │ Barbarossastraße 19                      │ Berlin              │              │ Germany        │ 10779             │ 3.96  │
│ Jane      │ Peacock  │ 52        │ 38         │ 2009-08-08 00:00:00 │ Barbarossastraße 19                      │ Berlin              │              │ Germany        │ 10779             │ 5.94  │
│ Jane      │ Peacock  │ 104       │ 38         │ 2010-03-29 00:00:00 │ Barbarossastraße 19                      │ Berlin              │              │ Germany        │ 10779             │ 0.99  │
│ Jane      │ Peacock  │ 225       │ 38         │ 2011-09-20 00:00:00 │ Barbarossastraße 19                      │ Berlin              │              │ Germany        │ 10779             │ 1.98  │
│ Jane      │ Peacock  │ 236       │ 38         │ 2011-10-31 00:00:00 │ Barbarossastraße 19                      │ Berlin              │              │ Germany        │ 10779             │ 13.86 │
│ Jane      │ Peacock  │ 291       │ 38         │ 2012-06-30 00:00:00 │ Barbarossastraße 19                      │ Berlin              │              │ Germany        │ 10779             │ 8.91  │
│ Jane      │ Peacock  │ 9         │ 42         │ 2009-02-02 00:00:00 │ 9, Place Louis Barthou                   │ Bordeaux            │              │ France         │ 33000             │ 3.96  │
│ Jane      │ Peacock  │ 31        │ 42         │ 2009-05-07 00:00:00 │ 9, Place Louis Barthou                   │ Bordeaux            │              │ France         │ 33000             │ 5.94  │
│ Jane      │ Peacock  │ 83        │ 42         │ 2009-12-26 00:00:00 │ 9, Place Louis Barthou                   │ Bordeaux            │              │ France         │ 33000             │ 0.99  │
│ Jane      │ Peacock  │ 204       │ 42         │ 2011-06-19 00:00:00 │ 9, Place Louis Barthou                   │ Bordeaux            │              │ France         │ 33000             │ 3.98  │
│ Jane      │ Peacock  │ 215       │ 42         │ 2011-07-30 00:00:00 │ 9, Place Louis Barthou                   │ Bordeaux            │              │ France         │ 33000             │ 13.86 │
│ Jane      │ Peacock  │ 270       │ 42         │ 2012-03-29 00:00:00 │ 9, Place Louis Barthou                   │ Bordeaux            │              │ France         │ 33000             │ 8.91  │
│ Jane      │ Peacock  │ 399       │ 42         │ 2013-11-03 00:00:00 │ 9, Place Louis Barthou                   │ Bordeaux            │              │ France         │ 33000             │ 1.98  │
│ Jane      │ Peacock  │ 84        │ 43         │ 2010-01-08 00:00:00 │ 68, Rue Jouvence                         │ Dijon               │              │ France         │ 21000             │ 1.98  │
│ Jane      │ Peacock  │ 107       │ 43         │ 2010-04-12 00:00:00 │ 68, Rue Jouvence                         │ Dijon               │              │ France         │ 21000             │ 3.96  │
│ Jane      │ Peacock  │ 129       │ 43         │ 2010-07-15 00:00:00 │ 68, Rue Jouvence                         │ Dijon               │              │ France         │ 21000             │ 5.94  │
│ Jane      │ Peacock  │ 181       │ 43         │ 2011-03-05 00:00:00 │ 68, Rue Jouvence                         │ Dijon               │              │ France         │ 21000             │ 0.99  │
│ Jane      │ Peacock  │ 302       │ 43         │ 2012-08-26 00:00:00 │ 68, Rue Jouvence                         │ Dijon               │              │ France         │ 21000             │ 1.98  │
│ Jane      │ Peacock  │ 313       │ 43         │ 2012-10-06 00:00:00 │ 68, Rue Jouvence                         │ Dijon               │              │ France         │ 21000             │ 16.86 │
│ Jane      │ Peacock  │ 368       │ 43         │ 2013-06-06 00:00:00 │ 68, Rue Jouvence                         │ Dijon               │              │ France         │ 21000             │ 8.91  │
│ Jane      │ Peacock  │ 53        │ 44         │ 2009-08-11 00:00:00 │ Porthaninkatu 9                          │ Helsinki            │              │ Finland        │ 00530             │ 8.91  │
│ Jane      │ Peacock  │ 182       │ 44         │ 2011-03-18 00:00:00 │ Porthaninkatu 9                          │ Helsinki            │              │ Finland        │ 00530             │ 1.98  │
│ Jane      │ Peacock  │ 205       │ 44         │ 2011-06-20 00:00:00 │ Porthaninkatu 9                          │ Helsinki            │              │ Finland        │ 00530             │ 7.96  │
│ Jane      │ Peacock  │ 227       │ 44         │ 2011-09-22 00:00:00 │ Porthaninkatu 9                          │ Helsinki            │              │ Finland        │ 00530             │ 5.94  │
│ Jane      │ Peacock  │ 279       │ 44         │ 2012-05-12 00:00:00 │ Porthaninkatu 9                          │ Helsinki            │              │ Finland        │ 00530             │ 0.99  │
│ Jane      │ Peacock  │ 400       │ 44         │ 2013-11-03 00:00:00 │ Porthaninkatu 9                          │ Helsinki            │              │ Finland        │ 00530             │ 1.98  │
│ Jane      │ Peacock  │ 411       │ 44         │ 2013-12-14 00:00:00 │ Porthaninkatu 9                          │ Helsinki            │              │ Finland        │ 00530             │ 13.86 │
│ Jane      │ Peacock  │ 85        │ 45         │ 2010-01-08 00:00:00 │ Erzsébet krt. 58.                        │ Budapest            │              │ Hungary        │ H-1073            │ 1.98  │
│ Jane      │ Peacock  │ 96        │ 45         │ 2010-02-18 00:00:00 │ Erzsébet krt. 58.                        │ Budapest            │              │ Hungary        │ H-1073            │ 21.86 │
│ Jane      │ Peacock  │ 151       │ 45         │ 2010-10-19 00:00:00 │ Erzsébet krt. 58.                        │ Budapest            │              │ Hungary        │ H-1073            │ 8.91  │
│ Jane      │ Peacock  │ 280       │ 45         │ 2012-05-25 00:00:00 │ Erzsébet krt. 58.                        │ Budapest            │              │ Hungary        │ H-1073            │ 1.98  │
│ Jane      │ Peacock  │ 303       │ 45         │ 2012-08-27 00:00:00 │ Erzsébet krt. 58.                        │ Budapest            │              │ Hungary        │ H-1073            │ 3.96  │
│ Jane      │ Peacock  │ 325       │ 45         │ 2012-11-29 00:00:00 │ Erzsébet krt. 58.                        │ Budapest            │              │ Hungary        │ H-1073            │ 5.94  │
│ Jane      │ Peacock  │ 377       │ 45         │ 2013-07-20 00:00:00 │ Erzsébet krt. 58.                        │ Budapest            │              │ Hungary        │ H-1073            │ 0.99  │
│ Jane      │ Peacock  │ 10        │ 46         │ 2009-02-03 00:00:00 │ 3 Chatham Street                         │ Dublin              │ Dublin       │ Ireland        │                   │ 5.94  │
│ Jane      │ Peacock  │ 62        │ 46         │ 2009-09-24 00:00:00 │ 3 Chatham Street                         │ Dublin              │ Dublin       │ Ireland        │                   │ 0.99  │
│ Jane      │ Peacock  │ 183       │ 46         │ 2011-03-18 00:00:00 │ 3 Chatham Street                         │ Dublin              │ Dublin       │ Ireland        │                   │ 1.98  │
│ Jane      │ Peacock  │ 194       │ 46         │ 2011-04-28 00:00:00 │ 3 Chatham Street                         │ Dublin              │ Dublin       │ Ireland        │                   │ 21.86 │
│ Jane      │ Peacock  │ 249       │ 46         │ 2011-12-27 00:00:00 │ 3 Chatham Street                         │ Dublin              │ Dublin       │ Ireland        │                   │ 8.91  │
│ Jane      │ Peacock  │ 378       │ 46         │ 2013-08-02 00:00:00 │ 3 Chatham Street                         │ Dublin              │ Dublin       │ Ireland        │                   │ 1.98  │
│ Jane      │ Peacock  │ 401       │ 46         │ 2013-11-04 00:00:00 │ 3 Chatham Street                         │ Dublin              │ Dublin       │ Ireland        │                   │ 3.96  │
│ Jane      │ Peacock  │ 11        │ 52         │ 2009-02-06 00:00:00 │ 202 Hoxton Street                        │ London              │              │ United Kingdom │ N1 5LH            │ 8.91  │
│ Jane      │ Peacock  │ 140       │ 52         │ 2010-09-13 00:00:00 │ 202 Hoxton Street                        │ London              │              │ United Kingdom │ N1 5LH            │ 1.98  │
│ Jane      │ Peacock  │ 163       │ 52         │ 2010-12-16 00:00:00 │ 202 Hoxton Street                        │ London              │              │ United Kingdom │ N1 5LH            │ 3.96  │
│ Jane      │ Peacock  │ 185       │ 52         │ 2011-03-20 00:00:00 │ 202 Hoxton Street                        │ London              │              │ United Kingdom │ N1 5LH            │ 5.94  │
│ Jane      │ Peacock  │ 237       │ 52         │ 2011-11-08 00:00:00 │ 202 Hoxton Street                        │ London              │              │ United Kingdom │ N1 5LH            │ 0.99  │
│ Jane      │ Peacock  │ 358       │ 52         │ 2013-05-01 00:00:00 │ 202 Hoxton Street                        │ London              │              │ United Kingdom │ N1 5LH            │ 1.98  │
│ Jane      │ Peacock  │ 369       │ 52         │ 2013-06-11 00:00:00 │ 202 Hoxton Street                        │ London              │              │ United Kingdom │ N1 5LH            │ 13.86 │
│ Jane      │ Peacock  │ 43        │ 53         │ 2009-07-06 00:00:00 │ 113 Lupus St                             │ London              │              │ United Kingdom │ SW1V 3EN          │ 1.98  │
│ Jane      │ Peacock  │ 54        │ 53         │ 2009-08-16 00:00:00 │ 113 Lupus St                             │ London              │              │ United Kingdom │ SW1V 3EN          │ 13.86 │
│ Jane      │ Peacock  │ 109       │ 53         │ 2010-04-16 00:00:00 │ 113 Lupus St                             │ London              │              │ United Kingdom │ SW1V 3EN          │ 8.91  │
│ Jane      │ Peacock  │ 238       │ 53         │ 2011-11-21 00:00:00 │ 113 Lupus St                             │ London              │              │ United Kingdom │ SW1V 3EN          │ 1.98  │
│ Jane      │ Peacock  │ 261       │ 53         │ 2012-02-23 00:00:00 │ 113 Lupus St                             │ London              │              │ United Kingdom │ SW1V 3EN          │ 3.96  │
│ Jane      │ Peacock  │ 283       │ 53         │ 2012-05-27 00:00:00 │ 113 Lupus St                             │ London              │              │ United Kingdom │ SW1V 3EN          │ 5.94  │
│ Jane      │ Peacock  │ 335       │ 53         │ 2013-01-15 00:00:00 │ 113 Lupus St                             │ London              │              │ United Kingdom │ SW1V 3EN          │ 0.99  │
│ Jane      │ Peacock  │ 120       │ 58         │ 2010-06-12 00:00:00 │ 12,Community Centre                      │ Delhi               │              │ India          │ 110017            │ 1.98  │
│ Jane      │ Peacock  │ 131       │ 58         │ 2010-07-23 00:00:00 │ 12,Community Centre                      │ Delhi               │              │ India          │ 110017            │ 13.86 │
│ Jane      │ Peacock  │ 186       │ 58         │ 2011-03-23 00:00:00 │ 12,Community Centre                      │ Delhi               │              │ India          │ 110017            │ 8.91  │
│ Jane      │ Peacock  │ 315       │ 58         │ 2012-10-27 00:00:00 │ 12,Community Centre                      │ Delhi               │              │ India          │ 110017            │ 1.98  │
│ Jane      │ Peacock  │ 338       │ 58         │ 2013-01-29 00:00:00 │ 12,Community Centre                      │ Delhi               │              │ India          │ 110017            │ 3.96  │
│ Jane      │ Peacock  │ 360       │ 58         │ 2013-05-03 00:00:00 │ 12,Community Centre                      │ Delhi               │              │ India          │ 110017            │ 5.94  │
│ Jane      │ Peacock  │ 412       │ 58         │ 2013-12-22 00:00:00 │ 12,Community Centre                      │ Delhi               │              │ India          │ 110017            │ 1.99  │
│ Jane      │ Peacock  │ 23        │ 59         │ 2009-04-05 00:00:00 │ 3,Raj Bhavan Road                        │ Bangalore           │              │ India          │ 560001            │ 3.96  │
│ Jane      │ Peacock  │ 45        │ 59         │ 2009-07-08 00:00:00 │ 3,Raj Bhavan Road                        │ Bangalore           │              │ India          │ 560001            │ 5.94  │
│ Jane      │ Peacock  │ 97        │ 59         │ 2010-02-26 00:00:00 │ 3,Raj Bhavan Road                        │ Bangalore           │              │ India          │ 560001            │ 1.99  │
│ Jane      │ Peacock  │ 218       │ 59         │ 2011-08-20 00:00:00 │ 3,Raj Bhavan Road                        │ Bangalore           │              │ India          │ 560001            │ 1.98  │
│ Jane      │ Peacock  │ 229       │ 59         │ 2011-09-30 00:00:00 │ 3,Raj Bhavan Road                        │ Bangalore           │              │ India          │ 560001            │ 13.86 │
│ Jane      │ Peacock  │ 284       │ 59         │ 2012-05-30 00:00:00 │ 3,Raj Bhavan Road                        │ Bangalore           │              │ India          │ 560001            │ 8.91  │
│ Margaret  │ Park     │ 2         │ 4          │ 2009-01-02 00:00:00 │ Ullevålsveien 14                         │ Oslo                │              │ Norway         │ 0171              │ 3.96  │
│ Margaret  │ Park     │ 24        │ 4          │ 2009-04-06 00:00:00 │ Ullevålsveien 14                         │ Oslo                │              │ Norway         │ 0171              │ 5.94  │
│ Margaret  │ Park     │ 76        │ 4          │ 2009-11-25 00:00:00 │ Ullevålsveien 14                         │ Oslo                │              │ Norway         │ 0171              │ 0.99  │
│ Margaret  │ Park     │ 197       │ 4          │ 2011-05-19 00:00:00 │ Ullevålsveien 14                         │ Oslo                │              │ Norway         │ 0171              │ 1.98  │
│ Margaret  │ Park     │ 208       │ 4          │ 2011-06-29 00:00:00 │ Ullevålsveien 14                         │ Oslo                │              │ Norway         │ 0171              │ 15.86 │
│ Margaret  │ Park     │ 263       │ 4          │ 2012-02-27 00:00:00 │ Ullevålsveien 14                         │ Oslo                │              │ Norway         │ 0171              │ 8.91  │
│ Margaret  │ Park     │ 392       │ 4          │ 2013-10-03 00:00:00 │ Ullevålsveien 14                         │ Oslo                │              │ Norway         │ 0171              │ 1.98  │
│ Margaret  │ Park     │ 77        │ 5          │ 2009-12-08 00:00:00 │ Klanova 9/506                            │ Prague              │              │ Czech Republic │ 14700             │ 1.98  │
│ Margaret  │ Park     │ 100       │ 5          │ 2010-03-12 00:00:00 │ Klanova 9/506                            │ Prague              │              │ Czech Republic │ 14700             │ 3.96  │
│ Margaret  │ Park     │ 122       │ 5          │ 2010-06-14 00:00:00 │ Klanova 9/506                            │ Prague              │              │ Czech Republic │ 14700             │ 5.94  │
│ Margaret  │ Park     │ 174       │ 5          │ 2011-02-02 00:00:00 │ Klanova 9/506                            │ Prague              │              │ Czech Republic │ 14700             │ 0.99  │
│ Margaret  │ Park     │ 295       │ 5          │ 2012-07-26 00:00:00 │ Klanova 9/506                            │ Prague              │              │ Czech Republic │ 14700             │ 1.98  │
│ Margaret  │ Park     │ 306       │ 5          │ 2012-09-05 00:00:00 │ Klanova 9/506                            │ Prague              │              │ Czech Republic │ 14700             │ 16.86 │
│ Margaret  │ Park     │ 361       │ 5          │ 2013-05-06 00:00:00 │ Klanova 9/506                            │ Prague              │              │ Czech Republic │ 14700             │ 8.91  │
│ Margaret  │ Park     │ 3         │ 8          │ 2009-01-03 00:00:00 │ Grétrystraat 63                          │ Brussels            │              │ Belgium        │ 1000              │ 5.94  │
│ Margaret  │ Park     │ 55        │ 8          │ 2009-08-24 00:00:00 │ Grétrystraat 63                          │ Brussels            │              │ Belgium        │ 1000              │ 0.99  │
│ Margaret  │ Park     │ 176       │ 8          │ 2011-02-15 00:00:00 │ Grétrystraat 63                          │ Brussels            │              │ Belgium        │ 1000              │ 1.98  │
│ Margaret  │ Park     │ 187       │ 8          │ 2011-03-28 00:00:00 │ Grétrystraat 63                          │ Brussels            │              │ Belgium        │ 1000              │ 13.86 │
│ Margaret  │ Park     │ 242       │ 8          │ 2011-11-26 00:00:00 │ Grétrystraat 63                          │ Brussels            │              │ Belgium        │ 1000              │ 8.91  │
│ Margaret  │ Park     │ 371       │ 8          │ 2013-07-02 00:00:00 │ Grétrystraat 63                          │ Brussels            │              │ Belgium        │ 1000              │ 1.98  │
│ Margaret  │ Park     │ 394       │ 8          │ 2013-10-04 00:00:00 │ Grétrystraat 63                          │ Brussels            │              │ Belgium        │ 1000              │ 3.96  │
│ Margaret  │ Park     │ 56        │ 9          │ 2009-09-06 00:00:00 │ Sønder Boulevard 51                      │ Copenhagen          │              │ Denmark        │ 1720              │ 1.98  │
│ Margaret  │ Park     │ 79        │ 9          │ 2009-12-09 00:00:00 │ Sønder Boulevard 51                      │ Copenhagen          │              │ Denmark        │ 1720              │ 3.96  │
│ Margaret  │ Park     │ 101       │ 9          │ 2010-03-13 00:00:00 │ Sønder Boulevard 51                      │ Copenhagen          │              │ Denmark        │ 1720              │ 5.94  │
│ Margaret  │ Park     │ 153       │ 9          │ 2010-11-01 00:00:00 │ Sønder Boulevard 51                      │ Copenhagen          │              │ Denmark        │ 1720              │ 0.99  │
│ Margaret  │ Park     │ 274       │ 9          │ 2012-04-24 00:00:00 │ Sønder Boulevard 51                      │ Copenhagen          │              │ Denmark        │ 1720              │ 1.98  │
│ Margaret  │ Park     │ 285       │ 9          │ 2012-06-04 00:00:00 │ Sønder Boulevard 51                      │ Copenhagen          │              │ Denmark        │ 1720              │ 13.86 │
│ Margaret  │ Park     │ 340       │ 9          │ 2013-02-02 00:00:00 │ Sønder Boulevard 51                      │ Copenhagen          │              │ Denmark        │ 1720              │ 8.91  │
│ Margaret  │ Park     │ 25        │ 10         │ 2009-04-09 00:00:00 │ Rua Dr. Falcão Filho, 155                │ São Paulo           │ SP           │ Brazil         │ 01007-010         │ 8.91  │
│ Margaret  │ Park     │ 154       │ 10         │ 2010-11-14 00:00:00 │ Rua Dr. Falcão Filho, 155                │ São Paulo           │ SP           │ Brazil         │ 01007-010         │ 1.98  │
│ Margaret  │ Park     │ 177       │ 10         │ 2011-02-16 00:00:00 │ Rua Dr. Falcão Filho, 155                │ São Paulo           │ SP           │ Brazil         │ 01007-010         │ 3.96  │
│ Margaret  │ Park     │ 199       │ 10         │ 2011-05-21 00:00:00 │ Rua Dr. Falcão Filho, 155                │ São Paulo           │ SP           │ Brazil         │ 01007-010         │ 5.94  │
│ Margaret  │ Park     │ 251       │ 10         │ 2012-01-09 00:00:00 │ Rua Dr. Falcão Filho, 155                │ São Paulo           │ SP           │ Brazil         │ 01007-010         │ 0.99  │
│ Margaret  │ Park     │ 372       │ 10         │ 2013-07-02 00:00:00 │ Rua Dr. Falcão Filho, 155                │ São Paulo           │ SP           │ Brazil         │ 01007-010         │ 1.98  │
│ Margaret  │ Park     │ 383       │ 10         │ 2013-08-12 00:00:00 │ Rua Dr. Falcão Filho, 155                │ São Paulo           │ SP           │ Brazil         │ 01007-010         │ 13.86 │
│ Margaret  │ Park     │ 35        │ 13         │ 2009-06-05 00:00:00 │ Qe 7 Bloco G                             │ Brasília            │ DF           │ Brazil         │ 71020-677         │ 1.98  │
│ Margaret  │ Park     │ 58        │ 13         │ 2009-09-07 00:00:00 │ Qe 7 Bloco G                             │ Brasília            │ DF           │ Brazil         │ 71020-677         │ 3.96  │
│ Margaret  │ Park     │ 80        │ 13         │ 2009-12-10 00:00:00 │ Qe 7 Bloco G                             │ Brasília            │ DF           │ Brazil         │ 71020-677         │ 5.94  │
│ Margaret  │ Park     │ 132       │ 13         │ 2010-07-31 00:00:00 │ Qe 7 Bloco G                             │ Brasília            │ DF           │ Brazil         │ 71020-677         │ 0.99  │
│ Margaret  │ Park     │ 253       │ 13         │ 2012-01-22 00:00:00 │ Qe 7 Bloco G                             │ Brasília            │ DF           │ Brazil         │ 71020-677         │ 1.98  │
│ Margaret  │ Park     │ 264       │ 13         │ 2012-03-03 00:00:00 │ Qe 7 Bloco G                             │ Brasília            │ DF           │ Brazil         │ 71020-677         │ 13.86 │
│ Margaret  │ Park     │ 319       │ 13         │ 2012-11-01 00:00:00 │ Qe 7 Bloco G                             │ Brasília            │ DF           │ Brazil         │ 71020-677         │ 8.91  │
│ Margaret  │ Park     │ 13        │ 16         │ 2009-02-19 00:00:00 │ 1600 Amphitheatre Parkway                │ Mountain View       │ CA           │ USA            │ 94043-1351        │ 0.99  │
│ Margaret  │ Park     │ 134       │ 16         │ 2010-08-13 00:00:00 │ 1600 Amphitheatre Parkway                │ Mountain View       │ CA           │ USA            │ 94043-1351        │ 1.98  │
│ Margaret  │ Park     │ 145       │ 16         │ 2010-09-23 00:00:00 │ 1600 Amphitheatre Parkway                │ Mountain View       │ CA           │ USA            │ 94043-1351        │ 13.86 │
│ Margaret  │ Park     │ 200       │ 16         │ 2011-05-24 00:00:00 │ 1600 Amphitheatre Parkway                │ Mountain View       │ CA           │ USA            │ 94043-1351        │ 8.91  │
│ Margaret  │ Park     │ 329       │ 16         │ 2012-12-28 00:00:00 │ 1600 Amphitheatre Parkway                │ Mountain View       │ CA           │ USA            │ 94043-1351        │ 1.98  │
│ Margaret  │ Park     │ 352       │ 16         │ 2013-04-01 00:00:00 │ 1600 Amphitheatre Parkway                │ Mountain View       │ CA           │ USA            │ 94043-1351        │ 3.96  │
│ Margaret  │ Park     │ 374       │ 16         │ 2013-07-04 00:00:00 │ 1600 Amphitheatre Parkway                │ Mountain View       │ CA           │ USA            │ 94043-1351        │ 5.94  │
│ Margaret  │ Park     │ 113       │ 20         │ 2010-05-12 00:00:00 │ 541 Del Medio Avenue                     │ Mountain View       │ CA           │ USA            │ 94040-111         │ 1.98  │
│ Margaret  │ Park     │ 124       │ 20         │ 2010-06-22 00:00:00 │ 541 Del Medio Avenue                     │ Mountain View       │ CA           │ USA            │ 94040-111         │ 13.86 │
│ Margaret  │ Park     │ 179       │ 20         │ 2011-02-20 00:00:00 │ 541 Del Medio Avenue                     │ Mountain View       │ CA           │ USA            │ 94040-111         │ 8.91  │
│ Margaret  │ Park     │ 308       │ 20         │ 2012-09-26 00:00:00 │ 541 Del Medio Avenue                     │ Mountain View       │ CA           │ USA            │ 94040-111         │ 3.98  │
│ Margaret  │ Park     │ 331       │ 20         │ 2012-12-29 00:00:00 │ 541 Del Medio Avenue                     │ Mountain View       │ CA           │ USA            │ 94040-111         │ 3.96  │
│ Margaret  │ Park     │ 353       │ 20         │ 2013-04-02 00:00:00 │ 541 Del Medio Avenue                     │ Mountain View       │ CA           │ USA            │ 94040-111         │ 5.94  │
│ Margaret  │ Park     │ 405       │ 20         │ 2013-11-21 00:00:00 │ 541 Del Medio Avenue                     │ Mountain View       │ CA           │ USA            │ 94040-111         │ 0.99  │
│ Margaret  │ Park     │ 91        │ 22         │ 2010-02-08 00:00:00 │ 120 S Orange Ave                         │ Orlando             │ FL           │ USA            │ 32801             │ 1.98  │
│ Margaret  │ Park     │ 114       │ 22         │ 2010-05-13 00:00:00 │ 120 S Orange Ave                         │ Orlando             │ FL           │ USA            │ 32801             │ 3.96  │
│ Margaret  │ Park     │ 136       │ 22         │ 2010-08-15 00:00:00 │ 120 S Orange Ave                         │ Orlando             │ FL           │ USA            │ 32801             │ 5.94  │
│ Margaret  │ Park     │ 188       │ 22         │ 2011-04-05 00:00:00 │ 120 S Orange Ave                         │ Orlando             │ FL           │ USA            │ 32801             │ 0.99  │
│ Margaret  │ Park     │ 309       │ 22         │ 2012-09-26 00:00:00 │ 120 S Orange Ave                         │ Orlando             │ FL           │ USA            │ 32801             │ 3.98  │
│ Margaret  │ Park     │ 320       │ 22         │ 2012-11-06 00:00:00 │ 120 S Orange Ave                         │ Orlando             │ FL           │ USA            │ 32801             │ 13.86 │
│ Margaret  │ Park     │ 375       │ 22         │ 2013-07-07 00:00:00 │ 120 S Orange Ave                         │ Orlando             │ FL           │ USA            │ 32801             │ 8.91  │
│ Margaret  │ Park     │ 5         │ 23         │ 2009-01-11 00:00:00 │ 69 Salem Street                          │ Boston              │ MA           │ USA            │ 2113              │ 13.86 │
│ Margaret  │ Park     │ 60        │ 23         │ 2009-09-11 00:00:00 │ 69 Salem Street                          │ Boston              │ MA           │ USA            │ 2113              │ 8.91  │
│ Margaret  │ Park     │ 189       │ 23         │ 2011-04-18 00:00:00 │ 69 Salem Street                          │ Boston              │ MA           │ USA            │ 2113              │ 1.98  │
│ Margaret  │ Park     │ 212       │ 23         │ 2011-07-21 00:00:00 │ 69 Salem Street                          │ Boston              │ MA           │ USA            │ 2113              │ 3.96  │
│ Margaret  │ Park     │ 234       │ 23         │ 2011-10-23 00:00:00 │ 69 Salem Street                          │ Boston              │ MA           │ USA            │ 2113              │ 5.94  │
│ Margaret  │ Park     │ 286       │ 23         │ 2012-06-12 00:00:00 │ 69 Salem Street                          │ Boston              │ MA           │ USA            │ 2113              │ 0.99  │
│ Margaret  │ Park     │ 407       │ 23         │ 2013-12-04 00:00:00 │ 69 Salem Street                          │ Boston              │ MA           │ USA            │ 2113              │ 1.98  │
│ Margaret  │ Park     │ 70        │ 26         │ 2009-11-07 00:00:00 │ 2211 W Berry Street                      │ Fort Worth          │ TX           │ USA            │ 76110             │ 1.98  │
│ Margaret  │ Park     │ 93        │ 26         │ 2010-02-09 00:00:00 │ 2211 W Berry Street                      │ Fort Worth          │ TX           │ USA            │ 76110             │ 3.96  │
│ Margaret  │ Park     │ 115       │ 26         │ 2010-05-14 00:00:00 │ 2211 W Berry Street                      │ Fort Worth          │ TX           │ USA            │ 76110             │ 5.94  │
│ Margaret  │ Park     │ 167       │ 26         │ 2011-01-02 00:00:00 │ 2211 W Berry Street                      │ Fort Worth          │ TX           │ USA            │ 76110             │ 0.99  │
│ Margaret  │ Park     │ 288       │ 26         │ 2012-06-25 00:00:00 │ 2211 W Berry Street                      │ Fort Worth          │ TX           │ USA            │ 76110             │ 1.98  │
│ Margaret  │ Park     │ 299       │ 26         │ 2012-08-05 00:00:00 │ 2211 W Berry Street                      │ Fort Worth          │ TX           │ USA            │ 76110             │ 23.86 │
│ Margaret  │ Park     │ 354       │ 26         │ 2013-04-05 00:00:00 │ 2211 W Berry Street                      │ Fort Worth          │ TX           │ USA            │ 76110             │ 8.91  │
│ Margaret  │ Park     │ 39        │ 27         │ 2009-06-10 00:00:00 │ 1033 N Park Ave                          │ Tucson              │ AZ           │ USA            │ 85719             │ 8.91  │
│ Margaret  │ Park     │ 168       │ 27         │ 2011-01-15 00:00:00 │ 1033 N Park Ave                          │ Tucson              │ AZ           │ USA            │ 85719             │ 1.98  │
│ Margaret  │ Park     │ 191       │ 27         │ 2011-04-19 00:00:00 │ 1033 N Park Ave                          │ Tucson              │ AZ           │ USA            │ 85719             │ 3.96  │
│ Margaret  │ Park     │ 213       │ 27         │ 2011-07-22 00:00:00 │ 1033 N Park Ave                          │ Tucson              │ AZ           │ USA            │ 85719             │ 5.94  │
│ Margaret  │ Park     │ 265       │ 27         │ 2012-03-11 00:00:00 │ 1033 N Park Ave                          │ Tucson              │ AZ           │ USA            │ 85719             │ 0.99  │
│ Margaret  │ Park     │ 386       │ 27         │ 2013-09-02 00:00:00 │ 1033 N Park Ave                          │ Tucson              │ AZ           │ USA            │ 85719             │ 1.98  │
│ Margaret  │ Park     │ 397       │ 27         │ 2013-10-13 00:00:00 │ 1033 N Park Ave                          │ Tucson              │ AZ           │ USA            │ 85719             │ 13.86 │
│ Margaret  │ Park     │ 50        │ 32         │ 2009-08-06 00:00:00 │ 696 Osborne Street                       │ Winnipeg            │ MB           │ Canada         │ R3L 2B9           │ 1.98  │
│ Margaret  │ Park     │ 61        │ 32         │ 2009-09-16 00:00:00 │ 696 Osborne Street                       │ Winnipeg            │ MB           │ Canada         │ R3L 2B9           │ 13.86 │
│ Margaret  │ Park     │ 116       │ 32         │ 2010-05-17 00:00:00 │ 696 Osborne Street                       │ Winnipeg            │ MB           │ Canada         │ R3L 2B9           │ 8.91  │
│ Margaret  │ Park     │ 245       │ 32         │ 2011-12-22 00:00:00 │ 696 Osborne Street                       │ Winnipeg            │ MB           │ Canada         │ R3L 2B9           │ 1.98  │
│ Margaret  │ Park     │ 268       │ 32         │ 2012-03-25 00:00:00 │ 696 Osborne Street                       │ Winnipeg            │ MB           │ Canada         │ R3L 2B9           │ 3.96  │
│ Margaret  │ Park     │ 290       │ 32         │ 2012-06-27 00:00:00 │ 696 Osborne Street                       │ Winnipeg            │ MB           │ Canada         │ R3L 2B9           │ 5.94  │
│ Margaret  │ Park     │ 342       │ 32         │ 2013-02-15 00:00:00 │ 696 Osborne Street                       │ Winnipeg            │ MB           │ Canada         │ R3L 2B9           │ 0.99  │
│ Margaret  │ Park     │ 28        │ 34         │ 2009-05-05 00:00:00 │ Rua da Assunção 53                       │ Lisbon              │              │ Portugal       │                   │ 1.98  │
│ Margaret  │ Park     │ 51        │ 34         │ 2009-08-07 00:00:00 │ Rua da Assunção 53                       │ Lisbon              │              │ Portugal       │                   │ 3.96  │
│ Margaret  │ Park     │ 73        │ 34         │ 2009-11-09 00:00:00 │ Rua da Assunção 53                       │ Lisbon              │              │ Portugal       │                   │ 5.94  │
│ Margaret  │ Park     │ 125       │ 34         │ 2010-06-30 00:00:00 │ Rua da Assunção 53                       │ Lisbon              │              │ Portugal       │                   │ 0.99  │
│ Margaret  │ Park     │ 246       │ 34         │ 2011-12-22 00:00:00 │ Rua da Assunção 53                       │ Lisbon              │              │ Portugal       │                   │ 1.98  │
│ Margaret  │ Park     │ 257       │ 34         │ 2012-02-01 00:00:00 │ Rua da Assunção 53                       │ Lisbon              │              │ Portugal       │                   │ 13.86 │
│ Margaret  │ Park     │ 312       │ 34         │ 2012-10-01 00:00:00 │ Rua da Assunção 53                       │ Lisbon              │              │ Portugal       │                   │ 10.91 │
│ Margaret  │ Park     │ 126       │ 35         │ 2010-07-13 00:00:00 │ Rua dos Campeões Europeus de Viena, 4350 │ Porto               │              │ Portugal       │                   │ 1.98  │
│ Margaret  │ Park     │ 149       │ 35         │ 2010-10-15 00:00:00 │ Rua dos Campeões Europeus de Viena, 4350 │ Porto               │              │ Portugal       │                   │ 3.96  │
│ Margaret  │ Park     │ 171       │ 35         │ 2011-01-17 00:00:00 │ Rua dos Campeões Europeus de Viena, 4350 │ Porto               │              │ Portugal       │                   │ 5.94  │
│ Margaret  │ Park     │ 223       │ 35         │ 2011-09-07 00:00:00 │ Rua dos Campeões Europeus de Viena, 4350 │ Porto               │              │ Portugal       │                   │ 0.99  │
│ Margaret  │ Park     │ 344       │ 35         │ 2013-02-28 00:00:00 │ Rua dos Campeões Europeus de Viena, 4350 │ Porto               │              │ Portugal       │                   │ 1.98  │
│ Margaret  │ Park     │ 355       │ 35         │ 2013-04-10 00:00:00 │ Rua dos Campeões Europeus de Viena, 4350 │ Porto               │              │ Portugal       │                   │ 13.86 │
│ Margaret  │ Park     │ 410       │ 35         │ 2013-12-09 00:00:00 │ Rua dos Campeões Europeus de Viena, 4350 │ Porto               │              │ Portugal       │                   │ 8.91  │
│ Margaret  │ Park     │ 105       │ 39         │ 2010-04-11 00:00:00 │ 4, Rue Milton                            │ Paris               │              │ France         │ 75009             │ 1.98  │
│ Margaret  │ Park     │ 128       │ 39         │ 2010-07-14 00:00:00 │ 4, Rue Milton                            │ Paris               │              │ France         │ 75009             │ 3.96  │
│ Margaret  │ Park     │ 150       │ 39         │ 2010-10-16 00:00:00 │ 4, Rue Milton                            │ Paris               │              │ France         │ 75009             │ 5.94  │
│ Margaret  │ Park     │ 202       │ 39         │ 2011-06-06 00:00:00 │ 4, Rue Milton                            │ Paris               │              │ France         │ 75009             │ 1.99  │
│ Margaret  │ Park     │ 323       │ 39         │ 2012-11-27 00:00:00 │ 4, Rue Milton                            │ Paris               │              │ France         │ 75009             │ 1.98  │
│ Margaret  │ Park     │ 334       │ 39         │ 2013-01-07 00:00:00 │ 4, Rue Milton                            │ Paris               │              │ France         │ 75009             │ 13.86 │
│ Margaret  │ Park     │ 389       │ 39         │ 2013-09-07 00:00:00 │ 4, Rue Milton                            │ Paris               │              │ France         │ 75009             │ 8.91  │
│ Margaret  │ Park     │ 8         │ 40         │ 2009-02-01 00:00:00 │ 8, Rue Hanovre                           │ Paris               │              │ France         │ 75002             │ 1.98  │
│ Margaret  │ Park     │ 19        │ 40         │ 2009-03-14 00:00:00 │ 8, Rue Hanovre                           │ Paris               │              │ France         │ 75002             │ 13.86 │
│ Margaret  │ Park     │ 74        │ 40         │ 2009-11-12 00:00:00 │ 8, Rue Hanovre                           │ Paris               │              │ France         │ 75002             │ 8.91  │
│ Margaret  │ Park     │ 203       │ 40         │ 2011-06-19 00:00:00 │ 8, Rue Hanovre                           │ Paris               │              │ France         │ 75002             │ 2.98  │
│ Margaret  │ Park     │ 226       │ 40         │ 2011-09-21 00:00:00 │ 8, Rue Hanovre                           │ Paris               │              │ France         │ 75002             │ 3.96  │
│ Margaret  │ Park     │ 248       │ 40         │ 2011-12-24 00:00:00 │ 8, Rue Hanovre                           │ Paris               │              │ France         │ 75002             │ 5.94  │
│ Margaret  │ Park     │ 300       │ 40         │ 2012-08-13 00:00:00 │ 8, Rue Hanovre                           │ Paris               │              │ France         │ 75002             │ 0.99  │
│ Margaret  │ Park     │ 64        │ 49         │ 2009-10-07 00:00:00 │ Ordynacka 10                             │ Warsaw              │              │ Poland         │ 00-358            │ 1.98  │
│ Margaret  │ Park     │ 75        │ 49         │ 2009-11-17 00:00:00 │ Ordynacka 10                             │ Warsaw              │              │ Poland         │ 00-358            │ 13.86 │
│ Margaret  │ Park     │ 130       │ 49         │ 2010-07-18 00:00:00 │ Ordynacka 10                             │ Warsaw              │              │ Poland         │ 00-358            │ 8.91  │
│ Margaret  │ Park     │ 259       │ 49         │ 2012-02-22 00:00:00 │ Ordynacka 10                             │ Warsaw              │              │ Poland         │ 00-358            │ 1.98  │
│ Margaret  │ Park     │ 282       │ 49         │ 2012-05-26 00:00:00 │ Ordynacka 10                             │ Warsaw              │              │ Poland         │ 00-358            │ 3.96  │
│ Margaret  │ Park     │ 304       │ 49         │ 2012-08-28 00:00:00 │ Ordynacka 10                             │ Warsaw              │              │ Poland         │ 00-358            │ 5.94  │
│ Margaret  │ Park     │ 356       │ 49         │ 2013-04-18 00:00:00 │ Ordynacka 10                             │ Warsaw              │              │ Poland         │ 00-358            │ 0.99  │
│ Margaret  │ Park     │ 21        │ 55         │ 2009-04-04 00:00:00 │ 421 Bourke Street                        │ Sidney              │ NSW          │ Australia      │ 2010              │ 1.98  │
│ Margaret  │ Park     │ 44        │ 55         │ 2009-07-07 00:00:00 │ 421 Bourke Street                        │ Sidney              │ NSW          │ Australia      │ 2010              │ 3.96  │
│ Margaret  │ Park     │ 66        │ 55         │ 2009-10-09 00:00:00 │ 421 Bourke Street                        │ Sidney              │ NSW          │ Australia      │ 2010              │ 5.94  │
│ Margaret  │ Park     │ 118       │ 55         │ 2010-05-30 00:00:00 │ 421 Bourke Street                        │ Sidney              │ NSW          │ Australia      │ 2010              │ 0.99  │
│ Margaret  │ Park     │ 239       │ 55         │ 2011-11-21 00:00:00 │ 421 Bourke Street                        │ Sidney              │ NSW          │ Australia      │ 2010              │ 1.98  │
│ Margaret  │ Park     │ 250       │ 55         │ 2012-01-01 00:00:00 │ 421 Bourke Street                        │ Sidney              │ NSW          │ Australia      │ 2010              │ 13.86 │
│ Margaret  │ Park     │ 305       │ 55         │ 2012-08-31 00:00:00 │ 421 Bourke Street                        │ Sidney              │ NSW          │ Australia      │ 2010              │ 8.91  │
│ Margaret  │ Park     │ 119       │ 56         │ 2010-06-12 00:00:00 │ 307 Macacha Güemes                       │ Buenos Aires        │              │ Argentina      │ 1106              │ 1.98  │
│ Margaret  │ Park     │ 142       │ 56         │ 2010-09-14 00:00:00 │ 307 Macacha Güemes                       │ Buenos Aires        │              │ Argentina      │ 1106              │ 3.96  │
│ Margaret  │ Park     │ 164       │ 56         │ 2010-12-17 00:00:00 │ 307 Macacha Güemes                       │ Buenos Aires        │              │ Argentina      │ 1106              │ 5.94  │
│ Margaret  │ Park     │ 216       │ 56         │ 2011-08-07 00:00:00 │ 307 Macacha Güemes                       │ Buenos Aires        │              │ Argentina      │ 1106              │ 0.99  │
│ Margaret  │ Park     │ 337       │ 56         │ 2013-01-28 00:00:00 │ 307 Macacha Güemes                       │ Buenos Aires        │              │ Argentina      │ 1106              │ 1.98  │
│ Margaret  │ Park     │ 348       │ 56         │ 2013-03-10 00:00:00 │ 307 Macacha Güemes                       │ Buenos Aires        │              │ Argentina      │ 1106              │ 13.86 │
│ Margaret  │ Park     │ 403       │ 56         │ 2013-11-08 00:00:00 │ 307 Macacha Güemes                       │ Buenos Aires        │              │ Argentina      │ 1106              │ 8.91  │
│ Steve     │ Johnson  │ 1         │ 2          │ 2009-01-01 00:00:00 │ Theodor-Heuss-Straße 34                  │ Stuttgart           │              │ Germany        │ 70174             │ 1.98  │
│ Steve     │ Johnson  │ 12        │ 2          │ 2009-02-11 00:00:00 │ Theodor-Heuss-Straße 34                  │ Stuttgart           │              │ Germany        │ 70174             │ 13.86 │
│ Steve     │ Johnson  │ 67        │ 2          │ 2009-10-12 00:00:00 │ Theodor-Heuss-Straße 34                  │ Stuttgart           │              │ Germany        │ 70174             │ 8.91  │
│ Steve     │ Johnson  │ 196       │ 2          │ 2011-05-19 00:00:00 │ Theodor-Heuss-Straße 34                  │ Stuttgart           │              │ Germany        │ 70174             │ 1.98  │
│ Steve     │ Johnson  │ 219       │ 2          │ 2011-08-21 00:00:00 │ Theodor-Heuss-Straße 34                  │ Stuttgart           │              │ Germany        │ 70174             │ 3.96  │
│ Steve     │ Johnson  │ 241       │ 2          │ 2011-11-23 00:00:00 │ Theodor-Heuss-Straße 34                  │ Stuttgart           │              │ Germany        │ 70174             │ 5.94  │
│ Steve     │ Johnson  │ 293       │ 2          │ 2012-07-13 00:00:00 │ Theodor-Heuss-Straße 34                  │ Stuttgart           │              │ Germany        │ 70174             │ 0.99  │
│ Steve     │ Johnson  │ 46        │ 6          │ 2009-07-11 00:00:00 │ Rilská 3174/6                            │ Prague              │              │ Czech Republic │ 14300             │ 8.91  │
│ Steve     │ Johnson  │ 175       │ 6          │ 2011-02-15 00:00:00 │ Rilská 3174/6                            │ Prague              │              │ Czech Republic │ 14300             │ 1.98  │
│ Steve     │ Johnson  │ 198       │ 6          │ 2011-05-20 00:00:00 │ Rilská 3174/6                            │ Prague              │              │ Czech Republic │ 14300             │ 3.96  │
│ Steve     │ Johnson  │ 220       │ 6          │ 2011-08-22 00:00:00 │ Rilská 3174/6                            │ Prague              │              │ Czech Republic │ 14300             │ 5.94  │
│ Steve     │ Johnson  │ 272       │ 6          │ 2012-04-11 00:00:00 │ Rilská 3174/6                            │ Prague              │              │ Czech Republic │ 14300             │ 0.99  │
│ Steve     │ Johnson  │ 393       │ 6          │ 2013-10-03 00:00:00 │ Rilská 3174/6                            │ Prague              │              │ Czech Republic │ 14300             │ 1.98  │
│ Steve     │ Johnson  │ 404       │ 6          │ 2013-11-13 00:00:00 │ Rilská 3174/6                            │ Prague              │              │ Czech Republic │ 14300             │ 25.86 │
│ Steve     │ Johnson  │ 78        │ 7          │ 2009-12-08 00:00:00 │ Rotenturmstraße 4, 1010 Innere Stadt     │ Vienne              │              │ Austria        │ 1010              │ 1.98  │
│ Steve     │ Johnson  │ 89        │ 7          │ 2010-01-18 00:00:00 │ Rotenturmstraße 4, 1010 Innere Stadt     │ Vienne              │              │ Austria        │ 1010              │ 18.86 │
│ Steve     │ Johnson  │ 144       │ 7          │ 2010-09-18 00:00:00 │ Rotenturmstraße 4, 1010 Innere Stadt     │ Vienne              │              │ Austria        │ 1010              │ 8.91  │
│ Steve     │ Johnson  │ 273       │ 7          │ 2012-04-24 00:00:00 │ Rotenturmstraße 4, 1010 Innere Stadt     │ Vienne              │              │ Austria        │ 1010              │ 1.98  │
│ Steve     │ Johnson  │ 296       │ 7          │ 2012-07-27 00:00:00 │ Rotenturmstraße 4, 1010 Innere Stadt     │ Vienne              │              │ Austria        │ 1010              │ 3.96  │
│ Steve     │ Johnson  │ 318       │ 7          │ 2012-10-29 00:00:00 │ Rotenturmstraße 4, 1010 Innere Stadt     │ Vienne              │              │ Austria        │ 1010              │ 5.94  │
│ Steve     │ Johnson  │ 370       │ 7          │ 2013-06-19 00:00:00 │ Rotenturmstraße 4, 1010 Innere Stadt     │ Vienne              │              │ Austria        │ 1010              │ 0.99  │
│ Steve     │ Johnson  │ 57        │ 11         │ 2009-09-06 00:00:00 │ Av. Paulista, 2022                       │ São Paulo           │ SP           │ Brazil         │ 01310-200         │ 1.98  │
│ Steve     │ Johnson  │ 68        │ 11         │ 2009-10-17 00:00:00 │ Av. Paulista, 2022                       │ São Paulo           │ SP           │ Brazil         │ 01310-200         │ 13.86 │
│ Steve     │ Johnson  │ 123       │ 11         │ 2010-06-17 00:00:00 │ Av. Paulista, 2022                       │ São Paulo           │ SP           │ Brazil         │ 01310-200         │ 8.91  │
│ Steve     │ Johnson  │ 252       │ 11         │ 2012-01-22 00:00:00 │ Av. Paulista, 2022                       │ São Paulo           │ SP           │ Brazil         │ 01310-200         │ 1.98  │
│ Steve     │ Johnson  │ 275       │ 11         │ 2012-04-25 00:00:00 │ Av. Paulista, 2022                       │ São Paulo           │ SP           │ Brazil         │ 01310-200         │ 3.96  │
│ Steve     │ Johnson  │ 297       │ 11         │ 2012-07-28 00:00:00 │ Av. Paulista, 2022                       │ São Paulo           │ SP           │ Brazil         │ 01310-200         │ 5.94  │
│ Steve     │ Johnson  │ 349       │ 11         │ 2013-03-18 00:00:00 │ Av. Paulista, 2022                       │ São Paulo           │ SP           │ Brazil         │ 01310-200         │ 0.99  │
│ Steve     │ Johnson  │ 4         │ 14         │ 2009-01-06 00:00:00 │ 8210 111 ST NW                           │ Edmonton            │ AB           │ Canada         │ T6G 2C7           │ 8.91  │
│ Steve     │ Johnson  │ 133       │ 14         │ 2010-08-13 00:00:00 │ 8210 111 ST NW                           │ Edmonton            │ AB           │ Canada         │ T6G 2C7           │ 1.98  │
│ Steve     │ Johnson  │ 156       │ 14         │ 2010-11-15 00:00:00 │ 8210 111 ST NW                           │ Edmonton            │ AB           │ Canada         │ T6G 2C7           │ 3.96  │
│ Steve     │ Johnson  │ 178       │ 14         │ 2011-02-17 00:00:00 │ 8210 111 ST NW                           │ Edmonton            │ AB           │ Canada         │ T6G 2C7           │ 5.94  │
│ Steve     │ Johnson  │ 230       │ 14         │ 2011-10-08 00:00:00 │ 8210 111 ST NW                           │ Edmonton            │ AB           │ Canada         │ T6G 2C7           │ 0.99  │
│ Steve     │ Johnson  │ 351       │ 14         │ 2013-03-31 00:00:00 │ 8210 111 ST NW                           │ Edmonton            │ AB           │ Canada         │ T6G 2C7           │ 1.98  │
│ Steve     │ Johnson  │ 362       │ 14         │ 2013-05-11 00:00:00 │ 8210 111 ST NW                           │ Edmonton            │ AB           │ Canada         │ T6G 2C7           │ 13.86 │
│ Steve     │ Johnson  │ 14        │ 17         │ 2009-03-04 00:00:00 │ 1 Microsoft Way                          │ Redmond             │ WA           │ USA            │ 98052-8300        │ 1.98  │
│ Steve     │ Johnson  │ 37        │ 17         │ 2009-06-06 00:00:00 │ 1 Microsoft Way                          │ Redmond             │ WA           │ USA            │ 98052-8300        │ 3.96  │
│ Steve     │ Johnson  │ 59        │ 17         │ 2009-09-08 00:00:00 │ 1 Microsoft Way                          │ Redmond             │ WA           │ USA            │ 98052-8300        │ 5.94  │
│ Steve     │ Johnson  │ 111       │ 17         │ 2010-04-29 00:00:00 │ 1 Microsoft Way                          │ Redmond             │ WA           │ USA            │ 98052-8300        │ 0.99  │
│ Steve     │ Johnson  │ 232       │ 17         │ 2011-10-21 00:00:00 │ 1 Microsoft Way                          │ Redmond             │ WA           │ USA            │ 98052-8300        │ 1.98  │
│ Steve     │ Johnson  │ 243       │ 17         │ 2011-12-01 00:00:00 │ 1 Microsoft Way                          │ Redmond             │ WA           │ USA            │ 98052-8300        │ 13.86 │
│ Steve     │ Johnson  │ 298       │ 17         │ 2012-07-31 00:00:00 │ 1 Microsoft Way                          │ Redmond             │ WA           │ USA            │ 98052-8300        │ 10.91 │
│ Steve     │ Johnson  │ 16        │ 21         │ 2009-03-05 00:00:00 │ 801 W 4th Street                         │ Reno                │ NV           │ USA            │ 89503             │ 3.96  │
│ Steve     │ Johnson  │ 38        │ 21         │ 2009-06-07 00:00:00 │ 801 W 4th Street                         │ Reno                │ NV           │ USA            │ 89503             │ 5.94  │
│ Steve     │ Johnson  │ 90        │ 21         │ 2010-01-26 00:00:00 │ 801 W 4th Street                         │ Reno                │ NV           │ USA            │ 89503             │ 0.99  │
│ Steve     │ Johnson  │ 211       │ 21         │ 2011-07-20 00:00:00 │ 801 W 4th Street                         │ Reno                │ NV           │ USA            │ 89503             │ 1.98  │
│ Steve     │ Johnson  │ 222       │ 21         │ 2011-08-30 00:00:00 │ 801 W 4th Street                         │ Reno                │ NV           │ USA            │ 89503             │ 13.86 │
│ Steve     │ Johnson  │ 277       │ 21         │ 2012-04-29 00:00:00 │ 801 W 4th Street                         │ Reno                │ NV           │ USA            │ 89503             │ 8.91  │
│ Steve     │ Johnson  │ 406       │ 21         │ 2013-12-04 00:00:00 │ 801 W 4th Street                         │ Reno                │ NV           │ USA            │ 89503             │ 1.98  │
│ Steve     │ Johnson  │ 17        │ 25         │ 2009-03-06 00:00:00 │ 319 N. Frances Street                    │ Madison             │ WI           │ USA            │ 53703             │ 5.94  │
│ Steve     │ Johnson  │ 69        │ 25         │ 2009-10-25 00:00:00 │ 319 N. Frances Street                    │ Madison             │ WI           │ USA            │ 53703             │ 0.99  │
│ Steve     │ Johnson  │ 190       │ 25         │ 2011-04-18 00:00:00 │ 319 N. Frances Street                    │ Madison             │ WI           │ USA            │ 53703             │ 1.98  │
│ Steve     │ Johnson  │ 201       │ 25         │ 2011-05-29 00:00:00 │ 319 N. Frances Street                    │ Madison             │ WI           │ USA            │ 53703             │ 18.86 │
│ Steve     │ Johnson  │ 256       │ 25         │ 2012-01-27 00:00:00 │ 319 N. Frances Street                    │ Madison             │ WI           │ USA            │ 53703             │ 8.91  │
│ Steve     │ Johnson  │ 385       │ 25         │ 2013-09-02 00:00:00 │ 319 N. Frances Street                    │ Madison             │ WI           │ USA            │ 53703             │ 1.98  │
│ Steve     │ Johnson  │ 408       │ 25         │ 2013-12-05 00:00:00 │ 319 N. Frances Street                    │ Madison             │ WI           │ USA            │ 53703             │ 3.96  │
│ Steve     │ Johnson  │ 71        │ 28         │ 2009-11-07 00:00:00 │ 302 S 700 E                              │ Salt Lake City      │ UT           │ USA            │ 84102             │ 1.98  │
│ Steve     │ Johnson  │ 82        │ 28         │ 2009-12-18 00:00:00 │ 302 S 700 E                              │ Salt Lake City      │ UT           │ USA            │ 84102             │ 13.86 │
│ Steve     │ Johnson  │ 137       │ 28         │ 2010-08-18 00:00:00 │ 302 S 700 E                              │ Salt Lake City      │ UT           │ USA            │ 84102             │ 8.91  │
│ Steve     │ Johnson  │ 266       │ 28         │ 2012-03-24 00:00:00 │ 302 S 700 E                              │ Salt Lake City      │ UT           │ USA            │ 84102             │ 1.98  │
│ Steve     │ Johnson  │ 289       │ 28         │ 2012-06-26 00:00:00 │ 302 S 700 E                              │ Salt Lake City      │ UT           │ USA            │ 84102             │ 3.96  │
│ Steve     │ Johnson  │ 311       │ 28         │ 2012-09-28 00:00:00 │ 302 S 700 E                              │ Salt Lake City      │ UT           │ USA            │ 84102             │ 11.94 │
│ Steve     │ Johnson  │ 363       │ 28         │ 2013-05-19 00:00:00 │ 302 S 700 E                              │ Salt Lake City      │ UT           │ USA            │ 84102             │ 0.99  │
│ Steve     │ Johnson  │ 18        │ 31         │ 2009-03-09 00:00:00 │ 194A Chain Lake Drive                    │ Halifax             │ NS           │ Canada         │ B3S 1C5           │ 8.91  │
│ Steve     │ Johnson  │ 147       │ 31         │ 2010-10-14 00:00:00 │ 194A Chain Lake Drive                    │ Halifax             │ NS           │ Canada         │ B3S 1C5           │ 1.98  │
│ Steve     │ Johnson  │ 170       │ 31         │ 2011-01-16 00:00:00 │ 194A Chain Lake Drive                    │ Halifax             │ NS           │ Canada         │ B3S 1C5           │ 3.96  │
│ Steve     │ Johnson  │ 192       │ 31         │ 2011-04-20 00:00:00 │ 194A Chain Lake Drive                    │ Halifax             │ NS           │ Canada         │ B3S 1C5           │ 5.94  │
│ Steve     │ Johnson  │ 244       │ 31         │ 2011-12-09 00:00:00 │ 194A Chain Lake Drive                    │ Halifax             │ NS           │ Canada         │ B3S 1C5           │ 0.99  │
│ Steve     │ Johnson  │ 365       │ 31         │ 2013-06-01 00:00:00 │ 194A Chain Lake Drive                    │ Halifax             │ NS           │ Canada         │ B3S 1C5           │ 1.98  │
│ Steve     │ Johnson  │ 376       │ 31         │ 2013-07-12 00:00:00 │ 194A Chain Lake Drive                    │ Halifax             │ NS           │ Canada         │ B3S 1C5           │ 13.86 │
│ Steve     │ Johnson  │ 29        │ 36         │ 2009-05-05 00:00:00 │ Tauentzienstraße 8                       │ Berlin              │              │ Germany        │ 10789             │ 1.98  │
│ Steve     │ Johnson  │ 40        │ 36         │ 2009-06-15 00:00:00 │ Tauentzienstraße 8                       │ Berlin              │              │ Germany        │ 10789             │ 13.86 │
│ Steve     │ Johnson  │ 95        │ 36         │ 2010-02-13 00:00:00 │ Tauentzienstraße 8                       │ Berlin              │              │ Germany        │ 10789             │ 8.91  │
│ Steve     │ Johnson  │ 224       │ 36         │ 2011-09-20 00:00:00 │ Tauentzienstraße 8                       │ Berlin              │              │ Germany        │ 10789             │ 1.98  │
│ Steve     │ Johnson  │ 247       │ 36         │ 2011-12-23 00:00:00 │ Tauentzienstraße 8                       │ Berlin              │              │ Germany        │ 10789             │ 3.96  │
│ Steve     │ Johnson  │ 269       │ 36         │ 2012-03-26 00:00:00 │ Tauentzienstraße 8                       │ Berlin              │              │ Germany        │ 10789             │ 5.94  │
│ Steve     │ Johnson  │ 321       │ 36         │ 2012-11-14 00:00:00 │ Tauentzienstraße 8                       │ Berlin              │              │ Germany        │ 10789             │ 0.99  │
│ Steve     │ Johnson  │ 106       │ 41         │ 2010-04-11 00:00:00 │ 11, Place Bellecour                      │ Lyon                │              │ France         │ 69002             │ 1.98  │
│ Steve     │ Johnson  │ 117       │ 41         │ 2010-05-22 00:00:00 │ 11, Place Bellecour                      │ Lyon                │              │ France         │ 69002             │ 13.86 │
│ Steve     │ Johnson  │ 172       │ 41         │ 2011-01-20 00:00:00 │ 11, Place Bellecour                      │ Lyon                │              │ France         │ 69002             │ 8.91  │
│ Steve     │ Johnson  │ 301       │ 41         │ 2012-08-26 00:00:00 │ 11, Place Bellecour                      │ Lyon                │              │ France         │ 69002             │ 1.98  │
│ Steve     │ Johnson  │ 324       │ 41         │ 2012-11-28 00:00:00 │ 11, Place Bellecour                      │ Lyon                │              │ France         │ 69002             │ 3.96  │
│ Steve     │ Johnson  │ 346       │ 41         │ 2013-03-02 00:00:00 │ 11, Place Bellecour                      │ Lyon                │              │ France         │ 69002             │ 5.94  │
│ Steve     │ Johnson  │ 398       │ 41         │ 2013-10-21 00:00:00 │ 11, Place Bellecour                      │ Lyon                │              │ France         │ 69002             │ 0.99  │
│ Steve     │ Johnson  │ 63        │ 47         │ 2009-10-07 00:00:00 │ Via Degli Scipioni, 43                   │ Rome                │ RM           │ Italy          │ 00192             │ 1.98  │
│ Steve     │ Johnson  │ 86        │ 47         │ 2010-01-09 00:00:00 │ Via Degli Scipioni, 43                   │ Rome                │ RM           │ Italy          │ 00192             │ 3.96  │
│ Steve     │ Johnson  │ 108       │ 47         │ 2010-04-13 00:00:00 │ Via Degli Scipioni, 43                   │ Rome                │ RM           │ Italy          │ 00192             │ 5.94  │
│ Steve     │ Johnson  │ 160       │ 47         │ 2010-12-02 00:00:00 │ Via Degli Scipioni, 43                   │ Rome                │ RM           │ Italy          │ 00192             │ 0.99  │
│ Steve     │ Johnson  │ 281       │ 47         │ 2012-05-25 00:00:00 │ Via Degli Scipioni, 43                   │ Rome                │ RM           │ Italy          │ 00192             │ 1.98  │
│ Steve     │ Johnson  │ 292       │ 47         │ 2012-07-05 00:00:00 │ Via Degli Scipioni, 43                   │ Rome                │ RM           │ Italy          │ 00192             │ 13.86 │
│ Steve     │ Johnson  │ 347       │ 47         │ 2013-03-05 00:00:00 │ Via Degli Scipioni, 43                   │ Rome                │ RM           │ Italy          │ 00192             │ 8.91  │
│ Steve     │ Johnson  │ 32        │ 48         │ 2009-05-10 00:00:00 │ Lijnbaansgracht 120bg                    │ Amsterdam           │ VV           │ Netherlands    │ 1016              │ 8.91  │
│ Steve     │ Johnson  │ 161       │ 48         │ 2010-12-15 00:00:00 │ Lijnbaansgracht 120bg                    │ Amsterdam           │ VV           │ Netherlands    │ 1016              │ 1.98  │
│ Steve     │ Johnson  │ 184       │ 48         │ 2011-03-19 00:00:00 │ Lijnbaansgracht 120bg                    │ Amsterdam           │ VV           │ Netherlands    │ 1016              │ 3.96  │
│ Steve     │ Johnson  │ 206       │ 48         │ 2011-06-21 00:00:00 │ Lijnbaansgracht 120bg                    │ Amsterdam           │ VV           │ Netherlands    │ 1016              │ 8.94  │
│ Steve     │ Johnson  │ 258       │ 48         │ 2012-02-09 00:00:00 │ Lijnbaansgracht 120bg                    │ Amsterdam           │ VV           │ Netherlands    │ 1016              │ 0.99  │
│ Steve     │ Johnson  │ 379       │ 48         │ 2013-08-02 00:00:00 │ Lijnbaansgracht 120bg                    │ Amsterdam           │ VV           │ Netherlands    │ 1016              │ 1.98  │
│ Steve     │ Johnson  │ 390       │ 48         │ 2013-09-12 00:00:00 │ Lijnbaansgracht 120bg                    │ Amsterdam           │ VV           │ Netherlands    │ 1016              │ 13.86 │
│ Steve     │ Johnson  │ 41        │ 50         │ 2009-06-23 00:00:00 │ C/ San Bernardo 85                       │ Madrid              │              │ Spain          │ 28015             │ 0.99  │
│ Steve     │ Johnson  │ 162       │ 50         │ 2010-12-15 00:00:00 │ C/ San Bernardo 85                       │ Madrid              │              │ Spain          │ 28015             │ 1.98  │
│ Steve     │ Johnson  │ 173       │ 50         │ 2011-01-25 00:00:00 │ C/ San Bernardo 85                       │ Madrid              │              │ Spain          │ 28015             │ 13.86 │
│ Steve     │ Johnson  │ 228       │ 50         │ 2011-09-25 00:00:00 │ C/ San Bernardo 85                       │ Madrid              │              │ Spain          │ 28015             │ 8.91  │
│ Steve     │ Johnson  │ 357       │ 50         │ 2013-05-01 00:00:00 │ C/ San Bernardo 85                       │ Madrid              │              │ Spain          │ 28015             │ 1.98  │
│ Steve     │ Johnson  │ 380       │ 50         │ 2013-08-03 00:00:00 │ C/ San Bernardo 85                       │ Madrid              │              │ Spain          │ 28015             │ 3.96  │
│ Steve     │ Johnson  │ 402       │ 50         │ 2013-11-05 00:00:00 │ C/ San Bernardo 85                       │ Madrid              │              │ Spain          │ 28015             │ 5.94  │
│ Steve     │ Johnson  │ 42        │ 51         │ 2009-07-06 00:00:00 │ Celsiusg. 9                              │ Stockholm           │              │ Sweden         │ 11230             │ 1.98  │
│ Steve     │ Johnson  │ 65        │ 51         │ 2009-10-08 00:00:00 │ Celsiusg. 9                              │ Stockholm           │              │ Sweden         │ 11230             │ 3.96  │
│ Steve     │ Johnson  │ 87        │ 51         │ 2010-01-10 00:00:00 │ Celsiusg. 9                              │ Stockholm           │              │ Sweden         │ 11230             │ 6.94  │
│ Steve     │ Johnson  │ 139       │ 51         │ 2010-08-31 00:00:00 │ Celsiusg. 9                              │ Stockholm           │              │ Sweden         │ 11230             │ 0.99  │
│ Steve     │ Johnson  │ 260       │ 51         │ 2012-02-22 00:00:00 │ Celsiusg. 9                              │ Stockholm           │              │ Sweden         │ 11230             │ 1.98  │
│ Steve     │ Johnson  │ 271       │ 51         │ 2012-04-03 00:00:00 │ Celsiusg. 9                              │ Stockholm           │              │ Sweden         │ 11230             │ 13.86 │
│ Steve     │ Johnson  │ 326       │ 51         │ 2012-12-02 00:00:00 │ Celsiusg. 9                              │ Stockholm           │              │ Sweden         │ 11230             │ 8.91  │
│ Steve     │ Johnson  │ 20        │ 54         │ 2009-03-22 00:00:00 │ 110 Raeburn Pl                           │ Edinburgh           │              │ United Kingdom │ EH4 1HH           │ 0.99  │
│ Steve     │ Johnson  │ 141       │ 54         │ 2010-09-13 00:00:00 │ 110 Raeburn Pl                           │ Edinburgh           │              │ United Kingdom │ EH4 1HH           │ 1.98  │
│ Steve     │ Johnson  │ 152       │ 54         │ 2010-10-24 00:00:00 │ 110 Raeburn Pl                           │ Edinburgh           │              │ United Kingdom │ EH4 1HH           │ 13.86 │
│ Steve     │ Johnson  │ 207       │ 54         │ 2011-06-24 00:00:00 │ 110 Raeburn Pl                           │ Edinburgh           │              │ United Kingdom │ EH4 1HH           │ 8.91  │
│ Steve     │ Johnson  │ 336       │ 54         │ 2013-01-28 00:00:00 │ 110 Raeburn Pl                           │ Edinburgh           │              │ United Kingdom │ EH4 1HH           │ 1.98  │
│ Steve     │ Johnson  │ 359       │ 54         │ 2013-05-02 00:00:00 │ 110 Raeburn Pl                           │ Edinburgh           │              │ United Kingdom │ EH4 1HH           │ 3.96  │
│ Steve     │ Johnson  │ 381       │ 54         │ 2013-08-04 00:00:00 │ 110 Raeburn Pl                           │ Edinburgh           │              │ United Kingdom │ EH4 1HH           │ 5.94  │
│ Steve     │ Johnson  │ 22        │ 57         │ 2009-04-04 00:00:00 │ Calle Lira, 198                          │ Santiago            │              │ Chile          │                   │ 1.98  │
│ Steve     │ Johnson  │ 33        │ 57         │ 2009-05-15 00:00:00 │ Calle Lira, 198                          │ Santiago            │              │ Chile          │                   │ 13.86 │
│ Steve     │ Johnson  │ 88        │ 57         │ 2010-01-13 00:00:00 │ Calle Lira, 198                          │ Santiago            │              │ Chile          │                   │ 17.91 │
│ Steve     │ Johnson  │ 217       │ 57         │ 2011-08-20 00:00:00 │ Calle Lira, 198                          │ Santiago            │              │ Chile          │                   │ 1.98  │
│ Steve     │ Johnson  │ 240       │ 57         │ 2011-11-22 00:00:00 │ Calle Lira, 198                          │ Santiago            │              │ Chile          │                   │ 3.96  │
│ Steve     │ Johnson  │ 262       │ 57         │ 2012-02-24 00:00:00 │ Calle Lira, 198                          │ Santiago            │              │ Chile          │                   │ 5.94  │
│ Steve     │ Johnson  │ 314       │ 57         │ 2012-10-14 00:00:00 │ Calle Lira, 198                          │ Santiago            │              │ Chile          │                   │ 0.99  │
└───────────┴──────────┴───────────┴────────────┴─────────────────────┴──────────────────────────────────────────┴─────────────────────┴──────────────┴────────────────┴───────────────────┴───────┘

--Proporciona una consulta que muestre el Total de la Factura, nombre del cliente, país y nombre del Agente de Ventas para todas las facturas y clientes.
SELECT i.Total AS Total_Factura, c.FirstName AS Nombre_Cliente, c.Country AS Pais, e.FirstName AS Nombre_Agente FROM employees AS e JOIN customers AS c ON e.EmployeeId = c.SupportRepId JOIN invoices AS i ON c.CustomerId = i.CustomerId;


¿Cuántas facturas hubo en 2009 y 2011? ¿Cuáles son las ventas totales respectivas para cada uno de esos años?
SELECT substr(InvoiceDate, 1, 4) as years,count(InvoiceId) FROM invoices WHERE InvoiceDate REGEXP '^2009-' or InvoiceDate REGEXP '^2011-' GROUP BY years; 
┌───────┬──────────────────┐
│ years │ count(InvoiceId) │
├───────┼──────────────────┤
│ 2009  │ 83               │
│ 2011  │ 83               │
└───────┴──────────────────┘

SELECT substr(InvoiceDate, 1, 4) as years,count(InvoiceId) FROM invoices  GROUP BY years; 
┌───────┬──────────────────┐
│ years │ count(InvoiceId) │
├───────┼──────────────────┤
│ 2009  │ 83               │
│ 2010  │ 83               │
│ 2011  │ 83               │
│ 2012  │ 83               │
│ 2013  │ 80               │
└───────┴──────────────────┘


--Mirando la tabla de InvoiceLine, proporciona una consulta que CUENTE el número de ítems de línea para el ID de factura 37.
select InvoiceId, count(InvoiceLineId) as Items from Invoice_items where InvoiceId = 37;
┌───────────┬───────┐
│ InvoiceId │ Items │
├───────────┼───────┤
│ 37        │ 4     │
└───────────┴───────┘
--Mirando la tabla de InvoiceLine, proporciona una consulta que CUENTE el número de ítems de línea para cada Factura.
select InvoiceId, count(InvoiceLineId) as Number_of_items from Invoice_items group by InvoiceId;
┌───────────┬─────────────────┐
│ InvoiceId │ Number_of_items │
├───────────┼─────────────────┤
│ 1         │ 2               │
│ 2         │ 4               │
│ 3         │ 6               │
│ 4         │ 9               │
│ 5         │ 14              │
│ 6         │ 1               │
│ 7         │ 2               │
│ 8         │ 2               │
│ 9         │ 4               │
│ 10        │ 6               │ 
│ 11        │ 9               │
│ 12        │ 14              │
│ 13        │ 1               │
│ 14        │ 2               │
│ 15        │ 2               │
│ 16        │ 4               │
│ 17        │ 6               │
│ 18        │ 9               │
│ 19        │ 14              │
│ 20        │ 1               │
│ 21        │ 2               │
│ 22        │ 2               │
│ 23        │ 4               │
│ 24        │ 6               │
│ 25        │ 9               │
│ 26        │ 14              │
│ 27        │ 1               │
│ 28        │ 2               │
│ 29        │ 2               │
│ 412       │ 1               │
└───────────┴─────────────────┘

--Proporciona una consulta que incluya el nombre de la pista con cada ítem de línea de factura.
select t.Name, i.InvoiceLineId from Tracks as t join Invoice_items as i on i.TrackId = t.TrackId;
┌─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┬───────────────┐
│                                                            Name                                                             │ InvoiceLineId │
├─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┼───────────────┤
│ For Those About To Rock (We Salute You)                                                                                     │ 579           │
│ Balls to the Wall                                                                                                           │ 1             │
│ Balls to the Wall                                                                                                           │ 1154          │
│ Fast As a Shark                                                                                                             │ 1728          │
│ Restless and Wild                                                                                                           │ 2             │
│ Princess of the Dawn                                                                                                        │ 580           │
│ Chapa o Coco                                                                                                                │ 550           │
│ Um Lugar ao Sol                                                                                                             │ 1124          │
│ Todo o Carnaval tem seu Fim                                                                                                 │ 551           │
│ Armadura                                                                                                                    │ 1697          │
│ Funk de Bamba                                                                                                               │ 552           │
│ Chega no Suingue                                                                                                            │ 1125          │
│ Past, Present, and Future                                                                                                   │ 1698          │
│ The Beginning of the End                                                                                                    │ 553           │
│ The Economist                                                                                                               │ 1126          │
│ Ji Yeon                                                                                                                     │ 1699          │
│ Meet Kevin Johnson                                                                                                          │ 554           │
│ Din Din Wo (Little Child)                                                                                                   │ 1127          │
│ Love Comes                                                                                                                  │ 1700          │
│ Muita Bobeira                                                                                                               │ 555           │
│ Symphony No. 2: III. Allegro vivace                                                                                         │ 1151          │
│ Partita in E Major, BWV 1006A: I. Prelude                                                                                   │ 575           │
│ Sing Joyfully                                                                                                               │ 576           │
│ Metopes, Op. 29: Calypso                                                                                                    │ 1152          │
│ Symphony No. 2, Op. 16 -  "The Four Temperaments": II. Allegro Comodo e Flemmatico                                          │ 1726          │
│ Étude 1, In C Major - Preludio (Presto) - Liszt                                                                             │ 577           │
│ Pini Di Roma (Pinien Von Rom) \ I Pini Della Via Appia                                                                      │ 1153          │
│ String Quartet No. 12 in C Minor, D. 703 "Quartettsatz": II. Andante - Allegro assai                                        │ 578           │
│ String Quartet No. 12 in C Minor, D. 703 "Quartettsatz": II. Andante - Allegro assai                                        │ 1727          │
└─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┴───────────────┘

--Proporciona una consulta que incluya el nombre de la pista comprada Y el nombre del artista con cada ítem de línea de factura.
select t.Name , t.Composer, i.InvoiceLineId from Tracks as t, Invoice_items as i where t.TrackId = i.TrackId;
┌─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┬──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┬───────────────┐
│                                                            Name                                                             │                                                                                           Composer                                                                                           │ InvoiceLineId │
├─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┼──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┼───────────────┤
│ For Those About To Rock (We Salute You)                                                                                     │ Angus Young, Malcolm Young, Brian Johnson                                                                                                                                                    │ 579           │
│ Balls to the Wall                                                                                                           │                                                                                                                                                                                              │ 1             │
│ Balls to the Wall                                                                                                           │                                                                                                                                                                                              │ 1154          │
│ Fast As a Shark                                                                                                             │ F. Baltes, S. Kaufman, U. Dirkscneider & W. Hoffman                                                                                                                                          │ 1728          │
│ Restless and Wild                                                                                                           │ F. Baltes, R.A. Smith-Diesel, S. Kaufman, U. Dirkscneider & W. Hoffman                                                                                                                       │ 2             │
│ Princess of the Dawn                                                                                                        │ Deaffy & R.A. Smith-Diesel                                                                                                                                                                   │ 580           │
│ Put The Finger On You                                                                                                       │ Angus Young, Malcolm Young, Brian Johnson                                                                                                                                                    │ 3             │
│ Inject The Venom                                                                                                            │ Angus Young, Malcolm Young, Brian Johnson                                                                                                                                                    │ 4             │
│ Inject The Venom                                                                                                            │ Angus Young, Malcolm Young, Brian Johnson                                                                                                                                                    │ 1155          │
│ Snowballed                                                                                                                  │ Angus Young, Malcolm Young, Brian Johnson                                                                                                                                                    │ 581           │
│ Snowballed                                                                                                                  │ Angus Young, Malcolm Young, Brian Johnson                                                                                                                                                    │ 1729          │
│ Evil Walks                                                                                                                  │ Angus Young, Malcolm Young, Brian Johnson                                                                                                                                                    │ 5             │
│ Breaking The Rules                                                                                                          │ Angus Young, Malcolm Young, Brian Johnson                                                                                                                                                    │ 6             │
│ Night Of The Long Knives                                                                                                    │ Angus Young, Malcolm Young, Brian Johnson                                                                                                                                                    │ 582           │
│ Spellbound                                                                                                                  │ Angus Young, Malcolm Young, Brian Johnson                                                                                                                                                    │ 1156          │
│ Go Down                                                                                                                     │ AC/DC                                                                                                                                                                                        │ 1730          │
│ Dog Eat Dog                                                                                                                 │ AC/DC                                                                                                                                                                                        │ 7             │
│ Problem Child                                                                                                               │ AC/DC                                                                                                                                                                                        │ 583           │
│ Overdose                                                                                                                    │ AC/DC                                                                                                                                                                                        │ 8             │
│ Overdose                                                                                                                    │ AC/DC                                                                                                                                                                                        │ 1157          │
│ Hell Ain't A Bad Place To Be                                                                                                │ AC/DC                                                                                                                                                                                        │ 1731          │
│ Love In An Elevator                                                                                                         │ Steven Tyler, Joe Perry                                                                                                                                                                      │ 9             │
│ Rag Doll                                                                                                                    │ Steven Tyler, Joe Perry, Jim Vallance, Holly Knight                                                                                                                                          │ 584           │
│ What It Takes                                                                                                               │ Steven Tyler, Joe Perry, Desmond Child                                                                                                                                                       │ 1158          │
│ Janie's Got A Gun                                                                                                           │ Steven Tyler, Tom Hamilton                                                                                                                                                                   │ 10            │
│ Amazing                                                                                                                     │ Steven Tyler, Richie Supa                                                                                                                                                                    │ 1732          │
│ Blind Man                                                                                                                   │ Steven Tyler, Joe Perry, Taylor Rhodes                                                                                                                                                       │ 585           │
│ Deuces Are Wild                                                                                                             │ Steven Tyler, Jim Vallance                                                                                                                                                                   │ 11            │
│ Deuces Are Wild                                                                                                             │ Steven Tyler, Jim Vallance                                                                                                                                                                   │ 1159          │
│ Angel                                                                                                                       │ Steven Tyler, Desmond Child                                                                                                                                                                  │ 12            │
│ Livin' On The Edge                                                                                                          │ Steven Tyler, Joe Perry, Mark Hudson                                                                                                                                                         │ 586           │
│ All I Really Want                                                                                                           │ Alanis Morissette & Glenn Ballard                                                                                                                                                            │ 1160          │
│ You Oughta Know                                                                                                             │ Alanis Morissette & Glenn Ballard                                                                                                                                                            │ 1733          │
│ Right Through You                                                                                                           │ Alanis Morissette & Glenn Ballard                                                                                                                                                            │ 13            │
│ Forgiven                                                                                                                    │ Alanis Morissette & Glenn Ballard                                                                                                                                                            │ 587           │
│ You Learn                                                                                                                   │ Alanis Morissette & Glenn Ballard                                                                                                                                                            │ 1161          │
│ Not The Doctor                                                                                                              │ Alanis Morissette & Glenn Ballard                                                                                                                                                            │ 14            │
│ Not The Doctor                                                                                                              │ Alanis Morissette & Glenn Ballard                                                                                                                                                            │ 1734          │
│ Wake Up                                                                                                                     │ Alanis Morissette & Glenn Ballard                                                                                                                                                            │ 588           │
│ Sea Of Sorrow                                                                                                               │ Jerry Cantrell                                                                                                                                                                               │ 1162          │
│ Bleed The Freak                                                                                                             │ Jerry Cantrell                                                                                                                                                                               │ 15            │
│ I Can't Remember                                                                                                            │ Jerry Cantrell, Layne Staley                                                                                                                                                                 │ 589           │
│ It Ain't Like That                                                                                                          │ Jerry Cantrell, Michael Starr, Sean Kinney                                                                                                                                                   │ 1735          │
│ Confusion                                                                                                                   │ Jerry Cantrell, Michael Starr, Layne Staley                                                                                                                                                  │ 16            │
│ I Know Somethin (Bout You)                                                                                                  │ Jerry Cantrell                                                                                                                                                                               │ 590           │
│ Real Thing                                                                                                                  │ Jerry Cantrell, Layne Staley                                                                                                                                                                 │ 1163          │
│ Por Causa De Você                                                                                                           │                                                                                                                                                                                              │ 17            │
│ Por Causa De Você                                                                                                           │                                                                                                                                                                                              │ 1736          │
│ Ligia                                                                                                                       │                                                                                                                                                                                              │ 591           │
│ Falando De Amor                                                                                                             │                                                                                                                                                                                              │ 1164          │
│ Angela                                                                                                                      │                                                                                                                                                                                              │ 18            │
│ O Boto (Bôto)                                                                                                               │                                                                                                                                                                                              │ 1737          │
│ Canta, Canta Mais                                                                                                           │                                                                                                                                                                                              │ 592           │
│ Master Of Puppets                                                                                                           │ Apocalyptica                                                                                                                                                                                 │ 19            │
│ The Unforgiven                                                                                                              │ Apocalyptica                                                                                                                                                                                 │ 1165          │
│ Welcome Home (Sanitarium)                                                                                                   │ Apocalyptica                                                                                                                                                                                 │ 20            │
│ Welcome Home (Sanitarium)                                                                                                   │ Apocalyptica                                                                                                                                                                                 │ 1738          │
│ Cochise                                                                                                                     │ Audioslave/Chris Cornell                                                                                                                                                                     │ 593           │
│ Like a Stone                                                                                                                │ Audioslave/Chris Cornell                                                                                                                                                                     │ 1166          │
│ Set It Off                                                                                                                  │ Audioslave/Chris Cornell                                                                                                                                                                     │ 21            │
│ Exploder                                                                                                                    │ Audioslave/Chris Cornell                                                                                                                                                                     │ 1739          │
│ Hypnotize                                                                                                                   │ Audioslave/Chris Cornell                                                                                                                                                                     │ 594           │
│ The Last Remaining Light                                                                                                    │ Audioslave/Chris Cornell                                                                                                                                                                     │ 1167          │
│ Your Time Has Come                                                                                                          │ Cornell, Commerford, Morello, Wilk                                                                                                                                                           │ 22            │
│ Doesn't Remind Me                                                                                                           │ Cornell, Commerford, Morello, Wilk                                                                                                                                                           │ 1740          │
│ Drown Me Slowly                                                                                                             │ Cornell, Commerford, Morello, Wilk                                                                                                                                                           │ 595           │
│ Yesterday To Tomorrow                                                                                                       │ Cornell, Commerford, Morello, Wilk                                                                                                                                                           │ 1168          │
│ Dandelion                                                                                                                   │ Cornell, Commerford, Morello, Wilk                                                                                                                                                           │ 23            │
│ Money                                                                                                                       │ Berry Gordy, Jr./Janie Bradford                                                                                                                                                              │ 1741          │
│ Long Tall Sally                                                                                                             │ Enotris Johnson/Little Richard/Robert "Bumps" Blackwell                                                                                                                                      │ 596           │
│ C'Mon Everybody                                                                                                             │ Eddie Cochran/Jerry Capehart                                                                                                                                                                 │ 1169          │
│ Rock 'N' Roll Music                                                                                                         │ Chuck Berry                                                                                                                                                                                  │ 24            │
│ Carol                                                                                                                       │ Chuck Berry                                                                                                                                                                                  │ 1742          │
│ Good Golly Miss Molly                                                                                                       │ Little Richard                                                                                                                                                                               │ 597           │
│ Spanish moss-"A sound portrait"-Spanish moss                                                                                │ Billy Cobham                                                                                                                                                                                 │ 1170          │
│ Moon germs                                                                                                                  │ Billy Cobham                                                                                                                                                                                 │ 25            │
│ Solo-Panhandler                                                                                                             │ Billy Cobham                                                                                                                                                                                 │ 1743          │
│ Do what cha wanna                                                                                                           │ George Duke                                                                                                                                                                                  │ 598           │
│ All For You                                                                                                                 │                                                                                                                                                                                              │ 1171          │
│ Super Terrorizer                                                                                                            │                                                                                                                                                                                              │ 26            │
│ Bored To Tears                                                                                                              │                                                                                                                                                                                              │ 1744          │
│ A.N.D.R.O.T.A.Z.                                                                                                            │                                                                                                                                                                                              │ 599           │
│ The Begining... At Last                                                                                                     │                                                                                                                                                                                              │ 1172          │
│ Heart Of Gold                                                                                                               │                                                                                                                                                                                              │ 27            │
│ Blood In The Wall                                                                                                           │                                                                                                                                                                                              │ 1745          │
│ The Beginning...At Last                                                                                                     │                                                                                                                                                                                              │ 600           │
│ N.I.B.                                                                                                                      │                                                                                                                                                                                              │ 1173          │
│ Evil Woman                                                                                                                  │                                                                                                                                                                                              │ 28            │
│ Tomorrow's Dream                                                                                                            │ Tony Iommi, Bill Ward, Geezer Butler, Ozzy Osbourne                                                                                                                                          │ 601           │
│ Snowblind                                                                                                                   │ Tony Iommi, Bill Ward, Geezer Butler, Ozzy Osbourne                                                                                                                                          │ 1174          │
│ Snowblind                                                                                                                   │ Tony Iommi, Bill Ward, Geezer Butler, Ozzy Osbourne                                                                                                                                          │ 1746          │
│ Cornucopia                                                                                                                  │ Tony Iommi, Bill Ward, Geezer Butler, Ozzy Osbourne                                                                                                                                          │ 29            │
│ Cornucopia                                                                                                                  │ Tony Iommi, Bill Ward, Geezer Butler, Ozzy Osbourne                                                                                                                                          │ 1747          │
│ Laguna Sunrise                                                                                                              │ Tony Iommi, Bill Ward, Geezer Butler, Ozzy Osbourne                                                                                                                                          │ 1748          │
│ Under The Sun/Every Day Comes and Goes                                                                                      │ Tony Iommi, Bill Ward, Geezer Butler, Ozzy Osbourne                                                                                                                                          │ 1749          │
│ Smoked Pork                                                                                                                 │                                                                                                                                                                                              │ 602           │
│ Body Count's In The House                                                                                                   │                                                                                                                                                                                              │ 1750          │
│ Body Count                                                                                                                  │                                                                                                                                                                                              │ 1751          │
│ A Statistic                                                                                                                 │                                                                                                                                                                                              │ 1175          │
│ Bowels Of The Devil                                                                                                         │                                                                                                                                                                                              │ 30            │
│ Bowels Of The Devil                                                                                                         │                                                                                                                                                                                              │ 1752          │
│ KKK Bitch                                                                                                                   │                                                                                                                                                                                              │ 1753          │
│ Voodoo                                                                                                                      │                                                                                                                                                                                              │ 603           │
│ Voodoo                                                                                                                      │                                                                                                                                                                                              │ 1754          │
│ Evil Dick                                                                                                                   │                                                                                                                                                                                              │ 1755          │
│ Body Count Anthem                                                                                                           │                                                                                                                                                                                              │ 31            │
│ King In Crimson                                                                                                             │ Roy Z                                                                                                                                                                                        │ 1756          │
│ Chemical Wedding                                                                                                            │ Roy Z                                                                                                                                                                                        │ 604           │
│ Chemical Wedding                                                                                                            │ Roy Z                                                                                                                                                                                        │ 1176          │
│ The Tower                                                                                                                   │ Roy Z                                                                                                                                                                                        │ 1177          │
│ Killing Floor                                                                                                               │ Adrian Smith                                                                                                                                                                                 │ 1178          │
│ Book Of Thel                                                                                                                │ Eddie Casillas/Roy Z                                                                                                                                                                         │ 1757          │
│ Gates Of Urizen                                                                                                             │ Roy Z                                                                                                                                                                                        │ 1179          │
│ Jerusalem                                                                                                                   │ Roy Z                                                                                                                                                                                        │ 32            │
│ Trupets Of Jericho                                                                                                          │ Roy Z                                                                                                                                                                                        │ 1180          │
│ Machine Men                                                                                                                 │ Adrian Smith                                                                                                                                                                                 │ 1758          │
│ The Alchemist                                                                                                               │ Roy Z                                                                                                                                                                                        │ 1181          │
│ Realword                                                                                                                    │ Roy Z                                                                                                                                                                                        │ 605           │
│ First Time I Met The Blues                                                                                                  │ Eurreal Montgomery                                                                                                                                                                           │ 1182          │
│ Let Me Love You Baby                                                                                                        │ Willie Dixon                                                                                                                                                                                 │ 1759          │
│ Stone Crazy                                                                                                                 │ Buddy Guy                                                                                                                                                                                    │ 1183          │
│ When My Left Eye Jumps                                                                                                      │ Al Perkins/Willie Dixon                                                                                                                                                                      │ 33            │
│ When My Left Eye Jumps                                                                                                      │ Al Perkins/Willie Dixon                                                                                                                                                                      │ 1184          │
│ Leave My Girl Alone                                                                                                         │ Buddy Guy                                                                                                                                                                                    │ 1760          │
│ My Time After Awhile                                                                                                        │ Robert Geddins/Ron Badger/Sheldon Feinberg                                                                                                                                                   │ 1185          │
│ Jorge Da Capadócia                                                                                                          │ Jorge Ben                                                                                                                                                                                    │ 1761          │
│ Prenda Minha                                                                                                                │ Tradicional                                                                                                                                                                                  │ 1186          │
│ Meditação                                                                                                                   │ Tom Jobim - Newton Mendoça                                                                                                                                                                   │ 34            │
│ Meditação                                                                                                                   │ Tom Jobim - Newton Mendoça                                                                                                                                                                   │ 606           │
│ Terra                                                                                                                       │ Caetano Veloso                                                                                                                                                                               │ 607           │
│ Eclipse Oculto                                                                                                              │ Caetano Veloso                                                                                                                                                                               │ 608           │
│ Texto "Verdade Tropical"                                                                                                    │ Caetano Veloso                                                                                                                                                                               │ 1187          │
│ Bem Devagar                                                                                                                 │ Gilberto Gil                                                                                                                                                                                 │ 609           │
│ Bem Devagar                                                                                                                 │ Gilberto Gil                                                                                                                                                                                 │ 1762          │
│ Saudosismo                                                                                                                  │ Caetano Veloso                                                                                                                                                                               │ 610           │
│ Carolina                                                                                                                    │ Chico Buarque                                                                                                                                                                                │ 1188          │
│ Sozinho                                                                                                                     │ Peninha                                                                                                                                                                                      │ 611           │
│ Esse Cara                                                                                                                   │ Caetano Veloso                                                                                                                                                                               │ 35            │
│ Mel                                                                                                                         │ Caetano Veloso - Waly Salomão                                                                                                                                                                │ 612           │
│ Mel                                                                                                                         │ Caetano Veloso - Waly Salomão                                                                                                                                                                │ 1763          │
│ Linha Do Equador                                                                                                            │ Caetano Veloso - Djavan                                                                                                                                                                      │ 1189          │
│ Odara                                                                                                                       │ Caetano Veloso                                                                                                                                                                               │ 613           │
│ Atrás Da Verd-E-Rosa Só Não Vai Quem Já Morreu                                                                              │ David Corrêa - Paulinho Carvalho - Carlos Sena - Bira do Ponto                                                                                                                               │ 614           │
│ Vida Boa                                                                                                                    │ Fausto Nilo - Armandinho                                                                                                                                                                     │ 1190          │
│ Sozinho (Hitmakers Classic Mix)                                                                                             │                                                                                                                                                                                              │ 1764          │
│ Sozinho (Caêdrum 'n' Bass)                                                                                                  │                                                                                                                                                                                              │ 615           │
│ Vai Passar                                                                                                                  │                                                                                                                                                                                              │ 1191          │
│ Samba De Orly                                                                                                               │                                                                                                                                                                                              │ 616           │
│ Samba De Orly                                                                                                               │                                                                                                                                                                                              │ 1765          │
│ Bye, Bye Brasil                                                                                                             │                                                                                                                                                                                              │ 36            │
│ Atras Da Porta                                                                                                              │                                                                                                                                                                                              │ 37            │
│ Tatuagem                                                                                                                    │                                                                                                                                                                                              │ 38            │
│ O Que Será (À Flor Da Terra)                                                                                                │                                                                                                                                                                                              │ 617           │
│ Morena De Angola                                                                                                            │                                                                                                                                                                                              │ 39            │
│ Morena De Angola                                                                                                            │                                                                                                                                                                                              │ 1192          │
└─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┴──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┴───────────────┘


--Proporciona una consulta que muestre el número total de pistas en cada lista de reproducción. El nombre de la lista de reproducción debe estar incluido en la tabla resultante.
SELECT pl.Name AS PlaylistName, COUNT(pt.TrackId) AS TotalTracks FROM playlists AS pl JOIN playlist_track AS pt ON pl.PlaylistId = pt.PlaylistId GROUP BY pl.PlaylistId, pl.Name;
┌────────────────────────────┬─────────────┐
│        PlaylistName        │ TotalTracks │
├────────────────────────────┼─────────────┤
│ Music                      │ 3290        │
│ TV Shows                   │ 213         │
│ 90's Music                 │ 1477        │
│ Music                      │ 3290        │
│ Music Videos               │ 1           │
│ TV Shows                   │ 213         │
│ Brazilian Music            │ 39          │
│ Classical                  │ 75          │
│ Classical 101 - Deep Cuts  │ 25          │
│ Classical 101 - Next Steps │ 25          │
│ Classical 101 - The Basics │ 25          │
│ Grunge                     │ 15          │
│ Heavy Metal Classic        │ 26          │
│ On-The-Go 1                │ 1           │
└────────────────────────────┴─────────────┘

--Proporciona una consulta que muestre todas las pistas, pero no muestre IDs. La tabla resultante debe incluir el nombre del álbum, el tipo de medio y el género.
select a.Title, pl.name, g.name,mt.name from playlists as pl 
join playlist_track AS pt ON pl.PlaylistId=pt.PlaylistId 
join Tracks as t on t.TrackId=pt.TrackId 
join media_types as  mt on mt.mediaTypeId=t.mediaTypeId 
join genres as g on g.GenreId=t.GenreId
join albums as a on a.albumid=t.albumid;
--Proporciona una consulta que muestre todas las facturas.
select * from invoices;
--Proporciona una consulta que muestre las ventas totales realizadas por cada agente de ventas.
select e.FirstName,count(i.InvoiceId) from invoices as i 
join customers as c on c.CustomerId=i.CustomerId
join employees as e on e.EmployeeId=c.SupportRepId and w group by e.FirstName;
┌───────────┬────────────────────┐
│ FirstName │ count(i.InvoiceId) │
├───────────┼────────────────────┤
│ Jane      │ 146                │
│ Margaret  │ 140                │
│ Steve     │ 126                │
└───────────┴────────────────────┘

--¿Qué agente de ventas realizó más ventas en 2009?
select e.FirstName,count(i.InvoiceId) from invoices as i 
join customers as c on c.CustomerId=i.CustomerId
join employees as e on e.EmployeeId=c.SupportRepId and i.InvoiceDate regexp '^2009' group by e.FirstName;
┌───────────┬────────────────────┐
│ FirstName │ count(i.InvoiceId) │
├───────────┼────────────────────┤
│ Jane      │ 25                 │
│ Margaret  │ 30                 │
│ Steve     │ 28                 │
└───────────┴────────────────────┘
                                                                           
--Escribir una consulta que muestre todas las playlists de la base de datos.
select * from playlist;
--Escribe una consulta que liste todas las canciones de una playlist.
select t.name from playlists as pl 
join playlist_track AS pt ON pl.PlaylistId=pt.PlaylistId 
join Tracks as t on t.TrackId=pt.TrackId 
join albums as a on a.albumid=t.albumid;
--Escribe una consulta que liste exclusivamente el nombre de las canciones de una playlist concreta, con el nombre de su género y el nombre de tipo de medio.
SELECT
    t.TrackId,t.Name AS TrackName,g.Name AS Genre,mt.Name AS MediaType,p.PlaylistId,
    p.Name AS PlaylistName FROM playlists AS p JOIN  playlist_track AS pt ON p.PlaylistId = pt.PlaylistId JOIN
    tracks AS t ON pt.TrackId = t.TrackId JOIN genres AS g ON t.GenreId = g.GenreId JOIN
    media_types AS mt ON t.MediaTypeId = mt.MediaTypeId WHERE p.Name = 'Music';