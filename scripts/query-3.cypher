//This query retreives all the candidates who ran for Fianna Fail and were under the
//age of 40.

MATCH (c:Candidate)
WHERE c.Party = 'Fianna Fail' AND c.Age <= "40"
RETURN c
ORDER BY c.Name
