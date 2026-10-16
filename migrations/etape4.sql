CREATE TABLE clients(
    id_client SERIAL PRIMARY KEY,
    nom VARCHAR(255) NOT NULL
);

ALTER TABLE commande
ADD COLUMN id_client INT REFERENCES clients(id_client);

ALTER TABLE commande DROP COLUMN id_client;

ALTER TABLE commande ADD COLUMN id_client INT;

ALTER TABLE commande ADD CONSTRAINT fk_client FOREIGN KEY (id_client) REFERENCES clients(id_client);

INSERT INTO clients (nom) VALUES ('Jean');
INSERT INTO clients (nom) VALUES ('Marie');


UPDATE commande SET id_client = 1 WHERE id_commande = 1;
UPDATE commande SET id_client = 2 WHERE id_commande = 2;