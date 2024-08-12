/*
Enter your query here.
*/
SELECT
    N,
    CASE WHEN P is NULL THEN 'Root'
              WHEN (SELECT COUNT(*) from BST where A.N = P) > 0 THEN 'Inner'
              ELSE 'Leaf'
              END
              from BST A
              ORDER BY N;