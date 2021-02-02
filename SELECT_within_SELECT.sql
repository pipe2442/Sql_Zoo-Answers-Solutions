/* 1 problem */
SELECT name FROM world
  WHERE population >
     (SELECT population FROM world
      WHERE name='Russia')

/* 2 problem */
SELECT name FROM world
  WHERE GDP/population >
     (SELECT GDP/population FROM world
      WHERE name = 'United Kingdom') 
      AND continent = 'Europe'

/* 3 problem */
SELECT name, continent FROM world
  WHERE continent = (SELECT continent FROM world 
         WHERE name = 'Argentina') OR 
         continent = (SELECT continent FROM world
         WHERE name = 'Australia')
         ORDER BY name

/* 4 problem */
SELECT name FROM world
WHERE population > (SELECT population FROM world
                    WHERE name = 'Canada') AND
      population < (SELECT population FROM world
                    WHERE name = 'Poland')

/* 5 problem */
SELECT name, CONCAT(ROUND(population/(SELECT population 
FROM world
WHERE name = 'Germany')*100,0),'%')
FROM world WHERE continent = 'Europe'

/* 6 problem */

SELECT name FROM world
WHERE GDP > (SELECT MAX(GDP) FROM world 
WHERE continent = 'Europe')

/* 7 problem */

SELECT continent, name, area FROM world x
WHERE area >= ALL
  (SELECT area FROM world y
    WHERE y.continent=x.continent
    AND area>0)

/* 8 problem */

SELECT continent, name FROM world x
  WHERE name <= ALL
  (SELECT name FROM world y
  WHERE y.continent=x.continent)

/* 9 problem */
SELECT name, continent, population FROM world x
  WHERE 25000000 >= ALL
    (SELECT population FROM world y
    WHERE y.continent=x.continent
    AND population>0)

/* 10 problem */
SELECT name, continent FROM world x
  WHERE population >= ALL(SELECT population*3
    FROM world y
    WHERE x.continent = y.continent
    and y.name != x.name)
