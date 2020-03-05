-- +micrate Up
CREATE TABLE books (
  id INTEGER NOT NULL PRIMARY KEY,
  user_id INTEGER NOT NULL,
  title VARCHAR NOT NULL,
  author VARCHAR NOT NULL,
  edition VARCHAR NULL,
  isbn VARCHAR NULL,
  is_read INT,
  tags VARCHAR,
  review VARCHAR,
  notes VARCHAR,
  created_at TIMESTAMP,
  updated_at TIMESTAMP
);

CREATE INDEX 'user_id_idx' ON books (user_id);

-- +micrate Down
DROP TABLE IF EXISTS books;
