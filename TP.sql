-- SQLite

/*CREATE DATABASE IF NOT EXISTS Cinéma;*/

/*
CREATE TABLE Film(
    idFilm INTEGER PRIMARY KEY NOT NULL,
    titre VARCHAR(80) NOT NULL
);
*/

/*
INSERT INTO Film (titre)
    VALUES 
        ('Les évadés'),
        ('Le parrain'),
        ('La vie de Pi')
;
*/

SELECT * FROM Film;

/*
INSERT INTO Film (titre)
    VALUES 
        ('Chocolat'),
        ('Scarface'),
        ('Rango')
;
*/

SELECT * FROM Film;

SELECT titre FROM Film;

/*
CREATE TABLE Acteurs(
    idActeurs INTEGER PRIMARY KEY NOT NULL,
    nom VARCHAR(80) NOT NULL,
    prenom VARCHAR(80) NOT NULL
);
*/

/*
INSERT INTO Acteurs (nom,prenom)
    VALUES 
        ('Johnny','Depp'),
        ('Al','Pacino'),
        ('Suraj','Sharma');
*/

SELECT nom FROM Acteurs;

SELECT * FROM Acteurs;

/*
CREATE TABLE Filmographie(
    idActeurs INTEGER,
    idFilm INTEGER,
    FOREIGN KEY(idActeurs) REFERENCES Acteurs(idActeurs),
    FOREIGN KEY(idFilm) REFERENCES Film(idFilm)
);   
*/

/*
INSERT INTO Filmographie(idActeurs,idFilm)
    VALUES 
        (1,4),
        (1,6),
        (2,2),
        (2,5),
        (3,3)
;
*/

SELECT idFilm FROM Filmographie
WHERE idActeurs = 1;


SELECT Film.titre, Acteurs.nom FROM Filmographie
INNER JOIN Acteurs
    ON Filmographie.idActeurs = Acteurs.idActeurs
INNER JOIN Film
    ON Filmographie.idFilm = Film.idFilm
;


SELECT * FROM Filmographie;

SELECT Acteurs.nom ||' a joué dans '|| Film.titre AS PHRASE
FROM Filmographie
INNER JOIN Acteurs
    ON Filmographie.idActeurs = Acteurs.idActeurs
INNER JOIN Film
    ON Filmographie.idFilm = Film.idFilm;
