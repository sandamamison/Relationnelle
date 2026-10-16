SELECT * FROM plat ORDER BY prix DESC;

SELECT categorie.libelle, COUNT(plat.id_plat) AS nombre_plats
FROM categorie
JOIN plat ON categorie.id_categorie = plat.id_categorie
GROUP BY categorie.libelle;