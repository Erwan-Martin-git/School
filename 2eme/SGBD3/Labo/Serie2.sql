/*Serie 2 SELECT*/

/*Exercice1
SELECT * 
FROM AG_CLIENTS*/

/*Exercice2
SELECT NOMCLIENT, PRENOMCLIENT, ANNEENAIS
FROM AG_CLIENTS*/

/*Exercice3
SELECT NOMCLIENT AS Nom, PRENOMCLIENT AS Pr�nom, ANNEENAIS AS "Ann�e de naissance"
FROM AG_CLIENTS*/

/*Exercice4
SELECT LOCALITECLIENT
FROM AG_CLIENTS
*/

/*Exercice5
SELECT DISTINCT LOCALITECLIENT
FROM AG_CLIENTS
*/

/*Exercice6
pas de * quand on ajoute en plus une colonne
SELECT NUMDEPART, DATEDEPART, NBRPLACEDEPART, NUMVOYAGE, DATEDEPART + 10 AS "Date de retour"
FROM AG_DEPARTS
*/

/*Exercice7
SELECT lower(PRENOMCLIENT) as "Pr�nom du client" , upper(NOMCLIENT) as "Nom du client"
FROM AG_CLIENTS
*/

/*
Exercice 8
SELECT CONCAT(NOMCLIENT, ' ' || PRENOMCLIENT) AS "Nom Complet", 
       LENGTH(CONCAT(NOMCLIENT, ' ' || PRENOMCLIENT)) AS "Longueur"
FROM AG_CLIENTS;


SELECT (NOMCLIENT || ' ' || PRENOMCLIENT) AS "Nom Complet", 
       LENGTH(NOMCLIENT || ' ' || PRENOMCLIENT) AS "Longueur"
FROM AG_CLIENTS;
*/

/*Exercice 9

par d�faut minuit ?

SELECT EXTRACT(YEAR FROM DATEINSCRIPTION) AS "Ann�e",
       EXTRACT(MONTH FROM DATEINSCRIPTION) AS "Mois",
       EXTRACT(DAY FROM DATEINSCRIPTION) AS "Jour",
       TO_CHAR(DATEINSCRIPTION, 'HH24') AS "Heure",
       TO_CHAR(DATEINSCRIPTION, 'MI') AS "Minutes",
       TO_CHAR(DATEINSCRIPTION, 'SS') AS "Secondes"
FROM AG_ESTINSCRIT;
*/

/*Exercice 10
SELECT NUMCLIENT, DATEINSCRIPTION, ADD_MONTHS(DATEINSCRIPTION, 18) AS "Date apr�s 18 mois"
FROM AG_ESTINSCRIT
*/

/*
Exercice 11
SELECT NUMCLIENT, DATEINSCRIPTION, last_day(DATEINSCRIPTION)
FROM AG_ESTINSCRIT
*/

/*
Exercice 12
FM enl�ve les espaces
SELECT NUMCLIENT,TO_CHAR(DATEINSCRIPTION, 'FMMonth, Day, DD/MM/YYYY HH24:MI:SS') AS "Date d'inscription"
FROM AG_ESTINSCRIT
*/

/*Exercice 13
FLOOR car sinon chiffre � virgule
SELECT NUMCLIENT, FLOOR(MONTHS_BETWEEN(SYSDATE, DATEINSCRIPTION)) as " Mois �coul�s"
FROM AG_ESTINSCRIT
*/


/*Exercice 14
SELECT MAX(NBRPLACEDEPART)
FROM AG_DEPARTS
*/

/*Exercice 15
SELECT MIN(NUMCLIENT)
FROM AG_CLIENTS
*/

/*Exercice 16
SELECT AVG(NBRPLACEDEPART)
FROM AG_DEPARTS
*/

/*Exercice 17
SELECT COUNT(NUMCLIENT) as "Nombre de clients"
FROM AG_CLIENTS
*/


/*Exercice 18
SELECT COUNT(DISTINCT(LOCALITECLIENT)) as "Localite clients"
FROM AG_CLIENTS
*/


/*Exercice 19
SELECT MIN(DATEINSCRIPTION) AS "Date Ancienne",
       MAX(DATEINSCRIPTION) AS "Date Recente"
FROM AG_ESTINSCRIT
*/

/*Exercice 20
SELECT SUM(NBRPLACEDEPART) as "Nombre place totale"
FROM AG_DEPARTS
*/


