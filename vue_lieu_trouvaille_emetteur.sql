--
-- Fichier généré par SQLiteStudio v3.3.3 sur jeu. mai 18 14:30:05 2023
--
-- Encodage texte utilisé : System
--
-- Résultats de la requête :
-- SELECT DISTINCT monnaie_region_emetteur.monnaie
-- FROM monnaie_region_emetteur
--      JOIN region_trouvaille ON (monnaie_region_emetteur.fk_region = region_trouvaille.fk_region)
-- WHERE monnaie_region_emetteur.fk_region = region_trouvaille.fk_region
--
BEGIN TRANSACTION;
INSERT INTO Lieu_trouvaille_emetteur (monnaie) VALUES ('temoin');

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
