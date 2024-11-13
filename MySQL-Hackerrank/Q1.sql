/*
Query a list of CITY and STATE from the STATION table

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
select city,state from STATION;

/* 
NOTES:
This prints the city and states from the station table
*/