DROP SCHEMA IF EXISTS cinema;
CREATE SCHEMA cinema;
SET search_path TO cinema;

-- DROP TABLE IF EXISTS Seance;
-- DROP TABLE IF EXISTS  Joue;
-- DROP TABLE IF EXISTS  Film;
-- DROP TABLE IF EXISTS artiste;
-- DROP TABLE IF EXISTS Salle;
-- DROP TABLE IF EXISTS Cinema;


-- BLOC 1 : Création de la table artiste

CREATE TABLE artiste  (ida INTEGER,
		       nom VARCHAR (20),
               	       prenom VARCHAR (15),
		       annee_nais SMALLINT ,
		       PRIMARY KEY (ida));

-- BLOC 2 : Création des n-uplets pour peupler la table artiste

INSERT INTO artiste (ida, nom, prenom, annee_nais)
            VALUES  (1, 'Allen', 'Woody', 1938);
INSERT INTO artiste (ida, nom, prenom, annee_nais)
            VALUES  (2, 'Lynch', 'David', 1946);
INSERT INTO artiste (ida, nom, prenom, annee_nais)
            VALUES  (3, 'Kusturica', 'Emir', 1959);
INSERT INTO artiste (ida, nom, prenom, annee_nais)
            VALUES  (4, 'Lang', 'Fritz', 1899);
INSERT INTO artiste (ida, nom, prenom, annee_nais)
            VALUES  (5, 'Eastwood', 'Clint', 1932);
INSERT INTO artiste (ida, nom, prenom, annee_nais)
            VALUES  (6, 'Hitchcock', 'Alfred', 1898);
INSERT INTO artiste (ida, nom, prenom, annee_nais)
            VALUES  (7, 'Kubrick', 'Stanley', 1935);
INSERT INTO artiste (ida, nom, prenom, annee_nais)
            VALUES  (8, 'Curtis', 'Michael', 1902);
INSERT INTO artiste (ida, nom, prenom, annee_nais)
            VALUES  (9, 'Stewart', 'James', 1911);
INSERT INTO artiste (ida, nom, prenom)
            VALUES  (10,'Novak', 'Kim');
INSERT INTO artiste (ida, nom, prenom, annee_nais)
            VALUES  (11, 'Hunt', 'Greg', 1950);
INSERT INTO artiste (ida, nom, prenom, annee_nais)
            VALUES  (12, 'Tarantino', 'Quentin', 1948);
INSERT INTO artiste (ida, nom, prenom, annee_nais)
            VALUES  (13, 'Willis', 'Bruce', 1952);
INSERT INTO artiste (ida, nom, prenom, annee_nais)
            VALUES  (14, 'Spielberg', 'Steven', 1943);
INSERT INTO artiste (ida, nom, prenom)
            VALUES  (15, 'Hudson', 'Hugh');
INSERT INTO artiste (ida, nom, prenom, annee_nais)
            VALUES  (16, 'Gillian', 'Terry', 1944);
INSERT INTO artiste (ida, nom, prenom, annee_nais)
            VALUES  (17, 'Truffaut', 'Francois', 1938);
INSERT INTO artiste (ida, nom, prenom, annee_nais)
            VALUES  (18, 'Lambert', 'Christophe', 1953);
INSERT INTO artiste (ida, nom, prenom, annee_nais)
            VALUES  (19, 'Keitel', 'Harvey', 1940);
INSERT INTO artiste (ida, nom, prenom, annee_nais)
            VALUES  (20, 'Woo', 'John', 1951);
INSERT INTO artiste (ida, nom, prenom, annee_nais)
            VALUES  (21, 'Travolta', 'John', 1953);
INSERT INTO artiste (ida, nom, prenom, annee_nais)
            VALUES  (22, 'Cage', 'Nicolas', 1954);
INSERT INTO artiste (ida, nom, prenom, annee_nais)
            VALUES  (23, 'DiCaprio', 'Leonardo', 1973);
INSERT INTO artiste (ida, nom, prenom, annee_nais)
            VALUES  (24, 'Cameron', 'James', 1943);
INSERT INTO artiste (ida, nom, prenom, annee_nais)
            VALUES  (25, 'Cruise', 'Tom', 1960);
INSERT INTO artiste (ida, nom, prenom, annee_nais)
            VALUES  (26, 'De Palma', 'Brian', 1953);
INSERT INTO artiste (ida, nom, prenom, annee_nais)
            VALUES  (27, 'Depp', 'Johnny', 1967);
INSERT INTO artiste (ida, nom, prenom, annee_nais)
            VALUES  (28, 'Ricci', 'Christina', 1974);
INSERT INTO artiste (ida, nom, prenom, annee_nais)
            VALUES  (29, 'Burton', 'Tim', 1958);
INSERT INTO artiste (ida, nom, prenom, annee_nais)
            VALUES  (30, 'Bergman', 'Ingrid', 1915);
INSERT INTO artiste (ida, nom, prenom, annee_nais)
            VALUES (31, 'Shyamalan' , 'M. Night', 1970);
INSERT INTO artiste (ida, nom, prenom, annee_nais)
            VALUES (32, 'Villeneuve' , 'Denis', 1967);
