/*
Enter your query here.
*/

SELECT
    IF(G.Grade>=8, S.NAME, NULL) , G.GRADE, S.Marks
FROM Students as S, Grades as G
where S.Marks BETWEEN G.Min_Mark AND G.Max_Mark
ORDER By G.Grade DESC, S.Name;