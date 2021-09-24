CREATE PROCEDURE dbo.insertGarage
@ID_garage int,
@ID_proprietaire int,
@nomGarage varchar(25),
@numEntrepriseGarage varchar(10),
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

INSERT INTO GARAGE(ID_garage, ID_proprietaire, nomGarage,numEntrepriseGarage)
VALUES(@ID_garage, @ID_proprietaire, @nomGarage, @numEntrepriseGarage)

END