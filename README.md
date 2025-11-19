# 🌍 World SQL Analysis (MySQL)

![MySQL](https://img.shields.io/badge/MySQL-Database%20Development-00618A?logo=mysql&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-Data%20Analysis-4479A1)
![Joins](https://img.shields.io/badge/City%20↔%20Country-JOINs-blueviolet)
![Queries](https://img.shields.io/badge/Queries-Multiple-success)
![Status](https://img.shields.io/badge/Status-Completed-brightgreen)

A focused SQL analysis project using the **World** sample database (City & Country tables).  
This repository showcases practical skills in **data querying**, **joins**, **aggregation**, and **population-based analysis** using MySQL.

---

## 📁 Project Overview

The `World Database.sql` script contains a series of queries that explore:

- Global **cities** and their populations  
- **Countries**, regions and continents  
- Relationships between **City** and **Country**  
- Ranking and filtering based on population metrics  

The script works as a compact **SQL practice workbook** for geography-based data analysis.

---

## 🧠 Skills Demonstrated

### 📌 Core SQL Competencies

- Data retrieval and exploration:
  - `SELECT`, `WHERE`, `ORDER BY`
- Pagination / result windowing:
  - `LIMIT` and `OFFSET`
- Aliasing and readability improvements:
  - Column aliases (e.g. `AS Total_Cities`, `AS City_Population`)
- Conditional filtering on:
  - Country codes  
  - Population thresholds  

---

### 🔗 Relational Joins

Using the **World** schema:

- Joining `country` and `city` via:
  - `country.Code = city.CountryCode`
- Combining attributes from both tables, such as:
  - Country name + city name  
  - Region + city population  

These joins support queries like:

- Listing cities with their corresponding country  
- Filtering cities by country or region  
- Comparing populations across multiple countries  

---

### 📊 Aggregations & Population Analysis

Using aggregate functions to answer questions such as:

- How many cities exist in a given country?  
- What is the total population across selected cities or countries?  
- Which cities are the largest by population?

Key functions used:

- `COUNT(ID)` for city counts  
- `SUM(Population)` for totals  
- `AVG(Population)` and `MAX(Population)` (where applicable)  
- Grouping with `GROUP BY` on `CountryCode` or country name  

---

## 📊 Example Analytical Queries

> _Representative examples based on the script contents._

### **1️⃣ Count Cities in a Country**
```sql
SELECT COUNT(ID) AS Total_Cities
FROM City
WHERE CountryCode = 'USA';
```
### **2️⃣ Top Populated Cities**
```sql
SELECT Name, Population
FROM City
ORDER BY Population DESC
LIMIT 10;
```
### **3️⃣ Cities with Country Info**
```sql
SELECT 
    cty.Name  AS City,
    cty.Population,
    ctr.Name  AS Country,
    ctr.Region,
    ctr.Continent
FROM Country AS ctr
JOIN City AS cty
    ON ctr.Code = cty.CountryCode;
```
### **4️⃣ Paged City Results (Pagination)**
```sql
SELECT Name, Population
FROM City
ORDER BY Population DESC
LIMIT 10 OFFSET 30;
```
