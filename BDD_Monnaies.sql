--
-- Fichier g�n�r� par SQLiteStudio v3.3.3 sur jeu. janv. 26 02:02:03 2023
--
-- Encodage texte utilis� : System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table : carriere
CREATE TABLE carriere (pk_carriere INTEGER PRIMARY KEY, date_debut_carriere VARCHAR, date_fin_carriere VARCHAR, fk_personne_carriere INTEGER REFERENCES personne, fk_occupation_carriere INTEGER REFERENCES occupation (pk_occupation), fk_organisation_carriere INTEGER REFERENCES organisation (pk_organisation));
INSERT INTO carriere (pk_carriere, date_debut_carriere, date_fin_carriere, fk_personne_carriere, fk_occupation_carriere, fk_organisation_carriere) VALUES (2, NULL, NULL, 2, 5, 4);
INSERT INTO carriere (pk_carriere, date_debut_carriere, date_fin_carriere, fk_personne_carriere, fk_occupation_carriere, fk_organisation_carriere) VALUES (3, '1989', NULL, 4, 2, 3);
INSERT INTO carriere (pk_carriere, date_debut_carriere, date_fin_carriere, fk_personne_carriere, fk_occupation_carriere, fk_organisation_carriere) VALUES (4, '1945', '1985', 3, 3, 2);
INSERT INTO carriere (pk_carriere, date_debut_carriere, date_fin_carriere, fk_personne_carriere, fk_occupation_carriere, fk_organisation_carriere) VALUES (5, '1995', NULL, 5, 1, NULL);
INSERT INTO carriere (pk_carriere, date_debut_carriere, date_fin_carriere, fk_personne_carriere, fk_occupation_carriere, fk_organisation_carriere) VALUES (6, '1990', NULL, 6, 1, NULL);
INSERT INTO carriere (pk_carriere, date_debut_carriere, date_fin_carriere, fk_personne_carriere, fk_occupation_carriere, fk_organisation_carriere) VALUES (7, NULL, NULL, 1, 6, NULL);

