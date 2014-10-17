/* comments in */
DROP TABLE students; /* add this if you created a table and it's wrong */
CREATE TABLE students
(
  id SERIAL4 PRIMARY KEY,
  first VARCHAR(30) NOT NULL,
  last VARCHAR(30) NOT NULL,
  dob DATE,
  gpa FLOAT8
);

CREATE TABLE courses (
  id SERIAL4 PRIMARY KEY,
  name TEXT NOT NULL
)

INSERT INTO students (first,last,dob,gpa) VALUES ('bill','jones','1/1/1990',3.3);
INSERT INTO students (first,last,dob,gpa) VALUES ('janet','jones','2/1/1980',3.7);
INSERT INTO students (first,last,dob,gpa) VALUES ('jill','smith','2/1/1980',3.5);
INSERT INTO students (first,last,dob,gpa) VALUES ('tim','smith','2/1/1980',3.4);
INSERT INTO students (first,last,dob,gpa) VALUES ('jim','jones','3/1/1990',3.5);

INSERT INTO students (first,last,dob,gpa) VALUES ('jan','jones','4/2/1970', 1.3);

UPDATE students SET gpa=4.0 WHERE id=6;

DELETE FROM students WHERE id=1;


