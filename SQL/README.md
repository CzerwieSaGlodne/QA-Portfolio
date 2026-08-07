# SQL Queries - Northwind Database

## Opis projektu

Projekt zawiera zestaw zapytań SQL wykonanych na przykładowej bazie danych **Northwind**.

Celem projektu było przećwiczenie pracy z relacyjnymi bazami danych, wyszukiwania, modyfikacji oraz analizy danych z wykorzystaniem języka SQL.

Zapytania zostały przygotowane i wykonane w środowisku **phpMyAdmin** z wykorzystaniem bazy danych MySQL.

## Zakres projektu

Projekt obejmuje:

- pobieranie i filtrowanie danych
- sortowanie i grupowanie rekordów
- wykorzystanie funkcji agregujących
- modyfikację danych w tabelach
- łączenie danych z wielu tabel
- analizę danych za pomocą zapytań biznesowych

## Zawartość projektu

- **1_basic_queries** - podstawowe zapytania SQL (SELECT, WHERE, filtrowanie, sortowanie, agregacje)
- **2_mutations** - modyfikacja danych (INSERT, UPDATE, DELETE)
- **3_joins** - łączenie danych z wielu tabel przy użyciu INNER JOIN
- **4_data_analysis** - zapytania analityczne i scenariusze biznesowe

## Wykorzystane zagadnienia SQL

### Podstawowe zapytania

- SELECT
- WHERE
- DISTINCT
- ORDER BY
- LIKE
- BETWEEN
- aliasy kolumn (AS)
- funkcje agregujące:
  - COUNT()
  - SUM()
  - AVG()
  - MIN()

### Modyfikacja danych

Wykorzystane operacje:

- INSERT
- UPDATE
- DELETE

### Łączenie tabel

Wykorzystane mechanizmy:

- INNER JOIN
- relacje pomiędzy tabelami

Przykładowe połączenia:

- customers + orders
- products + categories
- orders + order_details + products

### Analiza danych

Przygotowane zapytania obejmują między innymi:

- liczbę klientów według kraju
- najdroższe produkty
- średnią cenę produktów
- liczbę zamówień
- najczęściej sprzedawane produkty
- wartość pozycji zamówień

Wykorzystane elementy:

- GROUP BY
- podzapytania
- funkcje agregujące
- sortowanie wyników

## Narzędzia

- **MySQL / phpMyAdmin** - wykonywanie zapytań SQL i praca z bazą danych
- **Northwind Database** - przykładowa baza danych wykorzystana do ćwiczeń
- **GitHub** - przechowywanie dokumentacji projektu

## Status projektu

Zestaw zapytań SQL przygotowany jako element portfolio QA Junior.

Autor: Natalia Świrydow
