# IRISTR : Bases de Données 
## TP 1 :  Premières requêtes SQL

---

#### Objectifs du TP : 
  - maîtriser la rédaction de requêtes contenant des sous-requêtes.  
  - maîtriser la rédaction de requêtes combinant plusieurs requêtes *via* des opérateurs ensemblistes.
---

### Environnement de travail

Ce TP se déroule dans le même environnement que le TP précédent.

### À propos des données

Pour rappel, on considère le modèle relationnel suivant :

- artiste(<u>ida</u>, nom, prenom, annee_nais)<br>
- film(<u>idf</u>, titre, annee, \#id_realisateur)<br>
- joue(<u>\#ida,\#idf</u>, nom_role)<br>
- cinema(<u>idc</u>, nom, adresse, ville)<br>
- salle(<u>\#idc, num_salle</u>, est_climatise, capacite)<br>
- seance(<u>\#idf, \#(idc, num_salle), annee, semaine)</u><br>	

Le jeu de données du premier TP qui comprenait les artistes et les films, est complété par des informations portant sur les rôles joués par les acteurs/actrices dans les films. Ainsi la relation *joue* permet de mettre en lien un identifiant d'artiste *ida* avec un identifiant de film *idf* et on dispose du nom du rôle de l'artiste dans le film. De plus, on dispose d'informations sur les cinémas de différentes villes dans la relation *cinema*. Les cinémas ont une adresse et se trouvent dans une ville. Le cinéma est compsé de salles ayant un numéro (relatif à chaque cinéma). Pour chaque salle, on sait si elle est climatisée et on connaît sa capacité en nombre de sièges. Pour finir, on stocke les informations sur les projections dans la table *seance*, permettant de savoir quel film d'identifiant *idf* est projeté dans quelle salle *(idc, num_salle)* pendant quelle année et quelle semaine (les semaines sont numéroté de 1 à 52 ou 53 selon l'année).  

### Exercice 1 : requêtes SQL


Écrire les requêtes SQL suivantes:


<a name="Q1"></a>

 #### 1. Nom et prénom des acteurs/actrices. Le résultat sera affiché selon l’ordre lexicographique sur le nom, puis sur le prénom.
 - a. <u>version SANS sous-requête</u>

 - b. <u>version AVEC sous-requête non corrélée</u>	

 - c. <u>version AVEC sous-requête corrélée</u>	


[Voir le résultat attendu](./resultats_attendus/Q1.md)


<a name="Q2"></a>

 #### 2. Les films projetés au moins une fois dans une salle de capacité supérieure ou égale à 100 places dans un cinéma marseillais entre 1991 et 2015. Le résultat sera trié par année de sortie selon l'ordre chronologique. 

 - a. <u>version SANS sous-requête</u>

 - b. <u>version SANS jointure et AVEC des sous-requêtes</u>


[Voir le résultat attendu](./resultats_attendus/Q2.md)


<a name="Q3"></a>

 #### 3. Titre des films dont le réalisateur est né avant 1940 ou dont au moins une actrice joue le rôle de 'Chani'. Les solutions proposées **ne devront pas** comporter de sous-requêtes.

 - a. <u>version avec doublons autorisés</u> ([Voir le résultat attendu](./resultats_attendus/Q3a.md))

 - b. <u>version sans doublons</u> ([Voir le résultat attendu](./resultats_attendus/Q3b.md))

	

<a name="Q4"></a>

 #### 4. L'identifiant et le nom des cinémas qui n'ont aucune salle climatisée. 

 - a. <u>version avec combinaison de requêtes</u>

 - b. <u>version avec sous-requête</u>


[Voir le résultat attendu](./resultats_attendus/Q5.md)


<a name="Q5"></a>

 #### 5. Les noms de rôle qui apparaissent dans <u>au moins deux</u> films différents. 

 - a. <u>version sans sous-requête</u>

 - b. <u>version avec sous-requête corrélée</u>


[Voir le résultat attendu](./resultats_attendus/Q5.md)


<a name="Q6"></a>

#### 6. Les noms de rôle qui apparaissent dans <u>exactement dans deux</u> films différents. 

 - a. <u>version avec une combinaison de requêtes</u>

 - b. <u>version avec sous-requête</u>


[Voir le résultat attendu](./resultats_attendus/Q7.md)


<a name="Q7"></a>

#### 7. Identifiant et titre des films projetés à la fois à Paris, Lyon et Marseille (quelque soit l'arrondissement). 


[Voir le résultat attendu](./resultats_attendus/Q7.md)


<a name="Q8"></a> 

#### 8. Nom et année de naissance de l’artiste le plus vieux de la base de données.

 - a. <u>version avec un ALL</u>

 - b. <u>version avec un EXISTS</u> 

[Voir le résultat attendu](./resultats_attendus/Q8.md)



<a name="Q9"></a>

#### 9. Le nom et la ville des cinémas qui ont projeté les 3 films sorties le plus récemment. On cherchera dans un premier temps à construire la requête permettant de sélectionner les 3 années les plus récentes où un film est sorti  (un tri par ordre décroissant associé une limitation 'LIMIT' devrait être utile). Pour ensuite, identifier les films sortis durant ces 3 années, pour ensuite récupérer les cinéma qui ont projeté ces films.


[Voir le résultat attendu](./resultats_attendus/Q9.md)


<a name="Q10"></a>

#### 10. Noms et prénoms des acteurs ayant joué dans tous les films d'un réalisateur dont on précisera le nom et le prénom. Pour faciliter l'affichage, on concaténera le nom et le prénom des acteurs sous le nom 'acteur' et le nom et le prénom des réalisateurs sous le nom 'realisateur'. La concaténation en SQL peut se faire via la fonction [CONCAT()](https://mariadb.com/docs/server/ref/mdb/functions/CONCAT/)
 


[Voir le résultat attendu](./resultats_attendus/Q10.md)



### Exercice 2 : commandes SQL

 
<a name="Q11"></a>

#### 1.  Ajouter l’artiste Jean DUJARDIN avec l'identifiant 40.

<a name="Q12"></a> 

 #### 2. Modifier l’artiste d'identifiant 40 pour lui affecter une année de naissance : 1972.

<a name="Q13"></a> 
 
 #### 3. Modifier la table salle pour ajouter l'attribut 'possible3D' de type booléen.

<a name="Q14"></a>

 #### 4.Supprimer l’artiste d'identifiant 40.
