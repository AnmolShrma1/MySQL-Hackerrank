/*
Query a list of CITY names from STATION 
for cities that have an even ID number. 
Print the results in any order,
but exclude duplicates from the answer.
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
ID%2 = 0;

/*
NOTES: 
DISTINCT is used so no duplicate values are printed.
ID%2=0 means it only prints the even IDs.
*/