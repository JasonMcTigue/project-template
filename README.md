# Irish Constituencies Neo4j Database
###### Jason McTigue, G00312233

## Introduction
This database contains all the candidates than ran in the 2016 Irish election. It contains information for each candidate and matches them to their party and also too their constituency.


## Database
In my database I created each candidate with there full name, age, constituency and then their party.


The query I used for creating the candidates was:

```cypher
CREATE
(:Candidate {Name: "Michael McGrath", Age: "39", Constituency: "Cork South Central", Party: "Fianna Fáil"})
```

The query I used for creating each constituency was:

```cypher
CREATE 
(constituency:Constituency {Name: "Cavan-Monaghan", Num_Seats: "4", Population: "120,483"})
```

The query I used for creating the parties was:

```cypher
(fg:Party {Name: "Fine Gael", Leader: "Enda Kenny", Founded: 1933, Dail_Seats: 50})
```
The query I used to match candidates to their parties and constituencies:

```cypher
MATCH
(c:Candidate {Name: "Cordelia Nic Fhearraigh"}), (p:Party {Name: "Independent"}), (con:Constituency {Name: "Donegal"})
CREATE
(c)-[r:RUNNING_FOR]->(p)
CREATE
(c)-[runs:RUNS_IN]->(con)

RETURN r,runs;

```

## Queries
Summarise your three queries here.
Then explain them one by one in the following sections.

#### Query one title
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

#### Query two title
This query retreives the Bacon number of an actor...
```cypher
MATCH
	(Bacon)
RETURN
	Bacon;
```

#### Query three title
This query retreives the Bacon number of an actor...
```cypher
MATCH
	(Bacon)
RETURN
	Bacon;
```

## References
1. [Irish political maps](http://irishpoliticalmaps.blogspot.ie/2012/06/constituency-commission-boundary.html), the website of Irish political maps.
2. [Wikipedia page](https://en.wikipedia.org/wiki/Parliamentary_constituencies_in_the_Republic_of_Ireland), Wiki page of all the Irish constituencies, seats in each and population in each.
3.[Journal.ie](http://www.thejournal.ie/election-2016/constituency)Website in which I got information for all candidates and their. constituencies.
4. [Neo4j Website](http://neo4j.com/docs/stable/query-create.html)Used for further information on the create statement.
5.[Neo4j Website](http://neo4j.com/docs/stable/query-match.html)Used for creating the queries