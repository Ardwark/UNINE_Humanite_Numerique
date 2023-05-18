--
-- Fichier g�n�r� par SQLiteStudio v3.3.3 sur jeu. mai 18 14:36:29 2023
--
-- Encodage texte utilis� : System
--
-- R�sultats de la requ�te :
-- SELECT monnaie.numero_inventaire AS 'monnaie',
--      monnaie.type AS 'type',
--      decoration.description AS 'decors'
--  FROM monnaie
--      JOIN
--      decoration ON (monnaie.pk_monnaie = decoration.fk_avers_monnaie_decoration OR
--                     monnaie.pk_monnaie = decoration.fk_revers_monnaie_decoration)
--  WHERE decoration.description = 'cheval � g.' OR
--        decoration.description = 'cheval � dr.'
--
BEGIN TRANSACTION;
INSERT INTO monnaie_cehval (monnaie, type, decors) VALUES ('VAU-RDB N2', 'quinaire  Kaletedou ABu 2 / Nick A1/4', 'cheval � g.');
INSERT INTO monnaie_cehval (monnaie, type, decors) VALUES ('CN 934', 'quinaire KALETEDOU', 'cheval � g.');

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
