/*
Query the list of CITY names from STATION that either 
do not start with vowels or do not end with vowels. 
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
  OR City NOT REGEXP '[aeiouAEIOU]$';

/* 
NOTES
here we use regular expression REGEXP,
within quotes mean these elements are to be looked
for in our case we don't want vowels to either be in
the begining or end so we use NOT to negate the query
in regular expression if we write : [a-h] this means
all the elements between a and h both inclusive will
be considered. The symbols : 
^ means starting with
$ means ending with
* means Zero or more instances of string preceding it
+ means One or more instances of strings preceding it
. means Any single character
? means Match zero or one instances of the strings preceding it
[abc] means Any character listed between the square brackets
[^abc] means Any character not listed between the square brackets
[A-Z] means match any upper case letter
[a-z] means match any lower case letter
[0-9] means match any digit from 0 through to 9
[[:<:]] means matches the beginning of words.
[[:>:]] means matches the end of words.
p1|p2|p3 means Alternation; matches any of the patterns p1, p2, or p3
{n} means n instances of preceding element
{m,n} means m through n instances of preceding element
 */