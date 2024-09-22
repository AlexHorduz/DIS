db = db.getSiblingDB('resumeDB');

db.resumes.insertMany([
  {
    "full_name": "John Doe",
    "city": "New York",
    "work_experience": [
      { "company": "TechCorp", "date_from": "2020-01-01", "date_to": "2021-01-01" },
      { "company": "Innovate Inc.", "date_from": "2021-02-01", "date_to": "2022-03-01" }
    ],
    "hobbies": ["Reading", "Traveling", "Cooking"],
    "login": "john.doe",
    "password_hash": "hashed_password_1"
  },
  {
    "full_name": "Jane Smith",
    "city": "Los Angeles",
    "work_experience": [
      { "company": "TechCorp", "date_from": "2019-05-01", "date_to": "2020-10-01" },
      { "company": "Creative Co.", "date_from": "2021-01-01", "date_to": "2022-02-01" }
    ],
    "hobbies": ["Painting", "Yoga", "Traveling"],
    "login": "jane.smith",
    "password_hash": "hashed_password_2"
  },
  {
    "full_name": "Alice Johnson",
    "city": "Chicago",
    "work_experience": [
      { "company": "Innovate Inc.", "date_from": "2018-01-01", "date_to": "2020-12-01" },
      { "company": "TechCorp", "date_from": "2021-01-01", "date_to": "2022-06-01" }
    ],
    "hobbies": ["Gardening", "Running", "Reading"],
    "login": "alice.johnson",
    "password_hash": "hashed_password_3"
  },
  {
    "full_name": "Bob Brown",
    "city": "New York",
    "work_experience": [
      { "company": "Creative Co.", "date_from": "2020-03-01", "date_to": "2021-08-01" }
    ],
    "hobbies": ["Traveling", "Photography"],
    "login": "bob.brown",
    "password_hash": "hashed_password_4"
  },
  {
    "full_name": "Emily Davis",
    "city": "San Francisco",
    "work_experience": [
      { "company": "TechCorp", "date_from": "2019-01-01", "date_to": "2021-01-01" },
      { "company": "Innovate Inc.", "date_from": "2021-05-01", "date_to": "2022-05-01" }
    ],
    "hobbies": ["Yoga", "Cooking", "Gardening"],
    "login": "emily.davis",
    "password_hash": "hashed_password_5"
  },
  {
    "full_name": "Michael Wilson",
    "city": "Chicago",
    "work_experience": [
      { "company": "Innovate Inc.", "date_from": "2017-01-01", "date_to": "2020-01-01" },
      { "company": "Creative Co.", "date_from": "2020-02-01", "date_to": "2022-01-01" }
    ],
    "hobbies": ["Reading", "Traveling"],
    "login": "michael.wilson",
    "password_hash": "hashed_password_6"
  },
  {
    "full_name": "Sarah Johnson",
    "city": "Los Angeles",
    "work_experience": [
      { "company": "Creative Co.", "date_from": "2018-05-01", "date_to": "2019-12-01" },
      { "company": "TechCorp", "date_from": "2020-01-01", "date_to": "2021-01-01" }
    ],
    "hobbies": ["Running", "Painting", "Photography"],
    "login": "sarah.johnson",
    "password_hash": "hashed_password_7"
  },
  {
    "full_name": "David Lee",
    "city": "San Francisco",
    "work_experience": [
      { "company": "TechCorp", "date_from": "2018-06-01", "date_to": "2020-03-01" }
    ],
    "hobbies": ["Cooking", "Traveling"],
    "login": "david.lee",
    "password_hash": "hashed_password_8"
  },
  {
    "full_name": "Laura White",
    "city": "Chicago",
    "work_experience": [
      { "company": "Innovate Inc.", "date_from": "2020-01-01", "date_to": "2022-01-01" }
    ],
    "hobbies": ["Gardening", "Running"],
    "login": "laura.white",
    "password_hash": "hashed_password_9"
  },
  {
    "full_name": "James Green",
    "city": "New York",
    "work_experience": [
      { "company": "Creative Co.", "date_from": "2019-01-01", "date_to": "2021-01-01" }
    ],
    "hobbies": ["Traveling", "Yoga", "Photography"],
    "login": "james.green",
    "password_hash": "hashed_password_10"
  }
]);
