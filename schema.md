# Etape 1
plat(**id_plat**, nom_plat, prix) (nouveau)
Pour ce cas je vais choisir INT pour le type de prix
L'identifiant c'est id_plat

# Etape 2
categorie(**id_categorie**, libelle) (nouveau)
plat(**id_plat**, plat, #id_categorie, prix) (modifie)
Parce que si il y a une modification de categorie, toute les plats qui ont cette categorie doivent etre change
Si je change Plat malagasy en Plat malgache je dois changer celui de 3 plats

# Etape 3
commande(**id_commande**, date_commande) (nouveau)
commande_details(**#id_commande**, **#id_plat**, quantite) (nouveau)
La quantite je la place dans la table details de commande

# Etape 4
client(**id_client**, nom) (nouveau)
commande(**id_commande**, date_commande, #id_client?) (modifie)
Non elle ne l'est pas
On utilise Left Join

# Etape 5
serveurs(**id_serveur**, nom) (nouveau)
commande(**id_commande**, date_commande, #id_client?, tab) (modifie)
serveur_commande(**#id_commande**, **id_serveur**) (nouveau)
Parce qu'une table peut avoir pls commande mais une commande ne peut pas avoir plusieurs table
parce que table correspond a table de base donc il va confondre la table de la gargote et la table de base de donnees