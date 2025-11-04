# IRISTR : Bases de Données 
## TP 3 :  Sous-requêtes SQL et combinaison de requêtes

---

#### Objectifs du TP : 
 - assimiler le fonctionnement des regroupements en SQL via GROUP BY ,
 - maîtriser la rédaction de requêtes avec des fonctions d’agrégations : min, max, count, sum, avg ...,
 - maîtriser la rédaction de requêtes impliquant une division algébrique.
---

### À propos des données


Le jeu de données pour ce TP est le même que les TP précédents sur la thématique du cinéma.

### Les requêtes

Écrire les requêtes SQL suivantes:


<a name="Q1"></a>

 #### 1. Donner le nombre de cinémas répertoriés dans la base de données. Le résultat s'affichera sous le nom 'nb_cinémas'.


[Voir le résultat attendu](./resultats_attendus/Q1.md)


<a name="Q2"></a>

 #### 2. Pour chaque réalisateur (nom, prénom), donner le nombre de films réalisés. Le résultat calculé s'affichera sous le nom 'nb_films' et la liste retournée sera triée selon ordre décroissant de nombre de films, puis selon l'ordre lexicographique sur le nom de réalisateur.


[Voir le résultat attendu](./resultats_attendus/Q2.md)


<a name="Q3"></a>

 #### 3. Pour chaque nom et ville de cinéma, donner le nombre total de sièges disponibles dans le cinéma. Le résultat calculé s'affichera sous le nom 'nb_total_sieges' et sera trié selon l'ordre décroissant du nombre total de sièges, puis sur le nom selon l'ordre aphabétique. 


[Voir le résultat attendu](./resultats_attendus/Q3.md)
	

<a name="Q4"></a>

 #### 4. Pour chaque nom et ville de cinéma, donner le nombre moyen de sièges par salle dans le cinéma. Le résultat calculé s'affichera sous le nom 'nb_moy_sieges' et on arrondira à 2 chiffres après la virgule (voir fonction [ROUND](https://www.postgresql.org/docs/8.1/functions-math.html)). De plus, le résultat sera trié selon l'ordre décroissant du nombre moyen de sièges, puis sur le nom du cinmé selon l'ordre aphabétique. 
 

[Voir le résultat attendu](./resultats_attendus/Q4.md)


<a name="Q5"></a>

 #### 5. Pour chaque nom et ville de cinéma, donner la capacité de la plus grande salle dans le cinéma. Le résultat calculé s'affichera sous le nom 'nb_max_sieges'.  De plus, le résultat sera trié selon l'ordre décroissant du nombre maximum de sièges, puis sur le nom du cinéma selon l'ordre aphabétique.


[Voir le résultat attendu](./resultats_attendus/Q5.md)


<a name="Q6"></a>

#### 6. Donner le nom et la ville des cinémas ayant au moins deux salles climatisées.


[Voir le résultat attendu](./resultats_attendus/Q6.md)


<a name="Q7"></a>

#### 7. Donner le ou les cinéma ayant la plus grande salle non climatisée.


[Voir le résultat attendu](./resultats_attendus/Q7.md)


<a name="Q8"></a> 

#### 8. Donner le nom des cinémas ayant projeté plus de 5 films différents (au sens strict). Le résultat calculé s'affichera sous le nom 'nb_diff_films'. La liste retournée sera triée selon l'ordre lexicographique. 


[Voir le résultat attendu](./resultats_attendus/Q8.md)



<a name="Q9"></a>

#### 9.  Pour chaque film (titre et année de sortie), donner le nombre de semaines où le film a été projeté (A noter qu'un numéro de semaines est relatif à une année, donc attention à ce que vous dénombrez!). Le résultat calculé s'affichera sous le nom 'nb_semaines'. Le résultat sera trié par ordre décroissant du nombre de semaines calculées.


[Voir le résultat attendu](./resultats_attendus/Q9.md)


<a name="Q10"></a>

#### 10. Donner les films ayant été projetés dans tous les cinémas. 

 - a. version sans 'GROUP BY'

 - b. version avec un 'GROUP BY'


[Voir le résultat attendu](./resultats_attendus/Q10.md)



 


