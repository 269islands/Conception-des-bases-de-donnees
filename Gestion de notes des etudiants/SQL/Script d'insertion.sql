USE EtudiantsDB;
GO
"""

FIELDTERMINATOR = ',' spécifie que les champs sont séparés par des virgules.
ROWTERMINATOR = '\n' indique que les lignes sont terminées par un retour à la ligne.
FIRSTROW = 2 indique que la première ligne du fichier CSV est une ligne d'en-tête et ne doit pas être 
importée comme des données.

"""

-- Insertion des données dans la table etudiant depuis CSV
BULK INSERT etudiant
FROM 'D:\Data Engineering\Mentorat\EtudiandsBD\SQL\csvdata\csv\etudiant.csv'
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

