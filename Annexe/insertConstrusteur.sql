CREATE PROCEDURE dbo.insertConstructeur
@ID_construteur int,
@ID_proprietaire int,
@nomConstructeur varchar(25),
@numEntrepriseConstructeur varchar(10),
@nomRue varchar(20),
@numCivic smallint,
@nomVille varchar(25),
@codePostale char(7),
@nomProvince char(2),
@pays varchar(10),
@numTelephone varchar(13)
AS

Begin

INSERT INTO PROPRIETAIRE(ID_proprietaire, nomRue, numCivic, nomVille, codePostale, nomProvince, pays, numTelephone)
VALUES (@ID_proprietaire, @nomRue, @numCivic, @nomVille, @codePostale, @nomProvince, @pays, @numTelephone)

INSERT INTO CONSTRUCTEUR (ID_constructeur, ID_proprietaire, nomConstructeur,numEntrepriseConstructeur)
VALUES(@ID_construteur, @ID_proprietaire, @nomConstructeur, @numEntrepriseConstructeur)

END