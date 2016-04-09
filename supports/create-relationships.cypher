//Queries used to create relationships between candidates, parties and constituencies
=====================================================================================
//Query used to match candidate to party

MATCH
(c:Candidate {Name: "John Paul Phelan"}), (p:Party {Name: "Fine Gael"})
CREATE
(c)-[r:RUNNING_FOR]->(p)
RETURN r;
=====================================================================================
//Query used to match candidate to Constituency

MATCH
(c:Candidate {Name: "John Paul Phelan"}), (con:Constituency {Name: "Carlow-Kilkenny”})
CREATE
(c)-[r:RUNS_IN]->(con)
RETURN r;
==================================================================================
//Query used to match candidate to party and match candidate to Constituency at the same time

MATCH
(c:Candidate {Name: "Cordelia Nic Fhearraigh"}), (p:Party {Name: "Independent"}), (con:Constituency {Name: "Donegal"})
CREATE
(c)-[r:RUNNING_FOR]->(p)
CREATE
(c)-[runs:RUNS_IN]->(con)

RETURN r,runs;