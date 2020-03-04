-- +micrate Up
CREATE TABLE books (
  id INTEGER NOT NULL PRIMARY KEY,
  title VARCHAR,
  author VARCHAR,
  year INT,
  isbn INT,
  created_at TIMESTAMP,
  updated_at TIMESTAMP
);


-- +micrate Down
DROP TABLE IF EXISTS books;
