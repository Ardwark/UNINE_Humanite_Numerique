--
-- Fichier généré par SQLiteStudio v3.3.3 sur jeu. mai 18 14:37:15 2023
--
-- Encodage texte utilisé : System
--
-- Résultats de la requête :
-- SELECT personne.nom,
--        occupation.definition AS 'travail'
-- FROM carriere
--      JOIN occupation ON (carriere.fk_occupation_carriere = occupation.pk_occupation)
--      JOIN personne ON (carriere.fk_personne_carriere = personne.pk_personne) 
--      WHERE carriere.fk_organisation_carriere IS NOT NULL
--
BEGIN TRANSACTION;
INSERT INTO vue_personne_carriere_organisation (nom, travail) VALUES ('André Guillemot', 'concierge');
INSERT INTO vue_personne_carriere_organisation (nom, travail) VALUES ('Marie Martre', 'archéologue');
INSERT INTO vue_personne_carriere_organisation (nom, travail) VALUES ('Marc Richner', 'professeur');

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
