/*
Enter your query here.
*/

SELECT
    ROUND(MAX(LAT_N), 4)
FROM station where LAT_N < 137.2345;