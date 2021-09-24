CREATE PROCEDURE dbo.insertVehicule
@ID_vehicule int,
@ID_proprietaire int,
@ID_modele int,
@anneeDeFabrication varchar(5) ,
@couleurVehicule varchar(12),
@numPlaqueImmatriculation varchar(10)
AS

Begin

INSERT INTO VEHICULE (ID_vehicule, ID_proprietaire, ID_modele,anneeDeFabrication, couleurVehicule, numPlaqueImmatriculation)
VALUES(@ID_vehicule, @ID_proprietaire, @ID_modele, @anneeDeFabrication, @couleurVehicule, @numPlaqueImmatriculation)

END

 