CREATE DATABASE BD_Saaq;


CREATE TABLE PROPRIETAIRE( 
    ID_proprietaire  INT CONSTRAINT PK_Proprietaire PRIMARY KEY(ID_proprietaire), 
    nomRue VARCHAR (20)           	NOT NULL, 
    numCivic SMALLINT               NOT NULL,
    nomVille VARCHAR (25)        	NOT NULL, 
    codePostale CHAR (7)         	NOT NULL,   
    nomProvince CHAR (2)  		NOT NULL, 
    pays VARCHAR (10)             		NOT NULL,
    numTelephone  VARCHAR (13)      NOT NULL 
);

CREATE TABLE PERSONNE_PRIVEE( 
    ID_personnesPrivee  INT CONSTRAINT PK_PersonnesPrivee PRIMARY KEY (ID_personnesPrivee), 
    ID_proprietaire   INT CONSTRAINT FK_Proprietaire FOREIGN KEY (ID_proprietaire) REFERENCES PROPRIETAIRE(ID_proprietaire), 
    nomPersonnePrivee VARCHAR (25) 	NOT NULL, 
    prenomPersonnePrivee VARCHAR (25) NOT NULL,
    dateNaissancePersonnePrivee DATE NOT NULL,
    taillePersonnePrivee INT NOT NULL,
	numPermisDeConduire VARCHAR(15) NOT NULL,
    sexPersonnePrivee CHAR(1) NOT NULL

);


CREATE TABLE GARAGE( 
    ID_garage  INT CONSTRAINT PK_Garage PRIMARY KEY (ID_garage), 
    ID_proprietaire  INT CONSTRAINT  FK2_roprietaire FOREIGN KEY  (ID_proprietaire) REFERENCES PROPRIETAIRE(ID_proprietaire), 
    nomGarage VARCHAR (25) NOT NULL,
    numEntrepriseGarage VARCHAR (10) NOT NULL
);

CREATE TABLE CONSTRUCTEUR( 
    ID_constructeur  INT CONSTRAINT PK_Contructeur PRIMARY KEY (ID_constructeur), 
    ID_proprietaire  INT CONSTRAINT  FK3_Proprietaire FOREIGN KEY  (ID_proprietaire) REFERENCES PROPRIETAIRE(ID_proprietaire),
    nomConstructeur VARCHAR (25) NOT NULL,
    numEntrepriseConstructeur VARCHAR (10) NOT NULL 
);

CREATE TABLE MODELE( 
    ID_modele  INT CONSTRAINT PK_Model PRIMARY KEY(ID_modele), 
    ID_constructeur   INT CONSTRAINT FK_Constructeur FOREIGN KEY (ID_constructeur) REFERENCES CONSTRUCTEUR(ID_constructeur),
    nomModel VARCHAR (20)      		NOT NULL,
    marque VARCHAR (20)     		NOT NULL

);


CREATE TABLE VEHICULE( 
    ID_vehicule  INT CONSTRAINT PK_Vehicule PRIMARY KEY(ID_vehicule), 
    ID_proprietaire   INT CONSTRAINT FK4_Proprietaire FOREIGN KEY (ID_proprietaire) REFERENCES PROPRIETAIRE(ID_proprietaire),
    ID_modele  INT CONSTRAINT FK_Vehicule_Modele FOREIGN KEY(ID_modele) REFERENCES MODELE(ID_modele),
    anneeDeFabrication DATE NOT NULL,
    couleurVehicule VARCHAR (15) NOT NULL,
	numPlaqueImmatriculation  VARCHAR(10)
);  


CREATE TABLE VENDRE(
  ID_vendre INT CONSTRAINT PK_transaction PRIMARY KEY (ID_vendre) IDENTITY(1,1),
  ID_Acheteur INT CONSTRAINT FK5_Proprietaire FOREIGN KEY (ID_Acheteur) REFERENCES PROPRIETAIRE(ID_proprietaire),
  ID_Vendeur  INT CONSTRAINT FK6_Proprietaire FOREIGN KEY (ID_Vendeur) REFERENCES PROPRIETAIRE(ID_proprietaire),
  ID_vehicule  INT CONSTRAINT ID_vehicule FOREIGN KEY (ID_vehicule) REFERENCES VEHICULE(ID_vehicule),
  dateTransaction DATETIME NOT NULL DEFAULT GETDATE(),
  coutTransaction DECIMAL(8,2) NOT NULL
);

/*

----------------------------------------------------
// A NE PAS CONSIDERER

CREATE TABLE PLAQUES_IMMATRICULATION( 
    ID_plaqueImmatriculation  INT CONSTRAINT PK_PlaqueImmatriculation PRIMARY KEY(ID_plaqueImmatriculation), 
    ID_categoriePlaque  INT CONSTRAINT FK_CategoriePlaque FOREIGN KEY(ID_categoriePlaque) REFERENCES CATEGORIES_PLAQUE_IMMATRICULATION(ID_categoriePlaque),
    dateDeRenouvellemment DATETIME     NOT NULL,
    dateDimmatriculatio DATETIME NOT NULL,
    montantRenouvellement SMALLMONEY     NOT NULL

);

CREATE TABLE CATEGORIES_PLAQUE_IMMATRICULATION( 
    ID_categoriePlaque  INT CONSTRAINT PK_CategoriePlaque PRIMARY KEY(ID_categoriePlaque), 
    nomCategoriePlaque VARCHAR(10)   NOT NULL


);


CREATE TABLE PERMIS_DE_CONDUIRE( 
    ID_permisDeConduire  VARCHAR(15) CONSTRAINT PK_PermisDeConduire PRIMARY KEY(ID_permisDeConduire), 
    ID_classePermisDeConduire  INT CONSTRAINT FK_ClassePermisDeConduire FOREIGN KEY(ID_classePermisDeConduire) REFERENCES CLASSE_PERMIS_DE_CONDUIRE(ID_classePermisDeConduire),
    dateDobtention DATE     NOT NULL,
    dateDespiration DATE NOT NULL,
    numDeReference VARCHAR(10)     NOT NULL

);

CREATE TABLE CLASSE_PERMIS_DE_CONDUIRE( 
    ID_classePermisDeConduire  INT CONSTRAINT PK_ClassePermisDeConduire PRIMARY KEY(ID_classePermisDeConduire) IDENTITY(1,1), 
    nomClassePermisDeConduire VARCHAR(2)    NOT NULL


);*/