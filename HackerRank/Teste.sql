SELECT
  h.hacker_id,
  h.name

FROM
  hackers AS h,
  difficulty AS d,
  challenges AS c,
  submissions AS s
  
WHERE
h.hacker_id = s.hacker_id
 AND
  c.challenge_id = s.challenge_id
    AND
     C.difficulty_level = d.difficulty_level
      AND
        s.score = d.score

GROUP BY
  h.hacker_id,
  h.name

HAVING
  COUNT(c.challege_id) > 1

ORDER BY 
  COUNT(c.challenge_id) DESC,
  h.hacker_id ASC;
