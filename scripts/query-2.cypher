//This query retreives all the parties that were founded before 1990 and have more
//than 10 dail seats. It then
//orders the queries by the year they were founded.


MATCH
(p:Party)
WHERE 
(p.Founded) <= 1990 AND (p.Dail_Seats) > 10
RETURN p
ORDER by (p.Founded)