INSERT INTO artiste (ida, nom, prenom, annee_nais)
            VALUES (33, 'Coleman','Zendaya', 1996);
INSERT INTO artiste (ida, nom, prenom, annee_nais)
            VALUES (34, 'MacLachlan','Kyle', 1959);
INSERT INTO artiste (ida, nom, prenom, annee_nais)
	    VALUES( 35, 'Kosinski', 'Joseph', 1974);
INSERT INTO artiste (ida, nom, prenom, annee_nais)
	    VALUES( 36, 'Scott', 'Tony', 1944);
INSERT INTO artiste (ida, nom, prenom, annee_nais)
	    VALUES( 37, 'Young', 'Sean', NULL);
	     	
/********************************************************************/

CREATE TABLE Film  (idf INTEGER,
                    titre    VARCHAR (30),
                    annee   SMALLINT,
                    id_realisateur INTEGER,
	            PRIMARY KEY (idf),
	            FOREIGN KEY (id_realisateur) REFERENCES artiste(ida));


-- BLOC 4 : Création des n-uplets pour peupler la table Film

INSERT INTO Film (idf, titre, annee, id_realisateur)
		VALUES (10, 'Annie Hall', 1977, 1);
INSERT INTO Film (idf, titre, annee, id_realisateur)
		VALUES (57, 'Brazil', 1984, 16);
INSERT INTO Film (idf, titre, annee, id_realisateur)
		VALUES (5, 'Underground', 1995, 3);
INSERT INTO Film (idf, titre, annee, id_realisateur)
		VALUES (38, 'Metropolis', 1926, 4);
INSERT INTO Film (idf, titre, annee, id_realisateur)		
		VALUES (45, 'Impitoyable', 1992, 5);
INSERT INTO Film (idf, titre, annee, id_realisateur)
		VALUES (65, 'Vertigo', 1958, 6);
INSERT INTO Film (idf, titre, annee, id_realisateur)
		VALUES (7, 'Shining', 1980, 7);
INSERT INTO Film (idf, titre, annee, id_realisateur)
		VALUES (6, 'Psychose', 1960, 6);
INSERT INTO Film (idf, titre, annee, id_realisateur)
		VALUES (3, 'Twin Peaks', 1990, 2);
INSERT INTO Film (idf, titre, annee, id_realisateur)
		VALUES (90, 'Casablanca', 1942, 8);
INSERT INTO Film (idf, titre, annee, id_realisateur)
		VALUES (85, 'Greystocke', 1984, 15);
INSERT INTO Film (idf, titre, annee, id_realisateur)
		VALUES (89, 'Le dernier metro', 1980, 17);
INSERT INTO Film (idf, titre, annee, id_realisateur)
		VALUES (1, 'Reservoir Dogs', 1992, 12);
INSERT INTO Film (idf, titre, annee, id_realisateur)
		VALUES (43, 'Manhattan', 1979, 1);
INSERT INTO Film (idf, titre, annee, id_realisateur)
		VALUES (11, 'Jurassic Park', 1992, 14);
INSERT INTO Film (idf, titre, annee, id_realisateur)
		VALUES (32, 'Rencontres du 3eme type', 1978, 14);
INSERT INTO Film (idf, titre, annee, id_realisateur)
		VALUES (33, 'Piège de cristal', 1990, 11);
INSERT INTO Film (idf, titre, annee, id_realisateur)
		VALUES (34, 'Une journée en enfer', 1994, 11);
INSERT INTO Film (idf, titre, annee, id_realisateur)
		VALUES (35, '48 minutes pour vivre', 1992, 11);
INSERT INTO Film (idf, titre, annee, id_realisateur)
		VALUES (73, 'Pulp Fiction', 1995, 12);
INSERT INTO Film (idf, titre, annee, id_realisateur)
		VALUES (75, 'Top Gun', 1986, 36);		
INSERT INTO Film (idf, titre, annee, id_realisateur)
		VALUES (101, 'Broken Arrow', 1996, 20);
INSERT INTO Film (idf, titre, annee, id_realisateur)
		VALUES (102, 'Volte-Face', 1997, 20);
INSERT INTO Film (idf, titre, annee, id_realisateur)
		VALUES (104, 'Titanic', 1998, 24);
INSERT INTO Film (idf, titre, annee, id_realisateur)
		VALUES (135, 'Mission Impossible 2', 2000, 20);
INSERT INTO Film (idf, titre, annee, id_realisateur)
		VALUES (136, 'Mission Impossible', 1997, 26);
INSERT INTO Film (idf, titre, annee, id_realisateur)
		VALUES (142, 'Edward aux mains d''argent', 1990, 29);
INSERT INTO Film (idf, titre, annee, id_realisateur)
		VALUES (141, 'Sleepy Hollow', 1999, 29);
INSERT INTO Film (idf, titre, annee, id_realisateur)
		VALUES (160, 'Sixième sens', 2000, 31);
INSERT INTO Film (idf, titre, annee, id_realisateur)
		VALUES (161, 'Dune', 2021, 32);
INSERT INTO Film (idf, titre, annee, id_realisateur)
		VALUES (162, 'Dune', 1984, 2);
