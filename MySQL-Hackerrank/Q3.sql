/*
Find the difference between the total number of CITY 
entries in the table and the number of distinct CITY 
entries in the table.
the station table is as follow:
FEILD   TYPE
ID      NUMBER
CITY    VARCHAR2(21)
STATE   VARCHAR2(2)
LAT_N   NUMBER
LONG_W  NUMBER
where LAT_N is the northern latitude 
and LONG_W is the western longitude.
For example, if there are three records in the table 
with CITY values 'New York', 'New York', 'Bengalaru', 
there are 2 different city names: 
'New York' and 'Bengalaru'. The query returns 1, 
because 
total no. of records - no. of unique city names =
3-2=1
 */

 /* SOLUTION */

select (count(CITY)-count(distinct CITY)) from STATION;

/* 
NOTES:
this prints the difference between total records of city
and unique no. of city records, i.e the number of duplicate
records
*/