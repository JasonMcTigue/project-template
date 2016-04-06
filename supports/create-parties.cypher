//This query creates nodes representing all the paries that ran in the 2016 election

CREATE 
(fg:Party {Name: "Fine Gael", Leader: "Enda Kenny", Founded: 1933, Dail_Seats: 50}),
(lp:Party {Name: "Labour Party", Leader: "Joan Burton", Founded: 1912, Dail_Seats: 7}),
(ff:Party {Name: "Fianna Fail", Leader: "Micheal Martin", Founded: 1926, Dail_Seats: 44}),
(sf:Party {Name: "Sinn Fein", Leader: "Gerry Adams", Founded: 1905, Dail_Seats: 23}),
(aa:Party {Name: "Anti-Austerity Alliance People Before Profit", Leader: "None", Founded: 2015, Dail_Seats: 6}),
(ri:Party {Name: "Renua Ireland", Leader: "Lucinda Creighton", Founded: 2015, Dail_Seats: 0}),
(sd:Party {Name: "Social Democrats", Leader: "Stephen Donnelly/Catherine Murphy/Róisin Shortfall", Founded: 2015, Dail_Seats: 3}),
(wua:Party {Name: "Workers and Unemployed Action", Leader: "Seamus Healy", Founded: 1985, Dail_Seats: 1}),
(gp:Party {Name: "Green Party", Leader: "Eamon Ryan", Founded: 1981, Dail_Seats: 2}),
(wp:Party {Name: "Workers Party", Leader: "Michael Donnelly", Founded: 1970, Dail_Seats: 0}),
(rsf:Party {Name: "Republican Sinn Féin", Leader: "Des Dalton", Founded: 1986, Dail_Seats: 0})
(fn:Party {Name: “Fis Nua, Leader”})
CREATE(cp:Party {Name: "Communist Party of Ireland"})
CREATE(ic:Party {Name: 'Independents 4 Change'})
CREATE(di:Party {Name: 'Direct Democracy Ireland})



https://en.wikipedia.org/wiki/List_of_political_parties_in_the_Republic_of_Ireland
http://www.irishelectionstats.com/
