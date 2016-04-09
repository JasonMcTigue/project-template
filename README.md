# Irish Constituencies Neo4j Database
###### Jason McTigue, G00312233

## Introduction
This database contains all the candidates than ran in the **2016 Irish election**. It contains information for each candidate and matches them to their party and also too their constituency.


## Database
In my database I created each candidate with there full name, age, constituency and then their party.


<h1>The query I used for creating the candidates was:</h1>

```cypher
CREATE
(:Candidate {Name: "Michael McGrath", Age: "39", Constituency: "Cork South Central", Party: "Fianna Fáil"})
```

<h1>The query I used for creating each constituency was:</h1>

```cypher
CREATE 
(constituency:Constituency {Name: "Cavan-Monaghan", Num_Seats: "4", Population: "120,483"})
```

<h1>The query I used for creating the parties was:</h1>

```cypher
(fg:Party {Name: "Fine Gael", Leader: "Enda Kenny", Founded: 1933, Dail_Seats: 50})
```
<h1>The query I used to match candidates to their parties and constituencies:</h1>

```cypher
MATCH
(c:Candidate {Name: "Cordelia Nic Fhearraigh"}), (p:Party {Name: "Independent"}), (con:Constituency {Name: "Donegal"})
CREATE
(c)-[r:RUNNING_FOR]->(p)
CREATE
(c)-[runs:RUNS_IN]->(con)

RETURN r,runs;

```

## Relationship Links
|  Relationship |Information|   
|---|---|
|  RUNS_FOR |The relationship that matched candidates with the party they were running for |   
|   RAN_IN|The relationship that matched the candidates with the constituency they were running in|

## Queries
**The queries I used for my project are:**

1.A query on how to find all candidates with a specific age than ran in a constituency of a specific population.
2.A query on how to find which parties founded before a specific year have more than 10 seats.
3.A query on how to find all the candidates who ran for Fianna Fail under the age of 40.

#### Query one: How to find all candidates with a specific age than ran in a constituency of a specific population.
This query returns all the candidates that have an age greater then 60 that run
in a constituency with a population less then 50,000. The query then orders them by age.

```cypher
MATCH
(n:Candidate)-[r:RUNS_IN]->(m:Constituency)
WHERE
(m.Population)<= "50,000" AND (n.Age) > "60"
RETURN m,n
ORDER BY (n.Age)
```

#### Query two: How to find which parties founded before a specific year have more than 10 seats.
This query retreives all the parties that were founded before 1990 and have more than 10 dail seats. It then
orders the queries by the year they were founded.

```cypher
MATCH
(p:Party)
WHERE 
(p.Founded) <= 1990 AND (p.Dail_Seats) > 10
RETURN p
ORDER by (p.Founded)
```

#### Query three: How to find all the candidates who ran for Fianna Fail under the age of 40.
This query retreives all the candidates who ran for Fianna Fail and were under the age of 40.

```cypher
MATCH (c:Candidate)
WHERE c.Party = 'Fianna Fail' AND c.Age <= "40"
RETURN c
ORDER BY c.Name
```

## References
1. [Irish political maps](http://irishpoliticalmaps.blogspot.ie/2012/06/constituency-commission-boundary.html), the website of Irish political maps.
2. [Wikipedia page](https://en.wikipedia.org/wiki/Parliamentary_constituencies_in_the_Republic_of_Ireland), Wiki page of all the Irish constituencies, seats in each and population in each.
3.[Journal.ie](http://www.thejournal.ie/election-2016/constituency)Website in which I got information for all candidates and their. constituencies.
4. [Neo4j Website](http://neo4j.com/docs/stable/query-create.html)Used for further information on the create statement.
5.[Neo4j Website](http://neo4j.com/docs/stable/query-match.html)Used for creating the queries