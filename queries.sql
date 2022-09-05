-- //creating a table 
CREATE TABLE "animals"(
id INTEGER NOT NULL UNIQUE PRIMARY KEY  AUTOINCREMENT,
species TEXT NOT NULL ,
name TEXT NOT NULL,
age INTEGER NOT NULL,
was_fed TEXT NOT NULL,
favorite_food TEXT NOT NULL
)


-- inserting Data 

INSERT INTO "animals" 
(species,name,age,was_fed,favorite_food) 
VALUES 
("Lion","Alex",5,"yes","Steak")
("Hippopotamus","Gloria",11,"no","Watermelons"),
("Zebra","Marty",10,"yes","Grass"),
("Giraffe","Melman",34,"yes","Acacia leaf")


-- READING FROM THE TABLE
SELECT * FROM "animals" LIMIT 2 -- gets the first 2 rows from the table

SELECT * FROM "animals" WHERE id=2  -- gets only the row with id 2

SELECT * FROM "animals" WHERE name is "Alex" -- gets the row that matches the full name as it is writen// case sensitive

SELECT * FROM "animals" WHERE name LIKE "m%"    -- finds the row whose name begins with that letter // case insensitive

SELECT * FROM "animals" WHERE name LIKE "%m%" -- finds every row that has the letter m in its name// case insensitive



-- updating the column from the table

ALTER TABLE "animals" ADD COLUMN origin; -- adds new column into the table

ALTER TABLE "animals" ADD ORIGIN TEXT NOT NULL DEFAULT "Africa"--- add a new column and a default value



--- deleting a column from the table
ALTER TABLE "animals" DROP COLUMN favorite_food; -- deletes the column with that name


--- deleting a row from the table

DELETE FROM "animals" WHERE id=1;  -- removes the row with the id 1 






