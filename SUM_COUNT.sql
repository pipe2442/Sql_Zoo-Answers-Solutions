/* 1 problem 
Show the total population of the world.*/
SELECT SUM(population) AS Max_Population
FROM world

/* 2 problem 
List all the continents - just once each.*/
SELECT DISTINCT continent FROM world

/* 3 problem 
Give the total GDP of Africa*/
SELECT SUM(GDP) AS GDP_Africa
FROM world
WHERE continent = 'Africa'

/* 4 problem 
How many countries have an area of at least 1000000 */
SELECT COUNT(name) AS countries FROM world
WHERE area >= 1000000

/* 5 problem 
What is the total population of ('Estonia', 'Latvia', 'Lithuania') */
SELECT SUM(population) AS total_population 
FROM world
WHERE name IN ('Estonia', 'Latvia', 'Lithuania')

/* 6 problem 
For each continent show the continent and number of countries.*/

SELECT continent, COUNT(name) AS total_countries FROM world
GROUP BY continent

/* 7 problem 
For each continent show the continent and number of countries 
with populations of at least 10 million.*/

SELECT continent, COUNT(name) AS total_countries FROM world
WHERE population >= 10000000
GROUP BY continent

/* 8 problem 
List the continents that have a total population of at 
least 100 million.*/

SELECT continent FROM world
GROUP BY continent
HAVING SUM(population) >= 100000000