INSERT INTO Film (idf, titre, annee, id_realisateur)
		VALUES (231, 'Top Gun : Maverick', 2022, 35);

/****************************************************************************/

CREATE TABLE Joue ( idf  INTEGER,
                     ida INTEGER,
                     nom_role  VARCHAR(80) NOT NULL,
			PRIMARY KEY (idf, ida),
			FOREIGN KEY (idf) REFERENCES Film(idf),
			FOREIGN KEY (ida) REFERENCES artiste(ida)
			);

INSERT INTO Joue (idf, ida, nom_role) VALUES ( 32, 17, 'Bernard');
INSERT INTO Joue (idf, ida, nom_role) VALUES ( 43, 1, 'Davis');
INSERT INTO Joue (idf, ida, nom_role) VALUES ( 85, 18, 'Tarzan');
INSERT INTO Joue (idf, ida, nom_role) VALUES ( 65, 9, 'Ferguson');
INSERT INTO Joue (idf, ida, nom_role) VALUES ( 65, 10, 'Elster');
INSERT INTO Joue (idf, ida, nom_role) VALUES ( 10, 1, 'Jonas');
INSERT INTO Joue (idf, ida, nom_role) VALUES ( 33, 13, 'McLane');
INSERT INTO Joue (idf, ida, nom_role) VALUES ( 34, 13, 'McLane');
INSERT INTO Joue (idf, ida, nom_role) VALUES ( 35, 13, 'McLane');
INSERT INTO Joue (idf, ida, nom_role) VALUES ( 1, 12, 'Mr Brown');
INSERT INTO Joue (idf, ida, nom_role) VALUES ( 45, 5, 'Munny');
INSERT INTO Joue (idf, ida, nom_role) VALUES ( 1, 19, 'Mr White');
INSERT INTO Joue (idf, ida, nom_role) VALUES ( 73, 19, 'Wolf');
INSERT INTO Joue (idf, ida, nom_role) VALUES ( 73, 13, 'Coolidge');
INSERT INTO Joue (idf, ida, nom_role) VALUES ( 73, 21, 'Vega');
INSERT INTO Joue (idf, ida, nom_role) VALUES ( 101, 21, 'Deakins');
INSERT INTO Joue (idf, ida, nom_role) VALUES ( 102, 21, 'Archer');
INSERT INTO Joue (idf, ida, nom_role) VALUES ( 102, 22, 'Troy');
INSERT INTO Joue (idf, ida, nom_role) VALUES ( 104, 23, 'Dowson');
INSERT INTO Joue (idf, ida, nom_role) VALUES ( 135, 25, 'Howard');
INSERT INTO Joue (idf, ida, nom_role) VALUES ( 136, 25, 'Howard');
INSERT INTO Joue (idf, ida, nom_role) VALUES ( 141, 27, 'Crane');
INSERT INTO Joue (idf, ida, nom_role) VALUES ( 142, 27, 'Edward');
INSERT INTO Joue (idf, ida, nom_role) VALUES ( 141, 28, 'Van Tassel');
INSERT INTO Joue (idf, ida, nom_role) VALUES ( 231, 25, 'Pete Mitchell');
INSERT INTO Joue (idf, ida, nom_role) VALUES ( 161, 33, 'Chani');
INSERT INTO Joue (idf, ida, nom_role) VALUES ( 162, 34, 'Paul Atréides;Usul;Muad Dib');
INSERT INTO Joue (idf, ida, nom_role) VALUES ( 162, 37, 'Chani');

/****************************************************************************/

CREATE TABLE Cinema  (	idc INTEGER,
			nom  VARCHAR (50),
                        adresse VARCHAR (30),
			ville VARCHAR(50),
			PRIMARY KEY (idc));

INSERT INTO Cinema (idc, nom, adresse, ville) VALUES (1, 'Astoria', '22 Cours Vitton', 'Lyon 06');
INSERT INTO Cinema (idc, nom, adresse, ville) VALUES (2, 'Zola', '300 Cours Emile Zola', 'Villeurbanne');
INSERT INTO Cinema (idc, nom, adresse, ville) VALUES (3, 'Bellecour',  '3 Cours de la République', 'Lyon 02');
INSERT INTO Cinema (idc, nom, adresse, ville) VALUES (4, 'Part-dieu', 'Centre commercial Part-dieu' , 'Lyon 03');
INSERT INTO Cinema (idc, nom, adresse, ville) VALUES (5, 'Grand Action', '5 Rue des écoles' , 'Paris 05');
INSERT INTO Cinema (idc, nom, adresse, ville) VALUES (6, 'Nouvel Odéon', '6 Rue de l''école de Médecine' , 'Paris 06');
INSERT INTO Cinema (idc, nom, adresse, ville) VALUES (7, 'Majestic Bastille', '4 Boulevard Richard Lenoir' , 'Paris 11');
INSERT INTO Cinema (idc, nom, adresse, ville) VALUES (8, 'Madeleine', '36 Avenue du Maréchal Foch' , 'Marseille 04');
INSERT INTO Cinema (idc, nom, adresse, ville) VALUES (9, 'Les Variétés', '37 Rue Vincent Scotto' , 'Marseille 01');
INSERT INTO Cinema (idc, nom, adresse, ville) VALUES (10, 'Le Concorde', '79 Boulevard de l''égalité' , 'Nantes');



