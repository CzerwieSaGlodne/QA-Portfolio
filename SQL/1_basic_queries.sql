--Podstawy SQL | pojedyncze tabele, filtrowanie, sortowanie, agregacje--
--Wyświetl nazwę (ProductName) i cenę (Price) wszystkich produktów.--
SELECT
  ProductName,
  Price
FROM
  products;

--Wyświetl wszystkich klientów z Niemiec.--
SELECT
  *
FROM
  customers
WHERE
  Country = "Germany";

--Wyświetl unikalne kraje klientów.--
SELECT DISTINCT
  Country
from
  customers;

--Policz liczbę wszystkich klientów.--
SELECT
  COUNT(*)
FROM
  customers;

--Oblicz sumę wszystkich zamówionych sztuk--
SELECT
  SUM(Quantity)
from
  order_details;

--Znajdź najtańszy produkt.--
SELECT
  ProductName,
  MIN(Price)
FROM
  products;

--Oblicz średnią cenę produktów.--
SELECT
  AVG(Price)
FROM
  products;

--Wyświetl klientów, których nazwa zawiera słowo Market.--
SELECT
  *
FROM
  customers
WHERE
  CustomerName LIKE '%Market%';

--Wyświetl produkty kosztujące od 20 do 50.--
SELECT
  *
from
  products
WHERE
  Price BETWEEN 20 AND 50;

--Wyświetl produkty posortowane malejąco według ceny.--
SELECT
  *
FROM
  products
ORDER BY
  Price DESC;

--Wyświetl nazwę produktu jako Product oraz cenę jako UnitPrice.--
SELECT
  ProductName AS Product,
  Price AS UnitPrice
FROM
  products;