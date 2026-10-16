SELECT * FROM plat ORDER BY prix DESC;

SELECT categorie.libelle, COUNT(plat.id_plat) AS nombre_plats
FROM categorie
JOIN plat ON categorie.id_categorie = plat.id_categorie
GROUP BY categorie.libelle;

SELECT commande.id_commande, SUM(ligne_commande.quantite * plat.prix) AS total_commande
FROM commande
JOIN ligne_commande ON commande.id_commande = ligne_commande.id_commande
JOIN plat ON ligne_commande.id_plat = plat.id_plat
GROUP BY commande.id_commande;

SELECT commande.id_commande,CASE WHEN clients.nom IS NULL THEN 'client de passage'
ELSE clients.nom
END AS nom_client
FROM commande
LEFT JOIN clients ON commande.id_client = clients.id_client
;