/****************************************************************************/

CREATE TABLE Salle  ( idc INTEGER,
 	 	      num_salle DECIMAL(2,0),
                      est_climatise   CHAR(1),
                      capacite SMALLINT,
                     PRIMARY KEY (idc, num_salle),
		     FOREIGN KEY (idc) REFERENCES Cinema(idc));


INSERT INTO Salle (idc, num_salle, est_climatise, capacite ) values (1, 1, 'O', 150);
INSERT INTO Salle (idc, num_salle, est_climatise, capacite ) values (1, 2, 'O', 100);
INSERT INTO Salle (idc, num_salle, est_climatise, capacite ) values (1, 3, 'N', 80);
INSERT INTO Salle (idc, num_salle, est_climatise, capacite ) values (1, 4, 'N', 80);

INSERT INTO Salle (idc, num_salle, est_climatise, capacite ) values (2, 1, 'N', 280);
INSERT INTO Salle (idc, num_salle, est_climatise, capacite ) values (2, 2, 'N', 120);
INSERT INTO Salle (idc, num_salle, est_climatise, capacite ) values (2, 3, 'N', 130);

INSERT INTO Salle (idc, num_salle, est_climatise, capacite ) values (3, 1, 'O', 130);
INSERT INTO Salle (idc, num_salle, est_climatise, capacite ) values (3, 2, 'N', 90);
INSERT INTO Salle (idc, num_salle, est_climatise, capacite ) values (3, 3, 'N', 60);

INSERT INTO Salle (idc, num_salle, est_climatise, capacite ) values (4, 1, 'O', 75);
INSERT INTO Salle (idc, num_salle, est_climatise, capacite ) values (4, 2, 'N', 60);
INSERT INTO Salle (idc, num_salle, est_climatise, capacite ) values (4, 3, 'N', 60);

INSERT INTO Salle (idc, num_salle, est_climatise, capacite ) values (5, 1, 'N', 50);
INSERT INTO Salle (idc, num_salle, est_climatise, capacite ) values (5, 2, 'N', 40);

INSERT INTO Salle (idc, num_salle, est_climatise, capacite ) values (6, 1, 'O', 100);
INSERT INTO Salle (idc, num_salle, est_climatise, capacite ) values (6, 2, 'N', 65);
INSERT INTO Salle (idc, num_salle, est_climatise, capacite ) values (6, 3, 'N', 65);

INSERT INTO Salle (idc, num_salle, est_climatise, capacite ) values (7, 1, 'N', 90);
INSERT INTO Salle (idc, num_salle, est_climatise, capacite ) values (7, 2, 'N', 50);
INSERT INTO Salle (idc, num_salle, est_climatise, capacite ) values (7, 3, 'N', 50);

INSERT INTO Salle (idc, num_salle, est_climatise, capacite ) values (8, 1, 'O', 150);
INSERT INTO Salle (idc, num_salle, est_climatise, capacite ) values (8, 2, 'O', 150);
INSERT INTO Salle (idc, num_salle, est_climatise, capacite ) values (8, 3, 'O', 100);
INSERT INTO Salle (idc, num_salle, est_climatise, capacite ) values (8, 4, 'O', 100);

INSERT INTO Salle (idc, num_salle, est_climatise, capacite ) values (9, 1, 'O', 150);
INSERT INTO Salle (idc, num_salle, est_climatise, capacite ) values (9, 2, 'N', 50);
INSERT INTO Salle (idc, num_salle, est_climatise, capacite ) values (9, 3, 'O', 150);

INSERT INTO Salle (idc, num_salle, est_climatise, capacite ) values (10, 1, 'O', 200);
INSERT INTO Salle (idc, num_salle, est_climatise, capacite ) values (10, 2, 'N', 60);
INSERT INTO Salle (idc, num_salle, est_climatise, capacite ) values (10, 3, 'N', 60);
INSERT INTO Salle (idc, num_salle, est_climatise, capacite ) values (10, 4, 'N', 50);


/****************************************************************************/



CREATE TABLE Seance  (idf INTEGER,
		      idc INTEGER,
		      num_salle   DECIMAL(2,0),
		      annee DECIMAL(4),
		      semaine DECIMAL(2),
		      PRIMARY KEY (idf, idc, num_salle, annee, semaine),
		      FOREIGN KEY (idf) REFERENCES Film(idf),
		      FOREIGN KEY (idc,num_salle) REFERENCES Salle(idc,num_salle) );



INSERT INTO Seance VALUES (1, 5, 1, 2000, 31);
INSERT INTO Seance VALUES (1, 5, 1, 2000, 32);
INSERT INTO Seance VALUES (1, 5, 1, 2000, 33);
INSERT INTO Seance VALUES (1, 5, 1, 2000, 34);
INSERT INTO Seance VALUES (1, 5, 1, 2000, 35);
INSERT INTO Seance VALUES (1, 5, 1, 2000, 36);


