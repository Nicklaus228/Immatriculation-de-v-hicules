CREATE VIEW VW_Constructeur AS
	SELECT c.ID_constructeur, c.ID_proprietaire, c.nomConstructeur, c.numEntrepriseConstructeur, p.nomRue, p.numCivic, p.nomVille, p.codePostale, p.nomProvince,  p.pays, p.numtelephone
	FROM CONSTRUCTEUR c
	INNER JOIN PROPRIETAIRE p
	ON c.ID_proprietaire = p.ID_proprietaire
	GROUP BY c.nomConstructeur, c.ID_constructeur, c.ID_proprietaire, c.numEntrepriseConstructeur, p.nomRue, p.numCivic, p.nomVille, p.codePostale, p.nomProvince,  p.pays, p.numtelephone;