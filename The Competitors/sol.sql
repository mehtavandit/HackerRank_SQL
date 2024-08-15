SELECT
    H.hacker_id, H.Name
FROM Hackers H INNER JOIN Submissions S on H.hacker_id = S.Hacker_id
INNER JOIN Challenges C ON S.challenge_id = C.challenge_id
INNER JOIN Difficulty d on c.difficulty_level = d.difficulty_level
WHERE S.score = D.score AND C.difficulty_level = D.difficulty_level
GROUP BY H.hacker_id, H.NAME
HAVING COUNT(S.hacker_id) > 1
ORDER BY COUNT(S.hacker_id) DESC, S.hacker_id ASC;;