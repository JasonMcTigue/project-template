//This query gets all the candidates that have an age greater then 60 that run
//in a constituency with a population less then 50,000


MATCH
(n:Candidate)-[r:RUNS_IN]->(m:Constituency)
WHERE
(m.Population)<= "50,000" AND (n.Age) > "60"
RETURN m,n;