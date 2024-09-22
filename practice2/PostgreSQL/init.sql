-- CREATE TABLE users (
--     id SERIAL PRIMARY KEY,
--     name VARCHAR(100),
--     email VARCHAR(100) UNIQUE
-- );

-- INSERT INTO users (name, email) VALUES ('John Doe', 'john@example.com');
-- INSERT INTO users (name, email) VALUES ('Jane Smith', 'jane@example.com');

CREATE TABLE Companies (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) UNIQUE NOT NULL
);

CREATE TABLE Hobbies (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) UNIQUE NOT NULL
);

CREATE TABLE Cities (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) UNIQUE NOT NULL
);

CREATE TABLE Candidates (
    id SERIAL PRIMARY KEY,
    full_name VARCHAR(255) NOT NULL,
    login VARCHAR(255) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    city_id INTEGER REFERENCES Cities(id)
);

CREATE TABLE WorkHistory (
    candidate_id INTEGER REFERENCES Candidates(id),
    company_id INTEGER REFERENCES Companies(id),
    date_from DATE NOT NULL,
    date_to DATE NOT NULL,
    position VARCHAR(255),
    PRIMARY KEY (candidate_id, company_id)
);

CREATE TABLE CandidateHobbies (
    candidate_id INTEGER REFERENCES Candidates(id),
    hobby_id INTEGER REFERENCES Hobbies(id),
    PRIMARY KEY (candidate_id, hobby_id)
);


INSERT INTO Cities (name) VALUES 
('New York'),
('Los Angeles'),
('Chicago'),
('San Francisco')
ON CONFLICT (name) DO NOTHING;


INSERT INTO Companies (name) VALUES 
('TechCorp'),
('Innovate Inc.'),
('Creative Co.')
ON CONFLICT (name) DO NOTHING;


INSERT INTO Hobbies (name) VALUES 
('Reading'),
('Traveling'),
('Cooking'),
('Painting'),
('Yoga'),
('Running'),
('Photography'),
('Gardening')
ON CONFLICT (name) DO NOTHING;


INSERT INTO Candidates (full_name, login, password_hash, city_id) 
VALUES 
('John Doe', 'john.doe', 'hashed_password_1', (SELECT id FROM Cities WHERE name = 'New York')),
('Jane Smith', 'jane.smith', 'hashed_password_2', (SELECT id FROM Cities WHERE name = 'Los Angeles')),
('Alice Johnson', 'alice.johnson', 'hashed_password_3', (SELECT id FROM Cities WHERE name = 'Chicago')),
('Bob Brown', 'bob.brown', 'hashed_password_4', (SELECT id FROM Cities WHERE name = 'New York')),
('Emily Davis', 'emily.davis', 'hashed_password_5', (SELECT id FROM Cities WHERE name = 'San Francisco')),
('Michael Wilson', 'michael.wilson', 'hashed_password_6', (SELECT id FROM Cities WHERE name = 'Chicago')),
('Sarah Johnson', 'sarah.johnson', 'hashed_password_7', (SELECT id FROM Cities WHERE name = 'Los Angeles')),
('David Lee', 'david.lee', 'hashed_password_8', (SELECT id FROM Cities WHERE name = 'San Francisco')),
('Laura White', 'laura.white', 'hashed_password_9', (SELECT id FROM Cities WHERE name = 'Chicago')),
('James Green', 'james.green', 'hashed_password_10', (SELECT id FROM Cities WHERE name = 'New York'));


INSERT INTO WorkHistory (candidate_id, company_id, date_from, date_to, position)
VALUES 
((SELECT id FROM Candidates WHERE login = 'john.doe'), (SELECT id FROM Companies WHERE name = 'TechCorp'), '2020-01-01', '2021-01-01', NULL),
((SELECT id FROM Candidates WHERE login = 'john.doe'), (SELECT id FROM Companies WHERE name = 'Innovate Inc.'), '2021-02-01', '2022-03-01', NULL),
((SELECT id FROM Candidates WHERE login = 'jane.smith'), (SELECT id FROM Companies WHERE name = 'TechCorp'), '2019-05-01', '2020-10-01', NULL),
((SELECT id FROM Candidates WHERE login = 'jane.smith'), (SELECT id FROM Companies WHERE name = 'Creative Co.'), '2021-01-01', '2022-02-01', NULL),
((SELECT id FROM Candidates WHERE login = 'alice.johnson'), (SELECT id FROM Companies WHERE name = 'Innovate Inc.'), '2018-01-01', '2020-12-01', NULL),
((SELECT id FROM Candidates WHERE login = 'alice.johnson'), (SELECT id FROM Companies WHERE name = 'TechCorp'), '2021-01-01', '2022-06-01', NULL),
((SELECT id FROM Candidates WHERE login = 'bob.brown'), (SELECT id FROM Companies WHERE name = 'Creative Co.'), '2020-03-01', '2021-08-01', NULL),
((SELECT id FROM Candidates WHERE login = 'emily.davis'), (SELECT id FROM Companies WHERE name = 'TechCorp'), '2019-01-01', '2021-01-01', NULL),
((SELECT id FROM Candidates WHERE login = 'emily.davis'), (SELECT id FROM Companies WHERE name = 'Innovate Inc.'), '2021-05-01', '2022-05-01', NULL),
((SELECT id FROM Candidates WHERE login = 'michael.wilson'), (SELECT id FROM Companies WHERE name = 'Innovate Inc.'), '2017-01-01', '2020-01-01', NULL),
((SELECT id FROM Candidates WHERE login = 'michael.wilson'), (SELECT id FROM Companies WHERE name = 'Creative Co.'), '2020-02-01', '2022-01-01', NULL),
((SELECT id FROM Candidates WHERE login = 'sarah.johnson'), (SELECT id FROM Companies WHERE name = 'Creative Co.'), '2018-05-01', '2019-12-01', NULL),
((SELECT id FROM Candidates WHERE login = 'sarah.johnson'), (SELECT id FROM Companies WHERE name = 'TechCorp'), '2020-01-01', '2021-01-01', NULL),
((SELECT id FROM Candidates WHERE login = 'david.lee'), (SELECT id FROM Companies WHERE name = 'TechCorp'), '2018-06-01', '2020-03-01', NULL),
((SELECT id FROM Candidates WHERE login = 'laura.white'), (SELECT id FROM Companies WHERE name = 'Innovate Inc.'), '2020-01-01', '2022-01-01', NULL),
((SELECT id FROM Candidates WHERE login = 'james.green'), (SELECT id FROM Companies WHERE name = 'Creative Co.'), '2019-01-01', '2021-01-01', NULL);


