SELECT COUNT(ID) as Total_Cities
FROM city
WHERE CountryCode = "USA";

SELECT * 
FROM country;

SELECT Name, LifeExpectancy
FROM country
ORDER BY LifeExpectancy DESC
LIMIT 1;

SELECT Name
FROM city
WHERE Name  LIKE "%New%";

SELECT Name
FROM city
ORDER BY Population DESC
LIMIT 10;

SELECT Name
FROM city
WHERE Population > 2000000;

SELECT Name
FROM city
WHERE Name LIKE "Be%";

SELECT Name
FROM city
WHERE population BETWEEN 500000 AND 1000000;

SELECT Name
FROM city
ORDER BY Name;

SELECT Name, Population
FROM city
ORDER BY Population DESC
LIMIT 1;

SELECT DISTINCT Name, COUNT(Name) as Occurrences
FROM city
GROUP BY Name
ORDER BY Name;

SELECT Name, population
FROM city
ORDER BY Population 
LIMIT 1;

SELECT Name, Population
FROM country
ORDER BY population DESC
LIMIT 1;

SELECT country.name as Country, city.name as capital
FROM country
JOIN city
ON country.Capital = city.ID
WHERE country.name = "Spain";

SELECT Continent, city.name as city
From country
JOIN city
ON country.code = city.countrycode
WHERE continent = "Europe";

SELECT Country.Name as Country, AVG(city.population) as Average_population
FROM country
JOIN city
ON country.code = city.countrycode
GROUP BY country.name;

SELECT country.name as Country, city.name as capital, city.population
FROM country
JOIN city
ON country.Capital = city.ID;

SELECT Name as Country, population/surfacearea as Density
FROM Country
GROUP BY Name
ORDER BY Density;

SELECT City.Name as City, GNP/country.population as GNP_per_Capita
From City
JOIN Country
ON City.countrycode = country.code
WHERE (country.gnp/country.Population) > (select avg(gnp/Population) from country)
ORDER BY GNP_per_Capita DESC;

SELECT Name, Population
FROM City
ORDER BY Population DESC
LIMIT 10 OFFSET 30;