INSERT INTO Seance VALUES (57, 1, 1, 1984, 24);
INSERT INTO Seance VALUES (57, 1, 2, 1984, 25);
INSERT INTO Seance VALUES (57, 1, 2, 1984, 26);

INSERT INTO Seance VALUES (57, 10, 1, 1984, 24);
INSERT INTO Seance VALUES (57, 10, 1, 1984, 25);
INSERT INTO Seance VALUES (57, 10, 3, 1984, 26);

INSERT INTO Seance VALUES (1, 5, 1, 2010, 2);
INSERT INTO Seance VALUES (1, 5, 1, 2010, 3);

INSERT INTO Seance VALUES (5, 7, 1, 1995, 33);
INSERT INTO Seance VALUES (5, 7, 1, 1995, 34);
INSERT INTO Seance VALUES (5, 7, 3, 1995, 35);

INSERT INTO Seance VALUES (38, 5, 1, 2020, 15);
INSERT INTO Seance VALUES (38, 5, 1, 2020, 16);
INSERT INTO Seance VALUES (38, 5, 1, 2020, 17);
INSERT INTO Seance VALUES (38, 5, 1, 2020, 18);
INSERT INTO Seance VALUES (38, 5, 1, 2020, 19);
INSERT INTO Seance VALUES (38, 5, 1, 2020, 20);
INSERT INTO Seance VALUES (38, 5, 1, 2020, 21);
INSERT INTO Seance VALUES (38, 5, 1, 2020, 22);

INSERT INTO Seance VALUES (45, 1, 1, 1992, 12);
INSERT INTO Seance VALUES (45, 1, 2, 1992, 13);
INSERT INTO Seance VALUES (45, 1, 3, 1992, 14);

INSERT INTO Seance VALUES (45, 6, 1, 1992, 12);
INSERT INTO Seance VALUES (45, 6, 1, 1992, 13);
INSERT INTO Seance VALUES (45, 6, 3, 1992, 14);

INSERT INTO Seance VALUES (45, 9, 1, 1992, 12);
INSERT INTO Seance VALUES (45, 9, 1, 1992, 13);
INSERT INTO Seance VALUES (45, 9, 3, 1992, 14);
INSERT INTO Seance VALUES (45, 9, 3, 1992, 15);

INSERT INTO Seance VALUES (65, 5, 1, 2019, 15);
INSERT INTO Seance VALUES (65, 5, 1, 2019, 16);
INSERT INTO Seance VALUES (65, 5, 1, 2019, 17);
INSERT INTO Seance VALUES (65, 5, 1, 2019, 18);
INSERT INTO Seance VALUES (65, 5, 2, 2020, 35);
INSERT INTO Seance VALUES (65, 5, 2, 2020, 36);
INSERT INTO Seance VALUES (65, 5, 2, 2020, 37);
INSERT INTO Seance VALUES (65, 5, 2, 2020, 38);


INSERT INTO Seance VALUES (7, 6, 3, 1980, 12);
INSERT INTO Seance VALUES (7, 6, 3, 1980, 13);
INSERT INTO Seance VALUES (7, 6, 3, 1980, 14);

INSERT INTO Seance VALUES (7, 9, 3, 1980, 12);
INSERT INTO Seance VALUES (7, 9, 3, 1980, 13);
INSERT INTO Seance VALUES (7, 9, 3, 1980, 14);
INSERT INTO Seance VALUES (7, 9, 3, 1980, 15);

INSERT INTO Seance VALUES (6, 10, 4, 2015, 22);
INSERT INTO Seance VALUES (6, 10, 4, 2015, 23);
INSERT INTO Seance VALUES (6, 10, 4, 2015, 24);
INSERT INTO Seance VALUES (6, 10, 4, 2015, 25);

INSERT INTO Seance VALUES (3, 2, 1, 1990, 49);
INSERT INTO Seance VALUES (3, 2, 1, 1990, 50);
INSERT INTO Seance VALUES (3, 2, 1, 1990, 51);
INSERT INTO Seance VALUES (3, 2, 1, 1990, 52);
INSERT INTO Seance VALUES (3, 2, 1, 1991, 1);
INSERT INTO Seance VALUES (3, 2, 1, 1991, 2);
INSERT INTO Seance VALUES (3, 2, 1, 1991, 3);
INSERT INTO Seance VALUES (3, 2, 1, 1991, 4);
INSERT INTO Seance VALUES (3, 2, 1, 1991, 5);

INSERT INTO Seance VALUES (90, 7, 3, 2016, 22);
INSERT INTO Seance VALUES (90, 7, 3, 2016, 23);
INSERT INTO Seance VALUES (90, 7, 3, 2016, 24);
INSERT INTO Seance VALUES (90, 7, 3, 2016, 25);

INSERT INTO Seance VALUES (85, 3, 1, 1984, 30);
INSERT INTO Seance VALUES (85, 3, 1, 1984, 31);
INSERT INTO Seance VALUES (85, 3, 3, 1984, 32);

INSERT INTO Seance VALUES (1, 2, 1, 1992, 41);
INSERT INTO Seance VALUES (1, 2, 1, 1992, 42);
INSERT INTO Seance VALUES (1, 2, 1, 1992, 43);
INSERT INTO Seance VALUES (1, 2, 1, 1992, 44);
INSERT INTO Seance VALUES (1, 2, 2, 1992, 45);

