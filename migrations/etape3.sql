CREATE TABLE commande(
    id_commande SERIAL PRIMARY KEY,
    date_commande DATE NOT NULL
);

CREATE TABLE ligne_commande(
    id_ligne_commande SERIAL PRIMARY KEY,
    id_commande INT REFERENCES commande(id_commande),
    id_plat INT REFERENCES plat(id_plat),
    quantite INT NOT NULL
);
INSERT INTO commande (date_commande) VALUES ('2024-06-01');
INSERT INTO ligne_commande (id_commande, id_plat, quantite) VALUES (1, 1, 2);
INSERT INTO ligne_commande (id_commande, id_plat, quantite) VALUES (1, 2, 1);

INSERT INTO commande (date_commande) VALUES ('2024-06-02');
INSERT INTO ligne_commande (id_commande, id_plat, quantite) VALUES (2, 1, 1);
INSERT INTO ligne_commande (id_commande, id_plat, quantite) VALUES (2, 3, 3);
INSERT INTO ligne_commande (id_commande, id_plat, quantite) VALUES (2, 4, 2);

INSERT INTO commande (date_commande) VALUES ('2024-06-03');
INSERT INTO ligne_commande (id_commande, id_plat, quantite) VALUES (3, 2, 2);
INSERT INTO ligne_commande (id_commande, id_plat, quantite) VALUES (3, 3, 1);
INSERT INTO ligne_commande (id_commande, id_plat, quantite) VALUES (3, 5, 4);