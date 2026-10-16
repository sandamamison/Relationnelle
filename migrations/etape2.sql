CREATE TABLE categorie(
    id_categorie SERIAL PRIMARY KEY,
    libelle VARCHAR(255) NOT NULL)
;

INSERT INTO categorie(libelle) VALUES
('Plat malagasy'),
('Plat chinois'),
('Soupe'),
('Dessert et gouter'),
('Boisson');

ALTER TABLE plat ADD COLUMN id_categorie INT,
ADD CONSTRAINT fk_id_categorie FOREIGN KEY (id_categorie) REFERENCES categorie(id_categorie);

UPDATE plat SET id_categorie = 1 WHERE id_plat = 1;
UPDATE plat SET id_categorie = 1 WHERE id_plat = 2;
UPDATE plat SET id_categorie = 1 WHERE id_plat = 3;
UPDATE plat SET id_categorie = 2 WHERE id_plat = 4;
UPDATE plat SET id_categorie = 3 WHERE id_plat = 5;
UPDATE plat SET id_categorie = 4 WHERE id_plat = 6;
UPDATE plat SET id_categorie = 5 WHERE id_plat = 7;