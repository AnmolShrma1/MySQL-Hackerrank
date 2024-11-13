/*
Query the Name of any student in STUDENTS who scored 
higher than  Marks. Order your output by the last 
three characters of each name. If two or more students 
both have names ending in the same last three 
characters (i.e.: Bobby, Robby, etc.), secondary sort 
them by ascending ID.
the STUDENTS table is described as follows:
COLUMN  TYPE
ID      Integer
Name    String
Marks   Integer
The Name column only contains uppercase (A-Z) and 
lowercase (a-z) letters.
*/

/* SOLUTION */

SELECT NAME 
FROM STUDENTS 
WHERE MARKS > 75
ORDER BY RIGHT(NAME,3),ID;

/*SUB-QUERY SOLUTION */

SELECT Name
FROM (
    SELECT Name, ID
    FROM Students
    WHERE Marks > 75
) AS filtered_students
ORDER BY RIGHT(Name, 3), ID;

/* 
NOTES:
in the first soluiton we first select the names of
students who have marks > 75 then using ORDER BY 
we first order by the last 3 letter of the Name as
RIGHT(NAME,3) [this selects the last 3 letters of name]
then order them using ID to get the desired results.

alternate sub-query solution:
in this we write a query within a query first we select
the names of students who have marks greater than 75
then order them similar to original solution using
last 3 letter of name then order them by ID to get 
desired results.
*/