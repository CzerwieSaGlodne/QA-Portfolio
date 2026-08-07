--Modyfikacja danych--
--Dodawanie nowego klienta: CustomerName = Demo Client, City = Warsaw, Country = Poland--
INSERT INTO
  customers (CustomerName, City, Country)
VALUES
  ('Demo Client', 'Warsaw', 'Poland');

--Zmiana miasta klienta Demo Client na Kraków.--
UPDATE customers
SET
  Country = 'Kraków'
WHERE
  CustomerName = "Demo Client";

--Usuń klienta Demo Client.--
DELETE FROM customers
WHERE
  CustomerName = 'Demo Client'