-- Base de données (EtudiantsDB) si elle n'existe pas déjà :

IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = 'EtudiantsDB')
BEGIN
    CREATE DATABASE EtudiantsDB;
	PRINT 'Base de données EtudiantsDB créée ';
END
ELSE
BEGIN
    PRINT 'Base de données EtudiantsDB déjà existante';
END
GO

USE EtudiantsDB;
GO

-- Table Étudiant si elle n'existe pas déjà
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'etudiant')
BEGIN
    CREATE TABLE etudiant (
        id_etudiant INT PRIMARY KEY,
        nom_etudiant VARCHAR(50) NOT NULL,
        prenom_etudiant VARCHAR(50) NOT NULL,
        date_de_naissance DATE NOT NULL,
        adresse VARCHAR(100) NOT NULL,
        email VARCHAR(100) NOT NULL
    );
	PRINT 'Table etudiant créée';
END
ELSE
BEGIN
    PRINT 'Table etudiant déjà existante';
END
GO


-- Table Cours si elle n'existe pas déjà
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'cours')
BEGIN
    CREATE TABLE cours (
        id_cours INT PRIMARY KEY,
        nom_cours VARCHAR(100) NOT NULL,
        description TEXT NOT NULL,
        credits INT NOT NULL
    );
	PRINT 'Table cours créée';
END
ELSE
BEGIN
    PRINT 'Table cours déjà existante';
END
GO

-- Table Enseignant si elle n'existe pas déjà
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'enseignant')
BEGIN
    CREATE TABLE enseignant (
        id_enseignant INT PRIMARY KEY,
        nom_enseignant VARCHAR(50) NOT NULL,
        prenom_enseignant VARCHAR(50) NOT NULL,
        email VARCHAR(100) NOT NULL
    );
	PRINT 'Table enseignant créée';
END
ELSE
BEGIN
    PRINT 'Table enseignant déjà existante';
END
GO

-- Table Niveau si elle n'existe pas déjà
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'niveau')
BEGIN
    CREATE TABLE niveau (
        id_niveau INT PRIMARY KEY,
        nom_niveau VARCHAR(50) NOT NULL
    );
	PRINT 'Table niveau créée';
END
ELSE
BEGIN
    PRINT 'Table niveau déjà existante';
END
GO

-- Table Note si elle n'existe pas déjà
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'note')
BEGIN
    CREATE TABLE note (
        id_note INT PRIMARY KEY,
        id_etudiant INT NOT NULL,
        id_cours INT NOT NULL,
        date_note DATE NOT NULL,
        valeur DECIMAL(5, 2) NOT NULL,
        FOREIGN KEY (id_etudiant) REFERENCES etudiant(id_etudiant),
        FOREIGN KEY (id_cours) REFERENCES cours(id_cours)
    );
	PRINT 'Table note créée';
END
ELSE
BEGIN
PRINT ' Table note deja existante';
END
GO

-- Table Enseigner si elle n'existe pas déjà
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'enseigner')
BEGIN
    CREATE TABLE enseigner (
        id_enseigner INT PRIMARY KEY,
        date_enseigner DATE,
        heure_enseigner TIME,
        id_enseignant INT,
        id_cours INT,
        FOREIGN KEY (id_enseignant) REFERENCES enseignant(id_enseignant),
        FOREIGN KEY (id_cours) REFERENCES cours(id_cours)
    );
	PRINT 'Table enseigner créée';
END
ELSE
BEGIN
PRINT 'Table enseigner deja exxistante ';
END
GO

-- Table Inscrit si elle n'existe pas déjà
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'inscrit')
BEGIN
    CREATE TABLE inscrit (
        id_inscrit INT PRIMARY KEY,
        date_inscrit DATE,
        statut_inscrit CHAR(50),
        id_etudiant INT,
        id_niveau INT,
        FOREIGN KEY (id_etudiant) REFERENCES etudiant(id_etudiant),
        FOREIGN KEY (id_niveau) REFERENCES niveau(id_niveau)
    );
	PRINT 'Table iscrit créée';
END
ELSE
BEGIN PRINT 'Table iscrit deja existante';
END
GO
