--
-- Fichier g�n�r� par SQLiteStudio v3.3.3 sur mar. nov. 15 10:19:30 2022
--
-- Encodage texte utilis� : System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table : Lieu
CREATE TABLE Lieu (PK NUMERIC PRIMARY KEY, nom TEXT, d�finition TEXT, "coordonn�e x" DECIMAL, "coordon�e y" DECIMAL);

-- Table : monnaie
CREATE TABLE monnaie (PK NUMERIC PRIMARY KEY, poids DECIMAL, "dimensions " DECIMAL, forme TEXT, production TEXT, "�mise par " TEXT REFERENCES �metteur ("primary key"), "lieu de conservation" TEXT REFERENCES Lieu (PK));

-- Table : personne
CREATE TABLE personne (pk NUMERIC PRIMARY KEY, nom TEXT, d�finition TEXT, genre TEXT);

-- Table : trouvailles
CREATE TABLE trouvailles (pk NUMERIC PRIMARY KEY, contexte TEXT, nature TEXT, "date de d�couverte" DATETIME, "monnaie(s)" TEXT REFERENCES monnaie (PK), "d�couvreur(s)" TEXT REFERENCES personne (pk), "lieu de d�couverte" TEXT REFERENCES Lieu (PK));

-- Table : �metteur
CREATE TABLE �metteur ("primary key" NUMERIC PRIMARY KEY, Nom TEXT, "date de d�but d'�mission" DATE, "date de fin d'�mission" DATE, "lieu d'�mission" TEXT REFERENCES Lieu (PK));

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
