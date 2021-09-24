CREATE PROCEDURE dbo.insertModele
@ID_modele int,
@ID_constructeur int,
@nomModele varchar(20),
@marque varchar(20)
AS

Begin

INSERT INTO MODELE (ID_modele, ID_constructeur, nomModel, marque)
VALUES(@ID_modele, @ID_constructeur, @nomModele, @marque )

END

 