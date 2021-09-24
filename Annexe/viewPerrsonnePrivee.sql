CREATE VIEW VW_PersonnePrivee AS
	SELECT pp.ID_personnesPrivee, pp.ID_proprietaire, pp.nomPersonnePrivee, pp.prenomPersonnePrivee, p.nomRue, p.numCivic, p.nomVille, p.codePostale, p.nomProvince,  p.pays, p.numtelephone
	FROM PERSONNE_PRIVEE pp
	INNER JOIN PROPRIETAIRE p
	ON pp.ID_proprietaire = p.ID_proprietaire
	GROUP BY pp.nomPersonnePrivee, pp.prenomPersonnePrivee,  pp.ID_personnesPrivee, pp.ID_proprietaire, p.nomRue, p.numCivic, p.nomVille, p.codePostale, p.nomProvince,  p.pays, p.numtelephone;