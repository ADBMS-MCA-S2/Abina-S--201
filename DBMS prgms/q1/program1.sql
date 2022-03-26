CREATE DATABASE Movies;
USE Movies;
CREATE TABLE Movie(
title varchar(30) NOT NULL,
director varchar(40) NOT NULL,
myear int NOT NULL,
rating float NOT NULL,
PRIMARY KEY(title),
FOREIGN KEY(director) REFERENCES directors(director)
);
CREATE TABLE Actors(
actor varchar(15) NOT NULL,
ayear int NOT NULL,
PRIMARY KEY(actor)
);
CREATE TABLE Acts(
actor varchar(15) NOT NULL,
title varchar(30) NOT NULL,
FOREIGN KEY(actor)REFERENCES Actors(actor),
FOREIGN KEY(title)REFERENCES Movie(title)
);
CREATE TABLE directors(
director varchar(40) NOT NULL,
dyear int NOT NULL,
PRIMARY KEY(director)
);
INSERT INTO directors(director,dyear) VALUES("Coen",1954);
INSERT INTO directors(director,dyear) VALUES("Hanson",1945);
INSERT INTO directors(director,dyear) VALUES("Raimi",1959);

INSERT INTO Movie(title,director,myear,rating) VALUES("Fargo","Coen",1996,8.2);
INSERT INTO Movie(title,director,myear,rating) VALUES("Raising Arizona","Coen",1987,7.6);
INSERT INTO Movie(title,director,myear,rating) VALUES("Spiderman","Raimi",2002,7.4);
INSERT INTO Movie(title,director,myear,rating) VALUES("Wonder Boys","Hanson",2000,7.6);

INSERT INTO Actors(actor,ayear) VALUES("Cage",1964);
INSERT INTO Actors(actor,ayear) VALUES("Hanks",1956);
INSERT INTO Actors(actor,ayear) VALUES("Magurie",1975);
INSERT INTO Actors(actor,ayear) VALUES("Mc Dormand",1957);

INSERT INTO Acts(actor,title) VALUES("Cage","Raising Arizona");
INSERT INTO Acts(actor,title) VALUES("Magurie","Spiderman");
INSERT INTO Acts(actor,title) VALUES("Magurie","Wonder Boys");
INSERT INTO Acts(actor,title) VALUES("Mc Dormand","Raising Arizona");
INSERT INTO Acts(actor,title) VALUES("Mc Dormand","Fargo");
INSERT INTO Acts(actor,title) VALUES("Mc Dormand","Wonder Boys");


select title from Movie where myear>1997;

select title from Movie where director="Hanson" and myear>1997;

select title,rating from Movie;

CREATE VIEW Actdir AS
SELECT Actors.actor,directors.director
FROM Actors,directors;
SELECT * FROM Actdir;

SELECT Movie.title FROM Acts,Movie WHERE director="Coen" and actor="Mc Dormand" AND Movie.title=Acts.title;



