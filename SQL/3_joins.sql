--Łączenie tabel--
--Wyświetlenie: OrderID, CustomerName, OrderDate (orders + customers)--
SELECT
  o.OrderID,
  c.CustomerName,
  o.OrderDate
FROM
  orders o
  INNER JOIN customers c ON o.CustomerID = c.CustomerID;

--Wyświetlenie: ProductName, Price, CategoryName (products + categories)
SELECT
  p.ProductName,
  p.Price,
  c.CategoryName
FROM
  products p
  INNER JOIN categories c ON p.CategoryID = c.CategoryID;

--Wyświetlenie: OrderID, FirstName, LastName (orders + employees)--
SELECT
  o.OrderID,
  e.FirstName,
  e.LastName
FROM
  orders o
  INNER JOIN employees e ON o.EmployeeID = e.EmployeeID;

--Wyświetlenie: CustomerName, OrderID, OrderDate (customers + orders)--
SELECT
  c.CustomerName,
  o.OrderID,
  o.OrderDate
FROM
  customers c
  INNER JOIN orders o ON c.CustomerID = o.CustomerID;

--Wyświetlenie: ProductName, Price, CategoryName | Sortowanie od najdroższego produktu.--
SELECT
  p.ProductName,
  p.Price,
  c.CategoryName
FROM
  products p
  INNER JOIN categories c ON p.CategoryID = c.CategoryID
ORDER BY
  Price DESC;

--Wyświetlenie: OrderID, ProductName, Quantity (orders + order_details + products)--
SELECT
  o.OrderID,
  p.ProductName,
  od.Quantity
FROM
  orders o
  INNER JOIN order_details od ON o.OrderID = od.OrderID
  INNER JOIN products p ON od.ProductID = p.ProductID;

--Wyświetlenie: CustomerName, OrderID, ProductName, Quantity (customers + orders + order_details + products)--
SELECT
  c.CustomerName,
  o.OrderID,
  p.ProductName,
  od.Quantity
FROM
  customers c
  INNER JOIN orders o ON c.CustomerID = o.CustomerID
  INNER JOIN order_details od ON o.OrderID = od.OrderID
  INNER JOIN products p ON od.ProductID = p.ProductID