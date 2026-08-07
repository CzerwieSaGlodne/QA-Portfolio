--Zapytania przypominające realne zadania biznesowe--
--
--Policz liczbę klientów z każdego kraju--
SELECT
  Country,
  COUNT(*) AS LiczbaKlientow
FROM
  customers
GROUP BY
  Country;

--
--
--Wyświetl 10 najdroższych produktów--
SELECT
  ProductName,
  Price
FROM
  products
ORDER BY
  Price DESC
Limit
  10;

--
--
--Oblicz średnią cenę produktów w każdej kategorii--
SELECT
  CategoryID,
  AVG(Price) AS SredniaCena
FROM
  products
GROUP BY
  CategoryID;

--
--
--Policz liczbę zamówień obsłużonych przez każdego pracownika--
SELECT
  EmployeeID,
  COUNT(OrderID) AS LiczbaZamowien
FROM
  orders
GROUP BY
  EmployeeID;

--
--
--Wyświetl produkty droższe od średniej ceny wszystkich produktów--
SELECT
  ProductName,
  Price
FROM
  products
WHERE
  Price > (
    SELECT
      AVG(Price)
    FROM
      products
  );

--
--
--Oblicz łączną wartość każdej pozycji zamówienia: OrderID, ProductName, Quantity, UnitPrice, TotalValue (Quantity * UnitPrice)
SELECT
  o.OrderID,
  p.ProductName,
  od.Quantity,
  p.Price AS UnitPrice,
  od.Quantity * p.Price AS TotalValue
FROM
  orders o
  INNER JOIN order_details od ON o.OrderID = od.OrderID
  INNER JOIN products p ON od.ProductID = od.ProductID;

--
--
--Wyświetl najczęściej sprzedawane produkty (łączna liczba sprzedanych sztuk)--
SELECT
  p.ProductName,
  SUM(od.Quantity) AS LacznaIlosc
FROM
  products p
  INNER JOIN order_details od ON p.ProductID = od.ProductID
GROUP BY
  p.ProductName
ORDER BY
  LacznaIlosc DESC;

--
--
--Wyświetl klientów z Niemiec i Francji posortowanych według kraju, a następnie nazwy klienta--
SELECT
  Country,
  CustomerName
FROM
  customers
WHERE
  Country = "Germany"
  OR Country = "France"
ORDER BY
  Country,
  CustomerName;