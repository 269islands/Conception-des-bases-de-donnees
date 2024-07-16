# EtudiantsDB

## Description

`EtudiantsDB` est une base de données destinée à la gestion des informations relatives aux étudiants, cours, enseignants, niveaux, notes, inscriptions, et les cours enseignés. Cette base de données permet de stocker et de gérer des informations essentielles pour un établissement éducatif.

## Structure de la Base de Données

La base de données contient les tables suivantes :

1. **etudiant**
2. **cours**
3. **enseignant**
4. **niveau**
5. **note**
6. **enseigner**
7. **inscrit**

## Table: etudiant

| Colonne           | Type         | Description                 |
|-------------------|--------------|-----------------------------|
| id_etudiant       | INT          | Identifiant unique de l'étudiant (Primary Key) |
| nom_etudiant      | VARCHAR(50)  | Nom de l'étudiant           |
| prenom_etudiant   | VARCHAR(50)  | Prénom de l'étudiant        |
| date_de_naissance | DATE         | Date de naissance de l'étudiant |
| adresse           | VARCHAR(100) | Adresse de l'étudiant       |
| email             | VARCHAR(100) | Email de l'étudiant         |

## Table: cours

| Colonne       | Type         | Description                 |
|---------------|--------------|-----------------------------|
| id_cours      | INT          | Identifiant unique du cours (Primary Key) |
| nom_cours     | VARCHAR(100) | Nom du cours                |
| description   | TEXT         | Description du cours        |
| credits       | INT          | Nombre de crédits du cours  |

## Table: enseignant

| Colonne           | Type         | Description                 |
|-------------------|--------------|-----------------------------|
| id_enseignant     | INT          | Identifiant unique de l'enseignant (Primary Key) |
| nom_enseignant    | VARCHAR(50)  | Nom de l'enseignant         |
| prenom_enseignant | VARCHAR(50)  | Prénom de l'enseignant      |
| email             | VARCHAR(100) | Email de l'enseignant       |

## Table: niveau

| Colonne     | Type         | Description                 |
|-------------|--------------|-----------------------------|
| id_niveau   | INT          | Identifiant unique du niveau (Primary Key) |
| nom_niveau  | VARCHAR(50)  | Nom du niveau               |

## Table: note

| Colonne     | Type         | Description                 |
|-------------|--------------|-----------------------------|
| id_note     | INT          | Identifiant unique de la note (Primary Key) |
| id_etudiant | INT          | Identifiant de l'étudiant (Foreign Key) |
| id_cours    | INT          | Identifiant du cours (Foreign Key) |
| date_note   | DATE         | Date de la note             |
| valeur      | DECIMAL(5,2) | Valeur de la note           |

## Table: enseigner

| Colonne         | Type     | Description                 |
|-----------------|----------|-----------------------------|
| id_enseigner    | INT      | Identifiant unique de l'enseignement (Primary Key) |
| date_enseigner  | DATE     | Date de l'enseignement      |
| heure_enseigner | TIME     | Heure de l'enseignement     |
| id_enseignant   | INT      | Identifiant de l'enseignant (Foreign Key) |
| id_cours        | INT      | Identifiant du cours (Foreign Key) |

## Table: inscrit

| Colonne         | Type         | Description                 |
|-----------------|--------------|-----------------------------|
| id_inscrit      | INT          | Identifiant unique de l'inscription (Primary Key) |
| date_inscrit    | DATE         | Date d'inscription          |
| statut_inscrit  | CHAR(50)     | Statut de l'inscription     |
| id_etudiant     | INT          | Identifiant de l'étudiant (Foreign Key) |
| id_niveau       | INT          | Identifiant du niveau (Foreign Key) |

## Insertion des Données

### Fichiers CSV

Les données pour chaque table peuvent être insérées à partir de fichiers CSV. Voici les exemples de fichiers CSV :

- `etudiant.csv`
- `cours.csv`
- `enseignant.csv`
- `niveau.csv`
- `note.csv`
- `enseigner.csv`
- `inscrit.csv`

### Script d'Insertion

Utilisez les scripts suivants pour insérer les données depuis les fichiers CSV :

```sql
USE EtudiantsDB;
GO

-- Insertion des données dans la table etudiant depuis CSV
BULK INSERT etudiant
FROM 'C:\path\to\etudiant.csv'
WITH (
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2
);
GO

-- Insertion des données dans la table cours depuis CSV
BULK INSERT cours
FROM 'C:\path\to\cours.csv'
WITH (
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2
);
GO

-- Insertion des données dans la table enseignant depuis CSV
BULK INSERT enseignant
FROM 'C:\path\to\enseignant.csv'
WITH (
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2
);
GO

-- Insertion des données dans la table niveau depuis CSV
BULK INSERT niveau
FROM 'C:\path\to\niveau.csv'
WITH (
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2
);
GO

-- Insertion des données dans la table note depuis CSV
BULK INSERT note
FROM 'C:\path\to\note.csv'
WITH (
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2
);
GO

-- Insertion des données dans la table enseigner depuis CSV
BULK INSERT enseigner
FROM 'C:\path\to\enseigner.csv'
WITH (
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2
);
GO

-- Insertion des données dans la table inscrit depuis CSV
BULK INSERT inscrit
FROM 'C:\path\to\inscrit.csv'
WITH (
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2
);
GO
