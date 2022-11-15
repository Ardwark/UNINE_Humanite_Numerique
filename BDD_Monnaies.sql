--
-- Fichier généré par SQLiteStudio v3.3.3 sur mar. nov. 15 10:19:30 2022
--
-- Encodage texte utilisé : System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table : Lieu
CREATE TABLE Lieu (PK NUMERIC PRIMARY KEY, nom TEXT, définition TEXT, "coordonnée x" DECIMAL, "coordonée y" DECIMAL);

-- Table : monnaie
CREATE TABLE monnaie (PK NUMERIC PRIMARY KEY, poids DECIMAL, "dimensions " DECIMAL, forme TEXT, production TEXT, "émise par " TEXT REFERENCES émetteur ("primary key"), "lieu de conservation" TEXT REFERENCES Lieu (PK));

-- Table : personne
CREATE TABLE personne (pk NUMERIC PRIMARY KEY, nom TEXT, définition TEXT, genre TEXT);

-- Table : trouvailles
CREATE TABLE trouvailles (pk NUMERIC PRIMARY KEY, contexte TEXT, nature TEXT, "date de découverte" DATETIME, "monnaie(s)" TEXT REFERENCES monnaie (PK), "découvreur(s)" TEXT REFERENCES personne (pk), "lieu de découverte" TEXT REFERENCES Lieu (PK));

-- Table : émetteur
CREATE TABLE émetteur ("primary key" NUMERIC PRIMARY KEY, Nom TEXT, "date de début d'émission" DATE, "date de fin d'émission" DATE, "lieu d'émission" TEXT REFERENCES Lieu (PK));

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
