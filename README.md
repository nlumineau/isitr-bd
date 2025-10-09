# ISITR : Bases de Données

 Projet permettant la création d'un container Docker contenant une instance de Postgresql.

## À propos de la Base de Données
La base de données `formation` permet à l'utilisateur `etudiant` de se connecter au schéma `cinema` contenant des instances d'artistes, de films, de rôle des artistes dans des films, des cinémas, des salles et des séances.


## À propos du container Docker

### Récupération du dépôt

```sh
git clone https://github.com/javieraespinosa/ggmd-tp1.git
```

## Lancement du serveur de base de données

```docker
docker compose up
```

## Connexion au serveur

À exécuter dans un **nouveau terminal** (autre que le précédent)
 
```sh
	docker exec -it postgres-db psql -U etudiant -d formation 
```

Si vous avez besoin de vous connecter en tant qu'administrateur de la BD :
 
```sh
docker exec -it postgres-db psql -U postgres
```

## Interrogation


```sql
SET search_path TO cinema;      -- Pour se connecter au schéma 'cinema'
\dt                             -- Pour lister les tables 
SELECT * FROM artiste LIMIT 10; -- Pour afficher 10 artistes parmi les artistes stockés dans la table 'artiste'
```




# Arrêt du container et suppression des volumes
```docker
docker compose down -v
```
 