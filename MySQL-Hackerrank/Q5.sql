/*
Query the list of CITY names starting with vowels 
(i.e., a, e, i, o, or u) from STATION.
Your result cannot contain duplicates.
the station table is as follow:
FEILD   TYPE
ID      NUMBER
CITY    VARCHAR2(21)
STATE   VARCHAR2(2)
LAT_N   NUMBER
LONG_W  NUMBER
where LAT_N is the northern latitude 
and LONG_W is the western longitude.
*/

/* SOLUTION */

select distinct CITY from STATION
where
   CITY like "A%"
OR CITY like "E%"
OR CITY like "I%"
OR CITY like "O%"
OR CITY like "U%";

/*
NOTES:
like "A%" means it starts with A 
and "%A" means it ends with A
and "%or%" means it finds values with or in any 
position and "_r%" means second positon 
*/

select DISTINCT CITY FROM STATION
WHERE CITY REGEXP '^[aeiou]';