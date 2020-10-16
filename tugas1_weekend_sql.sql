CREATE DATABASE tugas_weekend_sql;
USE tugas_weekend_sql;
CREATE TABLE food(
review INT(4),
brand VARCHAR(25),
variety VARCHAR (25),
style VARCHAR (6),
country VARCHAR (15),
stars FLOAT,
top_ten VARCHAR (8) NULL
);

LOAD DATA INFILE '/xampp/mysql/data/ramen-ratings.csv'
INTO TABLE food
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

SELECT*FROM food;

SELECT*FROM food WHERE stars>4;
SELECT*FROM food WHERE country="Japan";
SELECT review,brand, UCASE(variety) AS "variety",style,country,stars,top_ten FROM food;
