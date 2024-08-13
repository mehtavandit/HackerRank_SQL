/*
Enter your query here.
*/
SELECT
    MAX(salary * months),
    count(*)
FROM EMPLOYEE
WHERE (salary * months) = (SELECT MAX(salary * months) from EMPLOYEE)