INSERT INTO Seance VALUES (3, 10, 3, 2005, 22);
INSERT INTO Seance VALUES (3, 10, 3, 2005, 23);
INSERT INTO Seance VALUES (3, 10, 3, 2005, 24);
INSERT INTO Seance VALUES (3, 10, 3, 2005, 25);


INSERT INTO Seance VALUES (11, 1, 1, 1992, 22);
INSERT INTO Seance VALUES (11, 1, 1, 1992, 23);
INSERT INTO Seance VALUES (11, 1, 1, 1992, 24);

INSERT INTO Seance VALUES (11, 3, 1, 1992, 22);
INSERT INTO Seance VALUES (11, 3, 1, 1992, 23);
INSERT INTO Seance VALUES (11, 3, 1, 1992, 24);

INSERT INTO Seance VALUES (11, 4, 1, 1992, 22);
INSERT INTO Seance VALUES (11, 4, 1, 1992, 23);
INSERT INTO Seance VALUES (11, 4, 3, 1992, 24);

INSERT INTO Seance VALUES (32, 9, 2, 2002, 32);
INSERT INTO Seance VALUES (32, 9, 2, 2002, 33);
INSERT INTO Seance VALUES (32, 9, 2, 2002, 34);

INSERT INTO Seance VALUES (33, 1, 1, 1990, 12);
INSERT INTO Seance VALUES (33, 1, 2, 1990, 13);
INSERT INTO Seance VALUES (33, 1, 3, 1990, 14);

INSERT INTO Seance VALUES (33, 2, 1, 1990, 12);

INSERT INTO Seance VALUES (33, 3, 1, 1990, 12);

INSERT INTO Seance VALUES (33, 4, 1, 1990, 12);
INSERT INTO Seance VALUES (33, 4, 1, 1990, 13);
INSERT INTO Seance VALUES (33, 4, 3, 1990, 14);

INSERT INTO Seance VALUES (33, 5, 1, 1990, 12);

INSERT INTO Seance VALUES (33, 6, 1, 1990, 12);
INSERT INTO Seance VALUES (33, 6, 1, 1990, 13);
INSERT INTO Seance VALUES (33, 6, 3, 1990, 14);

INSERT INTO Seance VALUES (33, 7, 1, 1990, 12);

INSERT INTO Seance VALUES (33, 8, 1, 1990, 12);
INSERT INTO Seance VALUES (33, 8, 1, 1990, 13);
INSERT INTO Seance VALUES (33, 8, 3, 1990, 14);

INSERT INTO Seance VALUES (33, 9, 1, 1990, 12);

INSERT INTO Seance VALUES (33, 10, 1, 1990, 12);
INSERT INTO Seance VALUES (33, 10, 1, 1990, 13);
INSERT INTO Seance VALUES (33, 10, 3, 1990, 14);

INSERT INTO Seance VALUES (34, 6, 1, 1994, 22);
INSERT INTO Seance VALUES (34, 6, 1, 1994, 23);
INSERT INTO Seance VALUES (34, 6, 3, 1994, 24);

INSERT INTO Seance VALUES (34, 8, 1, 1994, 22);
INSERT INTO Seance VALUES (34, 8, 1, 1994, 23);
INSERT INTO Seance VALUES (34, 8, 3, 1994, 24);

INSERT INTO Seance VALUES (34, 10, 1, 1994, 22);
INSERT INTO Seance VALUES (34, 10, 1, 1994, 23);
INSERT INTO Seance VALUES (34, 10, 3, 1994, 24);

INSERT INTO Seance VALUES (35, 6, 1, 1994, 22);
INSERT INTO Seance VALUES (35, 6, 1, 1994, 23);
INSERT INTO Seance VALUES (35, 6, 3, 1994, 24);

INSERT INTO Seance VALUES (35, 9, 1, 1994, 22);
INSERT INTO Seance VALUES (35, 9, 1, 1994, 23);
INSERT INTO Seance VALUES (35, 9, 3, 1994, 24);

INSERT INTO Seance VALUES (35, 10, 1, 1994, 22);
INSERT INTO Seance VALUES (35, 10, 1, 1994, 23);
INSERT INTO Seance VALUES (35, 10, 3, 1994, 24);

INSERT INTO Seance VALUES (73, 7, 1, 1995, 32);
INSERT INTO Seance VALUES (73, 7, 1, 1995, 33);
INSERT INTO Seance VALUES (73, 7, 3, 1995, 34);

INSERT INTO Seance VALUES (101, 3, 1, 1996, 42);
INSERT INTO Seance VALUES (101, 3, 1, 1996, 43);
INSERT INTO Seance VALUES (101, 3, 3, 1996, 44);

INSERT INTO Seance VALUES (101, 8, 1, 1996, 42);
INSERT INTO Seance VALUES (101, 8, 1, 1996, 43);
INSERT INTO Seance VALUES (101, 8, 2, 1996, 44);

INSERT INTO Seance VALUES (102, 8, 2, 1997, 2);
INSERT INTO Seance VALUES (102, 8, 2, 1997, 3);
INSERT INTO Seance VALUES (102, 8, 2, 1997, 4);


