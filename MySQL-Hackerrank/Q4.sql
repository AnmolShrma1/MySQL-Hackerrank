/*
Query the two cities in STATION with the shortest 
and longest CITY names, as well as their respective 
lengths (i.e.: number of characters in the name). 
If there is more than one smallest or largest city, 
choose the one that comes first when ordered 
alphabetically.
the station table is as follow:
FEILD   TYPE
ID      NUMBER
CITY    VARCHAR2(21)
STATE   VARCHAR2(2)
LAT_N   NUMBER
LONG_W  NUMBER
where LAT_N is the northern latitude 
and LONG_W is the western longitude.
For example, CITY has four entries: 
DEF, ABC, PQRS and WXY.
output:
ABC     3
PQRS    4
Explanation:
When ordered alphabetically, the CITY names are 
listed as ABC, DEF, PQRS, and WXY, with lengths  and. 
The longest name is PQRS, but there are  options for 
shortest named city. Choose ABC, because it comes 
first alphabetically.
Note
You can write two separate queries to get the desired output. 
It need not be a single query.
*/

/* SOLUTION */

select 
CITY,length(CITY)
from STATION 
order by length(CITY),CITY 
limit 1;

select 
CITY,length(CITY)
from STATION 
order by length(CITY) desc, CITY 
limit 1;

/*
NOTES:
first we select city name and the length of city
from the table then we order it by length first so
the city with smallest length is printed first as
by default ORDER BY is ascending and when we put
limit 1 then it only prints the first value
we also order it by city cuz we need to print the
city which comes first alphabetically
now for the second query:
to print the city with max
length of characters we just order length by descending
order then we get the city whoes len of character is max
at top and putting the limit 1, it only print the first 
value and since it is being ordered by city too 
(but not in desc order) then the city is ordered
alphabetically so we get the last city
*/