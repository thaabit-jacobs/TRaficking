CREATE TABLE IF NOT EXISTS users (
  id INTEGER PRIMARY KEY,
  first_name TEXT,
  last_name TEXT,
  email TEXT
);

insert into users (first_name, last_name, email) values ('java', 'mentor', 'mentor@mentors.za');