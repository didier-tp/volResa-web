INSERT INTO client(client, id, c_rue, c_cp, c_pays, c_ville, email, nom, prenom, titre, siret, version) 
   VALUES ('physique', 1, 'rue rougement', '75009', 'france', 'paris', 'oliviergazlan@ajcformation.com', 'gazlan', 'olivier', null, null, 0),
	('moral', 2, '6 place iris', '92400', 'france', 'courbevoie', 'sopra@soprasteria.com', 'SopraSteria', null, 'SAS', '06548698958', 0);

INSERT INTO passager(id, p_rue, p_cp, p_pays, p_ville, nom, prenom, version) 
   VALUES (1, 'rue de etang', '78480', 'france', 'vernuil', 'leroy', 'jeremy', 0),
	(2, 'elysee', '75000', 'france', 'paris', 'macron', 'emmanuel', 0),
	(3, 'rue rougement', '75009', 'france', 'paris', 'gazlan', 'olivier', 0);
   
INSERT INTO reservations(id, numero, client_id, passager_id, version) 
   VALUES ( 1, 256, 2, 1, 0),
	( 2, 342, 2, 2, 0),
	( 3, 1002, 1, 3, 0);
   
