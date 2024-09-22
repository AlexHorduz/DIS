// Create Cities
MERGE (ny:City {name: 'New York'})
MERGE (la:City {name: 'Los Angeles'})
MERGE (chi:City {name: 'Chicago'})
MERGE (sf:City {name: 'San Francisco'})

// Create Companies
MERGE (tc:Company {name: 'TechCorp'})
MERGE (cc:Company {name: 'Creative Co.'})
MERGE (ii:Company {name: 'Innovate Inc.'})

// Create Hobbies
MERGE (reading:Hobby {name: 'Reading'})
MERGE (traveling:Hobby {name: 'Traveling'})
MERGE (cooking:Hobby {name: 'Cooking'})
MERGE (painting:Hobby {name: 'Painting'})
MERGE (yoga:Hobby {name: 'Yoga'})
MERGE (gardening:Hobby {name: 'Gardening'})
MERGE (running:Hobby {name: 'Running'})
MERGE (photography:Hobby {name: 'Photography'})

// Create Candidates and Relationships
// John Doe
MERGE (john:Candidate {full_name: 'John Doe'})
MERGE (john)-[:LIVES_IN]->(ny)
MERGE (john)-[r1:WORKED_AT {date_from: '2020-01-01', date_to: '2021-01-01'}]->(tc)
MERGE (john)-[r2:WORKED_AT {date_from: '2021-02-01', date_to: '2022-03-01'}]->(ii)
MERGE (john)-[:HAS_HOBBY]->(reading)
MERGE (john)-[:HAS_HOBBY]->(traveling)
MERGE (john)-[:HAS_HOBBY]->(cooking)

// Jane Smith
MERGE (jane:Candidate {full_name: 'Jane Smith'})
MERGE (jane)-[:LIVES_IN]->(la)
MERGE (jane)-[r3:WORKED_AT {date_from: '2019-05-01', date_to: '2020-10-01'}]->(tc)
MERGE (jane)-[r4:WORKED_AT {date_from: '2021-01-01', date_to: '2022-02-01'}]->(cc)
MERGE (jane)-[:HAS_HOBBY]->(painting)
MERGE (jane)-[:HAS_HOBBY]->(yoga)
MERGE (jane)-[:HAS_HOBBY]->(traveling)

// Alice Johnson
MERGE (alice:Candidate {full_name: 'Alice Johnson'})
MERGE (alice)-[:LIVES_IN]->(chi)
MERGE (alice)-[r5:WORKED_AT {date_from: '2018-01-01', date_to: '2020-12-01'}]->(ii)
MERGE (alice)-[r6:WORKED_AT {date_from: '2021-01-01', date_to: '2022-06-01'}]->(tc)
MERGE (alice)-[:HAS_HOBBY]->(gardening)
MERGE (alice)-[:HAS_HOBBY]->(running)
MERGE (alice)-[:HAS_HOBBY]->(reading)

// Bob Brown
MERGE (bob:Candidate {full_name: 'Bob Brown'})
MERGE (bob)-[:LIVES_IN]->(ny)
MERGE (bob)-[r7:WORKED_AT {date_from: '2020-03-01', date_to: '2021-08-01'}]->(cc)
MERGE (bob)-[:HAS_HOBBY]->(traveling)
MERGE (bob)-[:HAS_HOBBY]->(photography)

// Emily Davis
MERGE (emily:Candidate {full_name: 'Emily Davis'})
MERGE (emily)-[:LIVES_IN]->(sf)
MERGE (emily)-[r8:WORKED_AT {date_from: '2019-01-01', date_to: '2021-01-01'}]->(tc)
MERGE (emily)-[r9:WORKED_AT {date_from: '2021-05-01', date_to: '2022-05-01'}]->(ii)
MERGE (emily)-[:HAS_HOBBY]->(yoga)
MERGE (emily)-[:HAS_HOBBY]->(cooking)
MERGE (emily)-[:HAS_HOBBY]->(gardening)

// Michael Wilson
MERGE (michael:Candidate {full_name: 'Michael Wilson'})
MERGE (michael)-[:LIVES_IN]->(chi)
MERGE (michael)-[r10:WORKED_AT {date_from: '2017-01-01', date_to: '2020-01-01'}]->(ii)
MERGE (michael)-[r11:WORKED_AT {date_from: '2020-02-01', date_to: '2022-01-01'}]->(cc)
MERGE (michael)-[:HAS_HOBBY]->(reading)
MERGE (michael)-[:HAS_HOBBY]->(traveling)

// Sarah Johnson
MERGE (sarah:Candidate {full_name: 'Sarah Johnson'})
MERGE (sarah)-[:LIVES_IN]->(la)
MERGE (sarah)-[r12:WORKED_AT {date_from: '2018-05-01', date_to: '2019-12-01'}]->(cc)
MERGE (sarah)-[r13:WORKED_AT {date_from: '2020-01-01', date_to: '2021-01-01'}]->(tc)
MERGE (sarah)-[:HAS_HOBBY]->(running)
MERGE (sarah)-[:HAS_HOBBY]->(painting)
MERGE (sarah)-[:HAS_HOBBY]->(photography)

// David Lee
MERGE (david:Candidate {full_name: 'David Lee'})
MERGE (david)-[:LIVES_IN]->(sf)
MERGE (david)-[r14:WORKED_AT {date_from: '2018-06-01', date_to: '2020-03-01'}]->(tc)
MERGE (david)-[:HAS_HOBBY]->(cooking)
MERGE (david)-[:HAS_HOBBY]->(traveling)

// Laura White
MERGE (laura:Candidate {full_name: 'Laura White'})
MERGE (laura)-[:LIVES_IN]->(chi)
MERGE (laura)-[r15:WORKED_AT {date_from: '2020-01-01', date_to: '2022-01-01'}]->(ii)
MERGE (laura)-[:HAS_HOBBY]->(gardening)
MERGE (laura)-[:HAS_HOBBY]->(running)

// James Green
MERGE (james:Candidate {full_name: 'James Green'})
MERGE (james)-[:LIVES_IN]->(ny)
MERGE (james)-[r16:WORKED_AT {date_from: '2019-01-01', date_to: '2021-01-01'}]->(cc)
MERGE (james)-[:HAS_HOBBY]->(traveling)
MERGE (james)-[:HAS_HOBBY]->(yoga)
MERGE (james)-[:HAS_HOBBY]->(photography)
