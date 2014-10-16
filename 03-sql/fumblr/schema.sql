DROP TABLE posts;
CREATE TABLE posts (
  id SERIAL4 PRIMARY KEY,
  title VARCHAR(30),
  content TEXT,
  image_url TEXT,
  created_at TIMESTAMP
);

