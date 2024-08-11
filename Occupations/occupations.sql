/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
SELECT [Doctor], [Professor], [Singer], [Actor]
FROM
(
    SELECT
        Name,
        Occupation,
        ROW_NUMBER() OVER(PARTITION BY Occupation ORDER BY Name) AS row_num
    FROM Occupations
) AS source
PIVOT
(
    MIN(Name)
    FOR Occupation IN ([Doctor], [Professor], [Singer], [Actor])
) AS pvt
ORDER BY row_num;
