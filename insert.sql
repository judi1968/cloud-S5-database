-- INSERTION DES DONNES
INSERT INTO client (id_client, name, password, date_creation_compte)
VALUES (generate_client_id(), 'NomClient1', 'MotDePasse123', CURRENT_TIMESTAMP);

INSERT INTO administration (id_admin, autre_colonne)
VALUES (generate_admin_id(), 'valeur_autre_colonne');