INSERT INTO Seance VALUES (104, 1, 1, 1998, 22);
INSERT INTO Seance VALUES (104, 1, 1, 1998, 23);
INSERT INTO Seance VALUES (104, 1, 1, 1998, 24);
INSERT INTO Seance VALUES (104, 1, 1, 1998, 25);
INSERT INTO Seance VALUES (104, 1, 1, 1998, 26);
INSERT INTO Seance VALUES (104, 1, 1, 1998, 27);
INSERT INTO Seance VALUES (104, 1, 1, 1998, 28);
INSERT INTO Seance VALUES (104, 1, 1, 1998, 29);
INSERT INTO Seance VALUES (104, 1, 1, 1998, 30);

INSERT INTO Seance VALUES (104, 2, 1, 1998, 22);
INSERT INTO Seance VALUES (104, 2, 1, 1998, 23);

INSERT INTO Seance VALUES (104, 3, 1, 1998, 22);

INSERT INTO Seance VALUES (104, 4, 1, 1998, 22);
INSERT INTO Seance VALUES (104, 4, 1, 1998, 23);
INSERT INTO Seance VALUES (104, 4, 1, 1998, 24);
INSERT INTO Seance VALUES (104, 4, 1, 1998, 25);
INSERT INTO Seance VALUES (104, 4, 1, 1998, 26);
INSERT INTO Seance VALUES (104, 4, 1, 1998, 27);
INSERT INTO Seance VALUES (104, 4, 1, 1998, 28);
INSERT INTO Seance VALUES (104, 4, 2, 1998, 29);
INSERT INTO Seance VALUES (104, 4, 2, 1998, 30);

INSERT INTO Seance VALUES (104, 5, 1, 1998, 22);

INSERT INTO Seance VALUES (104, 6, 1, 1998, 22);
INSERT INTO Seance VALUES (104, 6, 1, 1998, 23);
INSERT INTO Seance VALUES (104, 6, 1, 1998, 24);
INSERT INTO Seance VALUES (104, 6, 1, 1998, 25);
INSERT INTO Seance VALUES (104, 6, 1, 1998, 26);
INSERT INTO Seance VALUES (104, 6, 3, 1998, 27);

INSERT INTO Seance VALUES (104, 7, 1, 1998, 22);
INSERT INTO Seance VALUES (104, 7, 1, 1998, 23);

INSERT INTO Seance VALUES (104, 8, 1, 1998, 22);
INSERT INTO Seance VALUES (104, 8, 1, 1998, 23);
INSERT INTO Seance VALUES (104, 8, 1, 1998, 24);
INSERT INTO Seance VALUES (104, 8, 1, 1998, 25);
INSERT INTO Seance VALUES (104, 8, 1, 1998, 26);
INSERT INTO Seance VALUES (104, 8, 2, 1998, 27);

INSERT INTO Seance VALUES (104, 9, 1, 1998, 22);

INSERT INTO Seance VALUES (104, 10, 1, 1998, 22);
INSERT INTO Seance VALUES (104, 10, 1, 1998, 23);
INSERT INTO Seance VALUES (104, 10, 1, 1998, 24);
INSERT INTO Seance VALUES (104, 10, 1, 1998, 25);
INSERT INTO Seance VALUES (104, 10, 1, 1998, 26);
INSERT INTO Seance VALUES (104, 10, 2, 1998, 27);

INSERT INTO Seance VALUES (135, 7, 1, 2000, 12);
INSERT INTO Seance VALUES (135, 7, 1, 2000, 13);
INSERT INTO Seance VALUES (135, 7, 1, 2000, 14);
INSERT INTO Seance VALUES (135, 7, 1, 2000, 15);
INSERT INTO Seance VALUES (135, 7, 1, 2000, 16);
INSERT INTO Seance VALUES (135, 7, 2, 2000, 17);

INSERT INTO Seance VALUES (135, 3, 1, 2000, 12);
INSERT INTO Seance VALUES (135, 3, 1, 2000, 13);
INSERT INTO Seance VALUES (135, 3, 1, 2000, 14);
INSERT INTO Seance VALUES (135, 3, 2, 2000, 15);

INSERT INTO Seance VALUES (135, 8, 1, 2000, 12);
INSERT INTO Seance VALUES (135, 8, 1, 2000, 13);
INSERT INTO Seance VALUES (135, 8, 1, 2000, 14);
INSERT INTO Seance VALUES (135, 8, 2, 2000, 15);



INSERT INTO Seance VALUES (136, 8, 1, 1997, 19);
INSERT INTO Seance VALUES (136, 8, 1, 1997, 20);
INSERT INTO Seance VALUES (136, 8, 1, 1997, 21);
INSERT INTO Seance VALUES (136, 8, 1, 1997, 22);

INSERT INTO Seance VALUES (142, 2, 1, 1990, 39);
INSERT INTO Seance VALUES (142, 2, 1, 1990, 30);
INSERT INTO Seance VALUES (142, 2, 1, 1990, 31);
INSERT INTO Seance VALUES (142, 2, 1, 1990, 32);

