# 🌍 MySQL Project: World Database

[![Database](https://img.shields.io/badge/Database-MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white)](https://www.mysql.com/)
[![Language](https://img.shields.io/badge/Language-SQL-DD0031?style=for-the-badge&logo=sqlite&logoColor=white)](https://en.wikipedia.org/wiki/SQL)


***

## Project Overview

This repository features a comprehensive, self-contained MySQL project built around the classic **World Database** schema. The included files, **`create world db.sql`** (DDL/DML) and **`World Database.sql`** (Queries), serve as a detailed portfolio showcase of core Relational Database Management and advanced SQL competencies.

***

## Core Technical Skills Demonstrated

The table below breaks down the specific SQL skills utilized, with illustrative examples taken directly from the project files.

| Skill Category | Description | Illustrative SQL Example |
| :--- | :--- | :--- |
| **Database Design (DDL)** | Ability to structure a multi-table database schema, defining columns, data types, and setting up primary/foreign key relationships. | ```sql\n-- Example from 'create world db.sql'\nCREATE TABLE city (\n  ID int NOT NULL PRIMARY KEY,\n  Name char(35) NOT NULL,\n  CountryCode char(3) NOT NULL,\n  Population int NOT NULL\n);``` |
| **Data Manipulation (DML)** | Proficiency in populating and maintaining datasets using high-volume **`INSERT`** operations and ensuring transactional integrity with `COMMIT`. | ```sql\n-- Example from 'create world db.sql'\nINSERT INTO country VALUES ('AFG','Afghanistan','Asia','Southern and Central Asia',65209.00,'1919','38830000',3.8,'310','2009',NULL,'Islamic Emirate','Mohammad Nazir',NULL,'AF');\nCOMMIT;``` |
| **Relational Joins** | Skill in integrating and querying data across multiple tables (e.g., country and city) using **`JOIN`** operations on foreign keys. | ```sql\n-- Example from 'World Database.sql'\nSELECT \n  country.name AS Country, \n  city.name AS capital\nFROM \n  country\nJOIN \n  city ON country.Capital = city.ID\nWHERE \n  country.name = "Spain";\n``` |
| **Data Aggregation** | Using aggregate functions (**`AVG`, `COUNT`**) combined with **`GROUP BY`** to summarize data and derive metrics for specific groups (e.g., average city population per country). | ```sql\n-- Example from 'World Database.sql'\nSELECT \n  Country.Name AS Country, \n  AVG(city.population) AS Average_population\nFROM \n  country\nJOIN \n  city ON country.code = city.countrycode\nGROUP BY \n  country.name;\n``` |
| **Advanced Filtering & Sorting** | Mastery of precise data retrieval using various filtering clauses (**`WHERE`**, **`BETWEEN`**, **`LIKE`**) and advanced sorting with **`ORDER BY`** and **`LIMIT`**. | ```sql\n-- Example from 'World Database.sql'\nSELECT Name, LifeExpectancy\nFROM country\nORDER BY LifeExpectancy DESC\nLIMIT 1;\n``` |
| **Analytical Calculations** | Ability to perform mathematical operations directly within a query to generate new analytical metrics, such as population density. | ```sql\n-- Example from 'World Database.sql'\nSELECT \n  Name AS Country, \n  population / surfacearea AS Density\nFROM \n  Country\nORDER BY \n  Density DESC;\n``` |

***

## Prerequisites & Setup

To review this project in a live environment:

* **Prerequisites:** You need a running **MySQL Server** and a client (e.g., MySQL Workbench or the command-line client).
* **Setup:** Execute the **`create world db.sql`** script against your MySQL server to build and populate the `world` database.
* **Analysis:** Review and run the queries within **`World Database.sql`** after setup is complete.
