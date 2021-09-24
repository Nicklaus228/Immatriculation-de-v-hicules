CREATE PROCEDURE dbo.insertVendre
@acheteur INT,
@vendeur INT,
@vehicule INT,
@prix INT
AS
DECLARE
@garageCountAcheteur int, 
@personneCountAcheteur int, 
@ConstructeurCountAcheteur int,
@garageCountVendeur int, 
@personneCountVendeur int, 
@ConstructeurCountVendeur int

SET @garageCountAcheteur = (SELECT COUNT(ID_proprietaire) FROM GARAGE WHERE ID_proprietaire = @acheteur)
SET @personneCountAcheteur = (SELECT COUNT(ID_proprietaire) FROM PERSONNE_PRIVEE WHERE ID_proprietaire = @acheteur)
SET @ConstructeurCountAcheteur = (SELECT COUNT(ID_proprietaire) FROM CONSTRUCTEUR WHERE ID_proprietaire = @acheteur)
SET @garageCountVendeur = (SELECT COUNT(ID_proprietaire) FROM GARAGE WHERE ID_proprietaire = @vendeur)
SET @personneCountVendeur = (SELECT COUNT(ID_proprietaire) FROM PERSONNE_PRIVEE WHERE ID_proprietaire = @vendeur)
SET @ConstructeurCountVendeur = (SELECT COUNT(ID_proprietaire) FROM CONSTRUCTEUR WHERE ID_proprietaire = @vendeur)

PRINT @personneCountAcheteur
PRINT @garageCountAcheteur
PRINT @ConstructeurCountAcheteur


BEGIN TRY
    BEGIN TRANSACTION
		
		IF (((@ConstructeurCountVendeur  > 0) AND (@personneCountAcheteur > 0)) 
		OR ((@garageCountVendeur  > 0) AND (@ConstructeurCountAcheteur > 0)) 
		OR ((@personneCountVendeur  > 0) AND (@ConstructeurCountAcheteur > 0)))
		BEGIN	
			PRINT 'rejeter'
		END
		ELSE
		BEGIN
			UPDATE VEHICULE SET ID_proprietaire=@acheteur WHERE ID_vehicule=@vehicule;

			INSERT INTO VENDRE(ID_Acheteur, ID_Vendeur, ID_vehicule, dateTransaction, coutTransaction)
			VALUES 	(@acheteur, @vendeur, @vehicule, GETDATE(), @prix)
		END

    COMMIT
END TRY
BEGIN CATCH
	IF @@TRANCOUNT > 0
        ROLLBACK
END CATCH