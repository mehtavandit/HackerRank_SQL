/*
Enter your query here.
*/

SELECT 
    ROUND(LONG_W,4)
FROM Station where LAT_N > 38.7780 ORDER BY LAT_N LIMIT 1; 