CREATE PROCEDURE dbo.insertPersonnePrivee
@ID_personnesPrivee int,
@ID_proprietaire int,
@nomPersonnePrivee varchar(25),
@prenomPersonnePrivee varchar(25),
@dateNaissancePersonnePrivee date,
@taillePersonnePrivee int,
@numPermisDeConduire varchar(15),
@sexPersonnePrivee char(1),
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

INSERT INTO PERSONNE_PRIVEE(ID_personnesPrivee, ID_proprietaire, nomPersonnePrivee, prenomPersonnePrivee, dateNaissancePersonnePrivee, taillePersonnePrivee, numPermisDeConduire, sexPersonnePrivee)
VALUES(@ID_personnesPrivee, @ID_proprietaire, @nomPersonnePrivee, @prenomPersonnePrivee, @dateNaissancePersonnePrivee, @taillePersonnePrivee, @numPermisDeConduire, @sexPersonnePrivee)

END