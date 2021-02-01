/* 1 problem */
SELECT population FROM world
  WHERE name = 'Germany'

/* 2 problem */
SELECT name, population FROM world
  WHERE name IN ('Sweden', 'Norway', 'Denmark');

/* 3 problem */
SELECT name, area FROM world
  WHERE area BETWEEN 200000 AND 250000 