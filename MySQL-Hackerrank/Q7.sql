/*
Query the list of CITY names from STATION that do not
start with vowels and do not end with vowels. 
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

SELECT DISTINCT City 
FROM Station
WHERE City NOT REGEXP '^[aeiouAEIOU]' 
  AND City NOT REGEXP '[aeiouAEIOU]$';

/* 
NOTES
here we want our result that doesn't have vowels in
the begining and nor in the end so we use AND instead
of OR
 */