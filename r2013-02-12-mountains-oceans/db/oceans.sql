create table oceans
(
  id serial4 primary key,
  name varchar(255),
  image text,
  total_area float8,
  percent_of_Earth int2,
  max_depth int2,
  etymology text
);