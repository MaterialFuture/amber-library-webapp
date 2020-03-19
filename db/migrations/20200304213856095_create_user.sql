-- +micrate Up
CREATE TABLE users (
  id INTEGER NOT NULL PRIMARY KEY,
  email VARCHAR NOT NULL,
  username VARCHAR NOT NULL,
  hashed_password VARCHAR NOT NULL,
  created_at TIMESTAMP,
  updated_at TIMESTAMP
);


-- +micrate Down
DROP TABLE IF EXISTS users;
