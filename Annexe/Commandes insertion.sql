INSERT INTO  PROPRIETAIRE (ID_proprietaire, nomRue, numCivic, nomVille , codePostale, nomProvince , pays , numTelephone)

VALUES(1, 'St-Joseph', 551, 'Gatineau', 'J8E 1W3', 'QC', 'Canada', '819 555-1111'),
(2, 'Des sapins', 222, 'Gatineau', 'J8E 5H7', 'QC', 'Canada', '819 555-2222'),
(3, 'St-Laurent', 1725, 'Montréal', 'T8B 0P8', 'QC', 'Canada', '514 555-2323'),
(4, 'St-Joseph', 233, 'Gatineau', 'J8E 8G5', 'QC', 'Canada', '819 555-1245'),
(5, 'Principale', 123, 'Maniwaki', 'J9E 1B3', 'QC', 'Canada', '819 555-5463'),
(6, 'Maloney', 1532, 'Gatineau', 'J8E 9K6', 'QC', 'Canada', '819 555-5645'),
(7, 'Isabelle', 5851, 'Montréal', 'T8B 5K6', 'QC', 'Canada', '514 555-1111'),
(8, 'Rideau', 2251, 'Ottawa', 'B7T 3E4', 'ON', 'Canada', '613 555-4587'),
(9, 'St-Joseph', 551, 'Gatineau', 'J8E 0H8', 'QC', 'Canada', '819 555-1111'),
(10, 'Kazaki', 5341, 'Gatineau', 'ZZZ 453', 'QC', 'Canada', '999 555-8427'),
(11, 'Maloney', 551, 'Gatineau', 'J8E 9K6', 'QC', 'Canada', '819 555-1234'),
(12, '13 avenue', 5551, 'Medecin Hat', 'K9M 1C0', 'AB', 'Canada', '845 555-1111'),
(12, 'Sunny', 5251, 'Vancouver', 'H7Y 0J7', 'BC', 'Canada', '689 555-1311'),
(13, 'Rang 6', 133, 'Val-des-Monts', 'J8N 8J0', 'QC', 'Canada', '819 555-9374'),
(15, 'St-Joseph', 5051, 'Gatineau', 'J8E 0N6', 'QC', 'Canada', '819 555-5283'),
(16, 'Sapins', 22, 'Gatineau', 'J8E 5H7', 'QC', 'Canada', '819 555-2322'),
(17, 'St-Laurent', 175, 'Montréal', 'T8B 0P8', 'QC', 'Canada', '514 455-2323'),
(18, 'St-Joseph', 23, 'Gatineau', 'J8E 8G5', 'QC', 'Canada', '819 225-1245'),
(19, 'Tim', 1283, 'Maniwaki', 'J9E 1B3', 'QC', 'Canada', '819 005-5463'),
(20, 'Bouc', 153, 'Gatineau', 'J8E 9K6', 'QC', 'Canada', '819 355-5645'),
(21, 'Juliette', 585, 'Montréal', 'T8B 5K6', 'QC', 'Canada', '514 645-1111'),
(22, 'Chat', 251, 'Ottawa', 'B7T 3E4', 'ON', 'Canada', '613 525-4587'),
(23, 'St-Partique', 51, 'Gatineau', 'J8E 0H8', 'QC', 'Canada', '819 115-1111'),
(24, 'Riel', 51, 'Kyoto', 'ZZZ 453', 'QC', 'Canada', '999 577-8427'),
(25, 'Scor', 55, 'Gatineau', 'J8E 9K6', 'QC', 'Canada', '613 555-1234'),
(26, '13 Blam', 51, 'Medecin Hat', 'K8M 1X0', 'AB', 'Canada', '514 555-1111'),
(27, 'Sunny', 521, 'Vancouver', 'H4Y 0J7', 'BC', 'Canada', '689 555-1311'),
(28, 'Rang 6', 133, 'Val-des-Monts', 'H3N 8J0', 'QC', 'Canada', '819 555-9374'),
(29, 'St-Joseph', 531, 'Gatineau', 'J3E 0N6', 'QC', 'Canada', '819 555-5283'),
(30, 'St-Joseph', 51, 'Gatineau', 'J8E 0x6', 'QC', 'Canada', '819 555-5266');




