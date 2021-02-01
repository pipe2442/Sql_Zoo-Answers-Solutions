/* 1 problem */
SELECT name, continent, population FROM world

/* 2 problem */
SELECT name
  FROM world
 WHERE population >= 200000000

/* 3 problem */
SELECT name, GDP/population
  FROM world
 WHERE population >= 200000000

 /* 4 problem */
SELECT name, population/1000000
  FROM world
WHERE continent = 'South America'

 /* 5 problem */
SELECT name, population
  FROM world
WHERE name IN ('France', 'Germany', 'Italy')

 /* 6 problem */
SELECT name FROM world
WHERE name LIKE '%United%'

 /* 7 problem */
SELECT name, population, area
  FROM world
WHERE area > 3000000 OR population > 250000000

 /* 8 problem */
SELECT name, population, area
  FROM world
WHERE area > 3000000 XOR population > 250000000

 /* 9 problem */
SELECT name, ROUND(population/1000000, 2),
ROUND(GDP/1000000000, 2)
  FROM world
WHERE continent = 'South America'

 /* 10 problem */
SELECT name, ROUND(GDP/population, -3)
  FROM world
WHERE GDP >= 1000000000000 

 /* 11 problem */
SELECT name, capital
  FROM world
 WHERE LENGTH(name) = LENGTH(capital)

 /* 12 problem */
 SELECT name, capital
FROM world
WHERE LEFT(name,1) = LEFT(capital,1) AND name <> capita

 /* 13 problem */
 SELECT name
   FROM world
WHERE name LIKE '%u%' 
      and name LIKE '%a%' 
      and name LIKE '%o%' 
      and name LIKE '%i%'
      and name LIKE '%e%'
      and name NOT LIKE '% %'