DROP TABLE dishes;
CREATE TABLE dishes (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(40),
  image_url VARCHAR(100),
  meal_type VARCHAR(20) 
);

insert into dishes (name,image_url,meal_type) 
values ('tempura ice cream','http://s3.amazonaws.com/foodspotting-ec2/reviews/3263516/thumb_600.jpg?1363001672?1413171019','dessert');