INSERT INTO  PERSONNE_PRIVEE (ID_personnesPrivee, ID_proprietaire, nomPersonnePrivee, prenomPersonnePrivee, dateNaissancePersonnePrivee, taillePersonnePrivee, numPermisDeConduire, sexPersonnePrivee)
VALUES (1, 1, 'Beaudin', 'Jean-Philippe','1986-12-24', 175, 'H000-241286-00','M'),
(2, 2, 'Landry', 'Mathieu', '1980-12-14', 160, 'L000-141280-00','M'),
(3, 3, 'Dubé', 'Marc', '1991-01-24', 160, 'K000-240191-01','M'),
(4, 4, 'Moko', 'Freddy', '1973-05-13', 185, 'V000-130573-00','M'),
(5, 13, 'Madjri', 'Cornelus', '1993-02-14', 165, 'M100-140293-08', 'M'),
(6, 16, 'Ali', 'Maxime','1989-12-24', 185, 'P000-241289-00','M'),
(7, 17, 'Bonjet', 'Louise', '1990-02-01', 160, 'L000-010290-00','F'),
(8, 18, 'Dubé', 'Simon', '1993-12-24', 162, 'H000-241293-01','M'),
(9, 19, 'Deschan', 'Julien', '1975-05-04', 155, 'Z000-140575-00','M'),
(10, 20, 'Moussi', 'Jean', '1972-05-14', 165, 'V100-140572-08', 'M');


INSERT INTO GARAGE (ID_garage, ID_proprietaire, nomGarage, numEntrepriseGarage)
VALUES (1, 5, 'Honda Gatineau', 10),
(2, 6, 'Mega', 23),
(3, 7, 'Delary', 13),
(4, 8, 'H. Gregoire', 16),
(5, 14, 'Ford 4 anyone', 19),
(6, 26, 'Toyota Gatineau', 20),
(7, 27, 'Luxure', 25),
(8, 28, 'Mazda Gatineau', 50),
(9, 29, 'H. Almey', 55),
(10, 30, 'For ever', 60);




INSERT INTO CONSTRUCTEUR (ID_constructeur, ID_proprietaire, nomConstructeur, numEntrepriseConstructeur)
VALUES (1, 9, 'Toyota', 30),
(2, 10, 'Honda', 15),
(3, 11, 'Ford', 88),
(4, 12, 'BMW', 77),
(5, 15, 'Hyundai', 70),
(6, 21, 'Nissan', 30),
(7, 22, 'Volkswagen', 15),
(8, 23, 'Mitsubishi', 88),
(9, 24, 'Mazda', 77),
(10, 25, 'Mercedes-Benz', 70);



INSERT INTO MODELE (ID_modele, ID_constructeur, nomModel, marque)
VALUES (1, 1, 'Corola', 'Toyota'),
(2, 2, 'Sport', 'Honda'),
(3, 4, 'Lux', 'BMW'),
(4, 5, 'Coupe', 'Hyundai'),
(5, 3, 'Alex', 'Ford'),
(6, 1, 'Civic', 'Toyota'),
(7, 7, 'Golf', 'Volkswagen'),
(8, 9, '3 Sport', 'Mazda'),
(9, 8, 'Coupe', 'Mitsubishi'),
(10, 10, '350', 'Mercedes-Benz');




INSERT INTO VEHICULE (ID_vehicule, ID_proprietaire, ID_modele, anneeDeFabrication, couleurVehicule ,numPlaqueImmatriculation)
VALUES (1, 1, 1, '2005', 'Rouge', 'J7L 99A'),
(2, 9, 3, '2000', 'Vert', 'F7L 89A'),
(3, 7, 5, '1998', 'Orange', 'H7L 99B'),
(4, 13, 2, '2015', 'Noir', 'JUL 99A'),
(5, 15, 2, '2005', 'Noir', 'S7L 99A'),
(6, 14, 1, '2005', 'Rouge', 'J7L 99H'),
(7, 2, 3, '2000', 'Jaune', 'Y7L 92Y'),
(8, 3, 5, '1998', 'Bleu', 'H7L 99A'),
(9, 5, 2, '2015', 'Rouge', 'X7L 99K'),
(10, 6, 2, '2005', 'Noir', 'J5L 99B');




INSERT INTO  VENDRE (ID_Acheteur, ID_Vendeur, ID_vehicule, dateTransaction, coutTransaction)
VALUES(1, 5, 1,'1986-12-24', 3000.50),
(7, 6, 10,'2005-01-02', 15000.00),
(27, 22, 5,'2016-06-09', 25000),
(4, 28, 2,'1900-05-16', 12800.55),
(30, 11, 3,'2000-03-24', 20000),
(30, 25, 4,'2003-01-24', 30000),
(17, 20, 7,'2010-12-24', 40000),
(18, 19, 8,'2011-09-24', 35000),
(3, 5, 9,'2009-06-24', 45000),
(16, 14, 6,'1900-05-24', 55500);

