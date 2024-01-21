-- Création de la séquence
CREATE SEQUENCE administration_id_seq
    INCREMENT 1
    START 1;

CREATE TABLE administration (
    id_admin VARCHAR(10) PRIMARY KEY,
    nom VARCHAR(255),
    password VARCHAR(255)
);

-- Création de la fonction pour générer les identifiants d'administration
CREATE OR REPLACE FUNCTION generate_admin_id()
    RETURNS VARCHAR(10) AS
$$
DECLARE
    new_id VARCHAR(10);
BEGIN
    SELECT 'ADMIN' || LPAD(nextval('administration_id_seq')::TEXT, 4, '0') INTO new_id;
    RETURN new_id;
END;
$$
LANGUAGE plpgsql;



-- client
CREATE SEQUENCE client_id_seq
    INCREMENT 1
    START 1;

-- Création de la table
CREATE TABLE client (
    id_client VARCHAR(11) PRIMARY KEY,
    name VARCHAR(255),
    password VARCHAR(255),
    date_creation_compte timestamp
);

-- Création de la fonction pour générer les identifiants d'administration
CREATE OR REPLACE FUNCTION generate_client_id()
    RETURNS VARCHAR(11) AS
$$
DECLARE
    new_id VARCHAR(11);
BEGIN
    SELECT 'CLIENT' || LPAD(nextval('client_id_seq')::TEXT, 4, '0') INTO new_id;
    RETURN new_id;
END;
$$
LANGUAGE plpgsql;