-- Table : decoration
CREATE TABLE decoration (pk_decoration INTEGER PRIMARY KEY, description STRING, fk_avers_monnaie_decoration INTEGER REFERENCES monnaie (pk_monnaie), fk_revers_monnaie_decoration INTEGER REFERENCES monnaie (pk_monnaie));
INSERT INTO decoration (pk_decoration, description, fk_avers_monnaie_decoration, fk_revers_monnaie_decoration) VALUES (1, 'buste � dr., laur�.', 4, NULL);
INSERT INTO decoration (pk_decoration, description, fk_avers_monnaie_decoration, fk_revers_monnaie_decoration) VALUES (2, 'Mars s''avan�ant � dr., tenant
une lance et un bouclier', NULL, 4);
INSERT INTO decoration (pk_decoration, description, fk_avers_monnaie_decoration, fk_revers_monnaie_decoration) VALUES (3, 't�te � g., � double bandeau, dans un cercle lisse', 5, NULL);
INSERT INTO decoration (pk_decoration, description, fk_avers_monnaie_decoration, fk_revers_monnaie_decoration) VALUES (4, 'quadrup�de � g., t�te allong�e et queue dress�e, dans
un cercle lisse', NULL, 5);
INSERT INTO decoration (pk_decoration, description, fk_avers_monnaie_decoration, fk_revers_monnaie_decoration) VALUES (5, 't�te de Roma � g., au cou perl�', 3, NULL);
INSERT INTO decoration (pk_decoration, description, fk_avers_monnaie_decoration, fk_revers_monnaie_decoration) VALUES (6, ' cheval � g.', NULL, 3);
INSERT INTO decoration (pk_decoration, description, fk_avers_monnaie_decoration, fk_revers_monnaie_decoration) VALUES (7, 'Agrippa � g., avec la couronne rostrale et la couronne de lauriers.', 2, NULL);
INSERT INTO decoration (pk_decoration, description, fk_avers_monnaie_decoration, fk_revers_monnaie_decoration) VALUES (8, 'crocodile � dr., encha�n� � un
palmier.', NULL, 2);
INSERT INTO decoration (pk_decoration, description, fk_avers_monnaie_decoration, fk_revers_monnaie_decoration) VALUES (9, 't�te de Roma � g., au cou perl�, dans un cercle perl�', 1, NULL);
INSERT INTO decoration (pk_decoration, description, fk_avers_monnaie_decoration, fk_revers_monnaie_decoration) VALUES (10, 'cheval � g.', NULL, 1);
INSERT INTO decoration (pk_decoration, description, fk_avers_monnaie_decoration, fk_revers_monnaie_decoration) VALUES (11, 'porte-enseigne', NULL, 6);
INSERT INTO decoration (pk_decoration, description, fk_avers_monnaie_decoration, fk_revers_monnaie_decoration) VALUES (12, 't�te � dr., avec cheveux longs dans
un cercle de gr�netis; derri�re la t�te �.', 6, NULL);
INSERT INTO decoration (pk_decoration, description, fk_avers_monnaie_decoration, fk_revers_monnaie_decoration) VALUES (13, 't�te couronn�e de laurier � dr.', 7, NULL);
INSERT INTO decoration (pk_decoration, description, fk_avers_monnaie_decoration, fk_revers_monnaie_decoration) VALUES (14, 'bige � dr., dessous �, ? et ?.', NULL, 7);
INSERT INTO decoration (pk_decoration, description, fk_avers_monnaie_decoration, fk_revers_monnaie_decoration) VALUES (15, 't�te � double bandeau � g.', 8, NULL);
INSERT INTO decoration (pk_decoration, description, fk_avers_monnaie_decoration, fk_revers_monnaie_decoration) VALUES (16, 'quadrup�de � queue lev�e � g.', NULL, 8);

-- Table : emetteur
CREATE TABLE emetteur (pk_emetteur INTEGER PRIMARY KEY, Nom TEXT, date_debut_emission VARCHAR, date_fin_emission VARCHAR, fk_lieu_emetteur INTEGER REFERENCES Lieu (pk_lieu), fk_entite_politique INTEGER REFERENCES "entite politique" (pk_entite_politique));
INSERT INTO emetteur (pk_emetteur, Nom, date_debut_emission, date_fin_emission, fk_lieu_emetteur, fk_entite_politique) VALUES (1, 'Vesontio', NULL, '-50', 17, 1);
INSERT INTO emetteur (pk_emetteur, Nom, date_debut_emission, date_fin_emission, fk_lieu_emetteur, fk_entite_politique) VALUES (2, 'Ravenna', NULL, NULL, 21, 2);
INSERT INTO emetteur (pk_emetteur, Nom, date_debut_emission, date_fin_emission, fk_lieu_emetteur, fk_entite_politique) VALUES (3, 'Andematunum', NULL, '-50', 23, 3);
INSERT INTO emetteur (pk_emetteur, Nom, date_debut_emission, date_fin_emission, fk_lieu_emetteur, fk_entite_politique) VALUES (4, 'Nimes', NULL, NULL, 24, 2);
INSERT INTO emetteur (pk_emetteur, Nom, date_debut_emission, date_fin_emission, fk_lieu_emetteur, fk_entite_politique) VALUES (5, 'bibracte', NULL, '-50', NULL, NULL);

-- Table : entite politique
CREATE TABLE "entite politique" (pk_entite_politique INTEGER PRIMARY KEY, nom STRING, type_gouvernement STRING, date_d�but_entite_politique VARCHAR, date_fin_entite_politique VARCHAR, fk_territoire_entite_politique INTEGER REFERENCES Lieu (pk_lieu));
INSERT INTO "entite politique" (pk_entite_politique, nom, type_gouvernement, date_d�but_entite_politique, date_fin_entite_politique, fk_territoire_entite_politique) VALUES (1, 'Sequanes', 'peuple celte', 'age du fer', '�poque gallo-romaine', 17);
INSERT INTO "entite politique" (pk_entite_politique, nom, type_gouvernement, date_d�but_entite_politique, date_fin_entite_politique, fk_territoire_entite_politique) VALUES (2, 'empire Romain', 'Empire', '27 avant', '456', 20);
INSERT INTO "entite politique" (pk_entite_politique, nom, type_gouvernement, date_d�but_entite_politique, date_fin_entite_politique, fk_territoire_entite_politique) VALUES (3, 'Lingons', 'peuple celte', '�ge du fer', '�poque gallo-romaine', 22);
INSERT INTO "entite politique" (pk_entite_politique, nom, type_gouvernement, date_d�but_entite_politique, date_fin_entite_politique, fk_territoire_entite_politique) VALUES (4, 'Eduens', 'peuple celte', '�ge du fer', '�poque gallo-romaine', 27);

-- Table : inscription
CREATE TABLE inscription (pk_inscription INTEGER PRIMARY KEY, description STRING, alphabet STRING, technique STRING, langue STRING, fk_revers_monnaie_inscription INTEGER REFERENCES monnaie, fk_avers_monnaie_inscription INTEGER REFERENCES monnaie);
INSERT INTO inscription (pk_inscription, description, alphabet, technique, langue, fk_revers_monnaie_inscription, fk_avers_monnaie_inscription) VALUES (1, '[ ] � ($ � # � [ ]', NULL, 'frappe', NULL, 3, NULL);
INSERT INTO inscription (pk_inscription, description, alphabet, technique, langue, fk_revers_monnaie_inscription, fk_avers_monnaie_inscription) VALUES (2, '[COL = NEM]', 'latin', NULL, 'latin', 2, NULL);
INSERT INTO inscription (pk_inscription, description, alphabet, technique, langue, fk_revers_monnaie_inscription, fk_avers_monnaie_inscription) VALUES (3, 'IM[P / DIVI F]', 'latin', NULL, 'latin', NULL, 2);
INSERT INTO inscription (pk_inscription, description, alphabet, technique, langue, fk_revers_monnaie_inscription, fk_avers_monnaie_inscription) VALUES (4, '[K])$ � &+ � "', NULL, 'frappe', NULL, 1, NULL);
INSERT INTO inscription (pk_inscription, description, alphabet, technique, langue, fk_revers_monnaie_inscription, fk_avers_monnaie_inscription) VALUES (5, 'IMP ALEXANDER PIVS AVG', 'Latin', NULL, 'latin', NULL, 4);
INSERT INTO inscription (pk_inscription, description, alphabet, technique, langue, fk_revers_monnaie_inscription, fk_avers_monnaie_inscription) VALUES (6, 'MARS VLTOR; S = C', 'latin', NULL, 'latin', 4, NULL);
INSERT INTO inscription (pk_inscription, description, alphabet, technique, langue, fk_revers_monnaie_inscription, fk_avers_monnaie_inscription) VALUES (7, '[DVBNOCOV]', NULL, NULL, NULL, NULL, 6);
INSERT INTO inscription (pk_inscription, description, alphabet, technique, langue, fk_revers_monnaie_inscription, fk_avers_monnaie_inscription) VALUES (8, '[DV]BNOREX', NULL, NULL, NULL, 6, NULL);

-- Table : Lieu
CREATE TABLE Lieu (pk_lieu INTEGER PRIMARY KEY, nom TEXT, d�finition TEXT, coordonneeX DECIMAL, coordoneeY DECIMAL);
INSERT INTO Lieu (pk_lieu, nom, d�finition, coordonneeX, coordoneeY) VALUES (1, 'la T�ne', 'site arch�ologique', '47�00''18.1"N', '7�01''12.0"E');
INSERT INTO Lieu (pk_lieu, nom, d�finition, coordonneeX, coordoneeY) VALUES (2, 'c�te du Risieux', 'Lieu-dit', '46�51''32.0"N', '6�31''04.9"E');
INSERT INTO Lieu (pk_lieu, nom, d�finition, coordonneeX, coordoneeY) VALUES (3, 'Saint-Urbain', 'monument', '46�53''45.8"N', '7�07''39.6"E');
INSERT INTO Lieu (pk_lieu, nom, d�finition, coordonneeX, coordoneeY) VALUES (4, 'Roche-Bulan', 'Lieu-dit', '46�55''11.6"N', '6�34''21.4"E');
INSERT INTO Lieu (pk_lieu, nom, d�finition, coordonneeX, coordoneeY) VALUES (5, 'Notre-Dame de Fribourg', 'monument', '46�48''24.4"N', '7�09''42.2"E');
INSERT INTO Lieu (pk_lieu, nom, d�finition, coordonneeX, coordoneeY) VALUES (6, 'Lat�nium', 'mus�e', '47�00''26.3"N', '6�58''18.3"E');
INSERT INTO Lieu (pk_lieu, nom, d�finition, coordonneeX, coordoneeY) VALUES (7, 'Mus�e d''Yverdon et R�gion', 'mus�e', '46�46''41.0"N', '6�38''30.7"E');
INSERT INTO Lieu (pk_lieu, nom, d�finition, coordonneeX, coordoneeY) VALUES (8, 'mus�e national suisse', 'mus�e', '47�22''45.4"N', '8�32''23.8"E');
INSERT INTO Lieu (pk_lieu, nom, d�finition, coordonneeX, coordoneeY) VALUES (9, 'Auvernier', 'commune', '46�58''35"N', '6�52''45"E');
INSERT INTO Lieu (pk_lieu, nom, d�finition, coordonneeX, coordoneeY) VALUES (10, 'Zurich', 'ville', '47�22''00.9"N', '8�32''27.4"E');
INSERT INTO Lieu (pk_lieu, nom, d�finition, coordonneeX, coordoneeY) VALUES (11, 'Couvet', 'commune', '46�55''29.3"N', '6�37''53.1"E');
INSERT INTO Lieu (pk_lieu, nom, d�finition, coordonneeX, coordoneeY) VALUES (12, 'Bienne', 'ville', '47�08''08.7"N', '7�15''01.5"E');
INSERT INTO Lieu (pk_lieu, nom, d�finition, coordonneeX, coordoneeY) VALUES (13, 'Bulle', 'ville', '46�37''03.0"N', '7�03''32.8"E');
INSERT INTO Lieu (pk_lieu, nom, d�finition, coordonneeX, coordoneeY) VALUES (14, 'Vevey', 'ville', '46�27''45.0"N', '6�50''48.7"E');
INSERT INTO Lieu (pk_lieu, nom, d�finition, coordonneeX, coordoneeY) VALUES (15, 'Neuch�tel', 'ville', '46�59''28.9"N', '6�55''40.3"E');
INSERT INTO Lieu (pk_lieu, nom, d�finition, coordonneeX, coordoneeY) VALUES (16, 'Hauterive', 'Commune', '47�00''41.7"N', '6�58''29.7"E');
INSERT INTO Lieu (pk_lieu, nom, d�finition, coordonneeX, coordoneeY) VALUES (17, 'Franche-comt� ', 'r�gion', NULL, NULL);
INSERT INTO Lieu (pk_lieu, nom, d�finition, coordonneeX, coordoneeY) VALUES (18, 'Alsace', 'r�gion', NULL, NULL);
INSERT INTO Lieu (pk_lieu, nom, d�finition, coordonneeX, coordoneeY) VALUES (19, 'Lorraine', 'r�gion', NULL, NULL);
INSERT INTO Lieu (pk_lieu, nom, d�finition, coordonneeX, coordoneeY) VALUES (20, 'Rome', 'ville', '41�53''57.0"N', '12�29''27.3"E');
INSERT INTO Lieu (pk_lieu, nom, d�finition, coordonneeX, coordoneeY) VALUES (21, 'Ravenne', 'Ville', '44�25''04.0"N', '12�11''53.2"E');
INSERT INTO Lieu (pk_lieu, nom, d�finition, coordonneeX, coordoneeY) VALUES (22, 'Bourgogne-Franche-Comt�', 'r�gion', NULL, NULL);
INSERT INTO Lieu (pk_lieu, nom, d�finition, coordonneeX, coordoneeY) VALUES (23, 'Langres', 'ville', '47�51''46.4"N', '5�20''02.9"E');
INSERT INTO Lieu (pk_lieu, nom, d�finition, coordonneeX, coordoneeY) VALUES (24, 'Nimes', 'ville', '43�50''09.7"N', '4�20''41.7"E');
INSERT INTO Lieu (pk_lieu, nom, d�finition, coordonneeX, coordoneeY) VALUES (25, 'Berne', 'ville', '46�56''46.1"N', '7�26''20.0"E');
INSERT INTO Lieu (pk_lieu, nom, d�finition, coordonneeX, coordoneeY) VALUES (26, 'Mont Beuvray', 'lieu-dit', '46�55''40.6"N', 'N 4�02''15.8"E');
INSERT INTO Lieu (pk_lieu, nom, d�finition, coordonneeX, coordoneeY) VALUES (27, 'Bourgogne', 'r�gion', NULL, NULL);

-- Table : matiere
CREATE TABLE matiere (pk_matiere INTEGER PRIMARY KEY, d�finition STRING, composant_1 INTEGER REFERENCES matiere (pk_matiere), composant_2 INTEGER REFERENCES matiere (pk_matiere), composant_3 INTEGER REFERENCES matiere (pk_matiere));
INSERT INTO matiere (pk_matiere, d�finition, composant_1, composant_2, composant_3) VALUES (1, 'argent', NULL, NULL, NULL);
INSERT INTO matiere (pk_matiere, d�finition, composant_1, composant_2, composant_3) VALUES (2, 'potin', 4, 5, 6);
INSERT INTO matiere (pk_matiere, d�finition, composant_1, composant_2, composant_3) VALUES (3, 'or', NULL, NULL, NULL);
INSERT INTO matiere (pk_matiere, d�finition, composant_1, composant_2, composant_3) VALUES (4, 'cuivre', NULL, NULL, NULL);
INSERT INTO matiere (pk_matiere, d�finition, composant_1, composant_2, composant_3) VALUES (5, 'plomb', NULL, NULL, NULL);
INSERT INTO matiere (pk_matiere, d�finition, composant_1, composant_2, composant_3) VALUES (6, 'etain', NULL, NULL, NULL);
INSERT INTO matiere (pk_matiere, d�finition, composant_1, composant_2, composant_3) VALUES (7, 'bronze', 4, 6, NULL);

-- Table : monnaie
CREATE TABLE monnaie (pk_monnaie INTEGER PRIMARY KEY, poids DECIMAL, "dimensions " DECIMAL, forme TEXT, production TEXT, fk_lieu_conservation_monnaie INTEGER REFERENCES Lieu (pk_lieu), fk_trouvaille_monnaie INTEGER REFERENCES trouvaille (pk_trouvaille), etat STRING, defaut_production STRING, numero_inventaire STRING, FK_matiere INTEGER REFERENCES matiere (pk_matiere), datation STRING, type STRING, fk_emetteur INTEGER REFERENCES emetteur (pk_emetteur), fk_ouvrage INTEGER REFERENCES ouvrage (pk_ouvrage));
INSERT INTO monnaie (pk_monnaie, poids, "dimensions ", forme, production, fk_lieu_conservation_monnaie, fk_trouvaille_monnaie, etat, defaut_production, numero_inventaire, FK_matiere, datation, type, fk_emetteur, fk_ouvrage) VALUES (1, 1.327, 15.5, 'rond', 'frapp�', 7, 4, '', '', 'CN 934', 1, 'dernier tiers du IIe jusqu''au 1er tiers du Ier
si�cle av. J.�C.', 'quinaire KALETEDOU', 3, 1);
INSERT INTO monnaie (pk_monnaie, poids, "dimensions ", forme, production, fk_lieu_conservation_monnaie, fk_trouvaille_monnaie, etat, defaut_production, numero_inventaire, FK_matiere, datation, type, fk_emetteur, fk_ouvrage) VALUES (2, 7.971, 25.1, 'rond', 'frapp�', 8, 2, 'coup� en deux', 'frappe non-align� (av.)', 'COL-CH 3335', 7, 'env. 10 av. J.�C.�10 apr. J.�C.', 'as Nimes', 4, 1);
INSERT INTO monnaie (pk_monnaie, poids, "dimensions ", forme, production, fk_lieu_conservation_monnaie, fk_trouvaille_monnaie, etat, defaut_production, numero_inventaire, FK_matiere, datation, type, fk_emetteur, fk_ouvrage) VALUES (3, 1.71, 12.9, 'rond', 'frapp�', 8, 3, NULL, 'frappe d�centr�e (av./rv.)', 'VAU-RDB N2', 1, 'dernier tiers du IIe jusqu''au 1er tiers du Ier
si�cle av. J.�C', 'quinaire  Kaletedou ABu 2 / Nick A1/4', 3, 1);
INSERT INTO monnaie (pk_monnaie, poids, "dimensions ", forme, production, fk_lieu_conservation_monnaie, fk_trouvaille_monnaie, etat, defaut_production, numero_inventaire, FK_matiere, datation, type, fk_emetteur, fk_ouvrage) VALUES (4, 1.69, 14.1, 'carr�, � coin rond', 'frapp�', 6, 1, 'D�t�rioration: l�g�re d�t�rioration de la surface due � un
milieu humide (av./rv.)', NULL, 'MAR-LT-25067', 7, NULL, 'sesterce', 2, 2);
INSERT INTO monnaie (pk_monnaie, poids, "dimensions ", forme, production, fk_lieu_conservation_monnaie, fk_trouvaille_monnaie, etat, defaut_production, numero_inventaire, FK_matiere, datation, type, fk_emetteur, fk_ouvrage) VALUES (5, 4.93, 20.8, 'rond', 'coul�', 6, 1, '', 'relief impr�cis (av.: zone du nez,
rv.: zone de la t�te et de la patte ant�rieure de l''animal)
d� au manque de m�tal coul�', 'MAR-LT-25075', 2, NULL, 'potin', 1, 2);
INSERT INTO monnaie (pk_monnaie, poids, "dimensions ", forme, production, fk_lieu_conservation_monnaie, fk_trouvaille_monnaie, etat, defaut_production, numero_inventaire, FK_matiere, datation, type, fk_emetteur, fk_ouvrage) VALUES (6, 1.77, 14.3, 'rond', 'frapp�', 7, 5, 'D�t�rioration: profondes griffures, certaines modernes.', NULL, 'LM ZB K 1014', 1, 'milieu du Ier si�cle av. J.�C', 'quinaire', 5, 1);
INSERT INTO monnaie (pk_monnaie, poids, "dimensions ", forme, production, fk_lieu_conservation_monnaie, fk_trouvaille_monnaie, etat, defaut_production, numero_inventaire, FK_matiere, datation, type, fk_emetteur, fk_ouvrage) VALUES (7, 2.129, 12.3, 'rond', 'frapp�', 8, 1, NULL, NULL, 'LM M 12982', 3, 'milieu du IIIe si�cle av. J.�C.', 'Quart de stat�re Montmorot cl. 2.', NULL, 2);
INSERT INTO monnaie (pk_monnaie, poids, "dimensions ", forme, production, fk_lieu_conservation_monnaie, fk_trouvaille_monnaie, etat, defaut_production, numero_inventaire, FK_matiere, datation, type, fk_emetteur, fk_ouvrage) VALUES (8, 4.36, 19.2, 'rond', 'coul�', 6, 1, NULL, NULL, 'BX-CHE 2428', 2, 'fin du IIe jusqu''au milieu du Ier si�cle av. J.�C.', 'potin s�quane', 1, 2);

-- Table : naissance
CREATE TABLE naissance (pk_naissance INTEGER PRIMARY KEY, date DATETIME, fk_personne_nee INTEGER REFERENCES personne, fk_lieu_naissance INTEGER REFERENCES Lieu (pk_lieu));
INSERT INTO naissance (pk_naissance, date, fk_personne_nee, fk_lieu_naissance) VALUES (1, '1854-12-16', 1, 12);
INSERT INTO naissance (pk_naissance, date, fk_personne_nee, fk_lieu_naissance) VALUES (2, '', 2, 9);
INSERT INTO naissance (pk_naissance, date, fk_personne_nee, fk_lieu_naissance) VALUES (3, '1919-03-13', 3, 10);
INSERT INTO naissance (pk_naissance, date, fk_personne_nee, fk_lieu_naissance) VALUES (4, '1964-06-27', 4, 11);
INSERT INTO naissance (pk_naissance, date, fk_personne_nee, fk_lieu_naissance) VALUES (5, '1982-08-14', 5, 14);
INSERT INTO naissance (pk_naissance, date, fk_personne_nee, fk_lieu_naissance) VALUES (6, 1972, 6, 13);

-- Table : occupation
CREATE TABLE occupation (pk_occupation INTEGER PRIMARY KEY, definition STRING);
INSERT INTO occupation (pk_occupation, definition) VALUES (1, 'prospecteur amateur');
INSERT INTO occupation (pk_occupation, definition) VALUES (2, 'arch�ologue');
INSERT INTO occupation (pk_occupation, definition) VALUES (3, 'professeur');
INSERT INTO occupation (pk_occupation, definition) VALUES (4, 'pharmacien');
INSERT INTO occupation (pk_occupation, definition) VALUES (5, 'concierge');
INSERT INTO occupation (pk_occupation, definition) VALUES (6, 'p�cheur');

-- Table : organisation
CREATE TABLE organisation (pk_organisation INTEGER PRIMARY KEY, nom STRING, definition STRING, Fk_lieu_organisation INTEGER REFERENCES Lieu (pk_lieu));
INSERT INTO organisation (pk_organisation, nom, definition, Fk_lieu_organisation) VALUES (1, 'soci�t� des antiquaires de Zurich', 'soci�t� historique', 10);
INSERT INTO organisation (pk_organisation, nom, definition, Fk_lieu_organisation) VALUES (2, 'universit� de Neuch�tel', 'universit� publique', 15);
INSERT INTO organisation (pk_organisation, nom, definition, Fk_lieu_organisation) VALUES (3, 'service arch�ologique du canton de Neuch�tel', 'service publique', 16);
INSERT INTO organisation (pk_organisation, nom, definition, Fk_lieu_organisation) VALUES (4, 'mus�e arch�ologique de la ville de Neuch�tel', 'mus�e d''arch�ologie ', 15);
INSERT INTO organisation (pk_organisation, nom, definition, Fk_lieu_organisation) VALUES (5, 'inventaire des trouvailles mon�taires suisses', 'soci�t� historique', 25);

-- Table : ouvrage
CREATE TABLE ouvrage (pk_ouvrage INTEGER PRIMARY KEY, nom STRING, "date_parution " VARCHAR, fk_lieu_publication_ouvrage INTEGER REFERENCES Lieu (pk_lieu), fk_auteur INTEGER REFERENCES personne (pk_personne), fk_editeur INTEGER REFERENCES organisation (pk_organisation));
INSERT INTO ouvrage (pk_ouvrage, nom, "date_parution ", fk_lieu_publication_ouvrage, fk_auteur, fk_editeur) VALUES (1, 'Die Keltischen M�nzen der Schwiez : katalog und Auswertung', '2015', 25, 6, 5);
INSERT INTO ouvrage (pk_ouvrage, nom, "date_parution ", fk_lieu_publication_ouvrage, fk_auteur, fk_editeur) VALUES (2, 'd�couvertes mon�taires du canton de Neuchat�l', '2005', 15, 7, 3);

-- Table : personne
CREATE TABLE personne (pk_personne INTEGER PRIMARY KEY, nom TEXT, genre TEXT);
INSERT INTO personne (pk_personne, nom, genre) VALUES (1, 'Jean Flutch', 'M');
INSERT INTO personne (pk_personne, nom, genre) VALUES (2, 'Andr� Guillemot', 'M');
INSERT INTO personne (pk_personne, nom, genre) VALUES (3, 'Marc Richner', 'M');
INSERT INTO personne (pk_personne, nom, genre) VALUES (4, 'Marie Martre', 'F');
INSERT INTO personne (pk_personne, nom, genre) VALUES (5, 'Louis Keller', 'M');
INSERT INTO personne (pk_personne, nom, genre) VALUES (6, 'Henri Montandon', 'M');
INSERT INTO personne (pk_personne, nom, genre) VALUES (7, 'Marc-Antoine Kaeser', 'M');

-- Table : residence
CREATE TABLE residence (pk_residence INTEGER PRIMARY KEY, date_debut_residence VARCHAR, date_fin_residence VARCHAR, fk_personne_residente INTEGER REFERENCES personne (pk_personne), fk_lieu_residence INTEGER REFERENCES Lieu (pk_lieu));
INSERT INTO residence (pk_residence, date_debut_residence, date_fin_residence, fk_personne_residente, fk_lieu_residence) VALUES (1, '1936-04', '1955-06', 3, 10);
INSERT INTO residence (pk_residence, date_debut_residence, date_fin_residence, fk_personne_residente, fk_lieu_residence) VALUES (2, '1955-06', '1998-07-12', 3, 25);
INSERT INTO residence (pk_residence, date_debut_residence, date_fin_residence, fk_personne_residente, fk_lieu_residence) VALUES (3, '1854', '1922', 1, 16);
INSERT INTO residence (pk_residence, date_debut_residence, date_fin_residence, fk_personne_residente, fk_lieu_residence) VALUES (4, NULL, '1877', 2, 9);
INSERT INTO residence (pk_residence, date_debut_residence, date_fin_residence, fk_personne_residente, fk_lieu_residence) VALUES (5, '1964-08-14', '1982', 4, 11);
INSERT INTO residence (pk_residence, date_debut_residence, date_fin_residence, fk_personne_residente, fk_lieu_residence) VALUES (6, '1982', NULL, 4, 15);
INSERT INTO residence (pk_residence, date_debut_residence, date_fin_residence, fk_personne_residente, fk_lieu_residence) VALUES (7, '2006', NULL, 5, 13);
INSERT INTO residence (pk_residence, date_debut_residence, date_fin_residence, fk_personne_residente, fk_lieu_residence) VALUES (8, '1986', '2005', 6, 16);
INSERT INTO residence (pk_residence, date_debut_residence, date_fin_residence, fk_personne_residente, fk_lieu_residence) VALUES (9, '2005', NULL, 6, 15);

-- Table : trouvaille
CREATE TABLE trouvaille (pk_trouvaille INTEGER PRIMARY KEY, contexte TEXT, nature TEXT, date_decouverte VARCHAR, fk_lieu_trouvaille INTEGER REFERENCES Lieu (pk_lieu), d�couvreur INTEGER REFERENCES personne (pk_personne));
INSERT INTO trouvaille (pk_trouvaille, contexte, nature, date_decouverte, fk_lieu_trouvaille, d�couvreur) VALUES (1, 'Fouilles arch�ologiques', 'tr�sor ', '2007-06-12', 5, 4);
INSERT INTO trouvaille (pk_trouvaille, contexte, nature, date_decouverte, fk_lieu_trouvaille, d�couvreur) VALUES (2, 'Fouilles arch�ologiques', 'trouvaille isol�e', '1989-04-22', 2, 4);
INSERT INTO trouvaille (pk_trouvaille, contexte, nature, date_decouverte, fk_lieu_trouvaille, d�couvreur) VALUES (3, 'prospection arch�ologique', 'trouvaille isol�e', '1961-02-01', 3, 3);
INSERT INTO trouvaille (pk_trouvaille, contexte, nature, date_decouverte, fk_lieu_trouvaille, d�couvreur) VALUES (4, 'prospection amateur', 'trouvaille isol�e', '1834', 4, 2);
INSERT INTO trouvaille (pk_trouvaille, contexte, nature, date_decouverte, fk_lieu_trouvaille, d�couvreur) VALUES (5, 'p�che aux antiquit�s', 'trouvaille isol�e', '1889-03', 1, 1);

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