INSERT INTO Seance VALUES (142, 6, 1, 1999, 9);
INSERT INTO Seance VALUES (142, 6, 1, 1999, 10);
INSERT INTO Seance VALUES (142, 6, 1, 1999, 11);
INSERT INTO Seance VALUES (142, 6, 1, 1999, 12);


INSERT INTO Seance VALUES (231, 1, 1, 2022, 32);
INSERT INTO Seance VALUES (231, 1, 1, 2022, 33);
INSERT INTO Seance VALUES (231, 1, 1, 2022, 34);
INSERT INTO Seance VALUES (231, 1, 1, 2022, 35);
INSERT INTO Seance VALUES (231, 1, 1, 2022, 36);
INSERT INTO Seance VALUES (231, 1, 1, 2022, 37);
INSERT INTO Seance VALUES (231, 1, 1, 2022, 38);
INSERT INTO Seance VALUES (231, 1, 1, 2022, 39);
INSERT INTO Seance VALUES (231, 1, 1, 2022, 40);

INSERT INTO Seance VALUES (231, 2, 1, 2022, 32);

INSERT INTO Seance VALUES (231, 3, 1, 2022, 32);

INSERT INTO Seance VALUES (231, 4, 1, 2022, 32);
INSERT INTO Seance VALUES (231, 4, 1, 2022, 33);
INSERT INTO Seance VALUES (231, 4, 1, 2022, 34);
INSERT INTO Seance VALUES (231, 4, 1, 2022, 35);
INSERT INTO Seance VALUES (231, 4, 1, 2022, 36);
INSERT INTO Seance VALUES (231, 4, 1, 2022, 37);
INSERT INTO Seance VALUES (231, 4, 1, 2022, 38);
INSERT INTO Seance VALUES (231, 4, 2, 2022, 39);
INSERT INTO Seance VALUES (231, 4, 2, 2022, 40);

INSERT INTO Seance VALUES (231, 5, 1, 2022, 32);

INSERT INTO Seance VALUES (231, 6, 1, 2022, 32);
INSERT INTO Seance VALUES (231, 6, 1, 2022, 33);
INSERT INTO Seance VALUES (231, 6, 1, 2022, 34);
INSERT INTO Seance VALUES (231, 6, 1, 2022, 35);
INSERT INTO Seance VALUES (231, 6, 1, 2022, 36);
INSERT INTO Seance VALUES (231, 6, 3, 2022, 37);
INSERT INTO Seance VALUES (231, 6, 3, 2022, 38);
INSERT INTO Seance VALUES (231, 6, 3, 2022, 39);

INSERT INTO Seance VALUES (231, 7, 1, 2022, 32);

INSERT INTO Seance VALUES (231, 8, 1, 2022, 32);
INSERT INTO Seance VALUES (231, 8, 1, 2022, 33);
INSERT INTO Seance VALUES (231, 8, 1, 2022, 34);
INSERT INTO Seance VALUES (231, 8, 1, 2022, 35);
INSERT INTO Seance VALUES (231, 8, 1, 2022, 36);
INSERT INTO Seance VALUES (231, 8, 2, 2022, 37);

INSERT INTO Seance VALUES (231, 9, 1, 2022, 32);

INSERT INTO Seance VALUES (231, 10, 1, 2022, 32);
INSERT INTO Seance VALUES (231, 10, 1, 2022, 33);
INSERT INTO Seance VALUES (231, 10, 1, 2022, 34);
INSERT INTO Seance VALUES (231, 10, 1, 2022, 35);
INSERT INTO Seance VALUES (231, 10, 1, 2022, 36);
INSERT INTO Seance VALUES (231, 10, 2, 2022, 37);


INSERT INTO Seance VALUES (161, 3, 1, 2021, 2);
INSERT INTO Seance VALUES (161, 3, 1, 2021, 3);
INSERT INTO Seance VALUES (161, 3, 1, 2021, 4);
INSERT INTO Seance VALUES (161, 3, 1, 2021, 5);
INSERT INTO Seance VALUES (161, 3, 1, 2021, 6);
INSERT INTO Seance VALUES (161, 3, 2, 2021, 7);
INSERT INTO Seance VALUES (161, 3, 3, 2021, 8);
INSERT INTO Seance VALUES (161, 3, 3, 2021, 9);

INSERT INTO Seance VALUES (161, 4, 1, 2021, 2);
INSERT INTO Seance VALUES (161, 4, 1, 2021, 3);
INSERT INTO Seance VALUES (161, 4, 1, 2021, 4);
INSERT INTO Seance VALUES (161, 4, 1, 2021, 5);
INSERT INTO Seance VALUES (161, 4, 1, 2021, 6);
INSERT INTO Seance VALUES (161, 4, 2, 2021, 7);

INSERT INTO Seance VALUES (161, 10, 1, 2021, 2);
INSERT INTO Seance VALUES (161, 10, 1, 2021, 3);
INSERT INTO Seance VALUES (161, 10, 1, 2021, 4);
INSERT INTO Seance VALUES (161, 10, 1, 2021, 5);
INSERT INTO Seance VALUES (161, 10, 1, 2021, 6);
INSERT INTO Seance VALUES (161, 10, 2, 2021, 7);

