CREATE VIEW VW_Garage AS
	SELECT g.ID_garage, g.ID_proprietaire, g.nomGarage, p.nomRue, p.numCivic, p.nomVille, p.codePostale, p.nomProvince,  p.pays, p.numtelephone
	FROM GARAGE g
	INNER JOIN PROPRIETAIRE p
	ON g.ID_proprietaire = p.ID_proprietaire
	GROUP BY g.nomGarage, g.ID_garage, g.ID_proprietaire, p.nomRue, p.numCivic, p.nomVille, p.codePostale, p.nomProvince,  p.pays, p.numtelephone;