INSERT INTO CandidateHobbies (candidate_id, hobby_id)
VALUES 
((SELECT id FROM Candidates WHERE login = 'john.doe'), (SELECT id FROM Hobbies WHERE name = 'Reading')),
((SELECT id FROM Candidates WHERE login = 'john.doe'), (SELECT id FROM Hobbies WHERE name = 'Traveling')),
((SELECT id FROM Candidates WHERE login = 'john.doe'), (SELECT id FROM Hobbies WHERE name = 'Cooking')),
((SELECT id FROM Candidates WHERE login = 'jane.smith'), (SELECT id FROM Hobbies WHERE name = 'Painting')),
((SELECT id FROM Candidates WHERE login = 'jane.smith'), (SELECT id FROM Hobbies WHERE name = 'Yoga')),
((SELECT id FROM Candidates WHERE login = 'jane.smith'), (SELECT id FROM Hobbies WHERE name = 'Traveling')),
((SELECT id FROM Candidates WHERE login = 'alice.johnson'), (SELECT id FROM Hobbies WHERE name = 'Gardening')),
((SELECT id FROM Candidates WHERE login = 'alice.johnson'), (SELECT id FROM Hobbies WHERE name = 'Running')),
((SELECT id FROM Candidates WHERE login = 'alice.johnson'), (SELECT id FROM Hobbies WHERE name = 'Reading')),
((SELECT id FROM Candidates WHERE login = 'bob.brown'), (SELECT id FROM Hobbies WHERE name = 'Traveling')),
((SELECT id FROM Candidates WHERE login = 'bob.brown'), (SELECT id FROM Hobbies WHERE name = 'Photography')),
((SELECT id FROM Candidates WHERE login = 'emily.davis'), (SELECT id FROM Hobbies WHERE name = 'Yoga')),
((SELECT id FROM Candidates WHERE login = 'emily.davis'), (SELECT id FROM Hobbies WHERE name = 'Cooking')),
((SELECT id FROM Candidates WHERE login = 'emily.davis'), (SELECT id FROM Hobbies WHERE name = 'Gardening')),
((SELECT id FROM Candidates WHERE login = 'michael.wilson'), (SELECT id FROM Hobbies WHERE name = 'Reading')),
((SELECT id FROM Candidates WHERE login = 'michael.wilson'), (SELECT id FROM Hobbies WHERE name = 'Traveling')),
((SELECT id FROM Candidates WHERE login = 'sarah.johnson'), (SELECT id FROM Hobbies WHERE name = 'Running')),
((SELECT id FROM Candidates WHERE login = 'sarah.johnson'), (SELECT id FROM Hobbies WHERE name = 'Painting')),
((SELECT id FROM Candidates WHERE login = 'sarah.johnson'), (SELECT id FROM Hobbies WHERE name = 'Photography')),
((SELECT id FROM Candidates WHERE login = 'david.lee'), (SELECT id FROM Hobbies WHERE name = 'Cooking')),
((SELECT id FROM Candidates WHERE login = 'david.lee'), (SELECT id FROM Hobbies WHERE name = 'Traveling')),
((SELECT id FROM Candidates WHERE login = 'laura.white'), (SELECT id FROM Hobbies WHERE name = 'Gardening')),
((SELECT id FROM Candidates WHERE login = 'laura.white'), (SELECT id FROM Hobbies WHERE name = 'Running')),
((SELECT id FROM Candidates WHERE login = 'james.green'), (SELECT id FROM Hobbies WHERE name = 'Traveling')),
((SELECT id FROM Candidates WHERE login = 'james.green'), (SELECT id FROM Hobbies WHERE name = 'Yoga')),
((SELECT id FROM Candidates WHERE login = 'james.green'), (SELECT id FROM Hobbies WHERE name = 'Photography'));
