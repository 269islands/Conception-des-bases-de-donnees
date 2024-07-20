-- Spécifie la base de données dans laquelle les données seront importées.
USE EtudiantsDB;
GO

-- FIELDTERMINATOR = ',' spécifie que les champs sont séparés par des virgules.
-- ROWTERMINATOR = '\n' indique que les lignes sont terminées par un retour à la ligne.
-- FIRSTROW = 2 indique que la première ligne du fichier CSV est une ligne d'en-tête et ne doit pas être importée comme des données.
-- BEGIN TRY ... END TRY / BEGIN CATCH ... END CATCH : Tente d'exécuter les commandes SQL à l'intérieur du bloc TRY. 
-- Si une erreur se produit, le bloc CATCH capture l'erreur et exécute un traitement spécifique.

-- Insertion des données dans la table etudiant depuis CSV
BEGIN TRY
    BULK INSERT etudiant
    FROM 'D:\Data Engineering\Mentorat\EtudiandsBD\SQL\csvdata\csv\etudiant.csv'
    WITH (
        FIELDTERMINATOR = ',',
        ROWTERMINATOR = '\n',
        FIRSTROW = 2
    );
    PRINT 'Les données ont été chargées dans la table etudiant.';
END TRY
BEGIN CATCH
    PRINT 'Erreur : Les données pour la table etudiant existent déjà ou il y a une erreur lors du chargement.';
END CATCH
GO

-- Répétez le bloc TRY...CATCH pour chaque table

-- Insertion des données dans la table cours depuis CSV
BEGIN TRY
    BULK INSERT cours
    FROM 'D:\Data Engineering\Mentorat\EtudiandsBD\SQL\csvdata\csv\cours.csv'
    WITH (
        FIELDTERMINATOR = ',',
        ROWTERMINATOR = '\n',
        FIRSTROW = 2
    );
    PRINT 'Les données ont été chargées dans la table cours.';
END TRY
BEGIN CATCH
    PRINT 'Erreur : Les données pour la table cours existent déjà ou il y a une erreur lors du chargement.';
END CATCH
GO

-- Insertion des données dans la table enseignant depuis CSV
BEGIN TRY
    BULK INSERT enseignant
    FROM 'D:\Data Engineering\Mentorat\EtudiandsBD\SQL\csvdata\csv\enseignant.csv'
    WITH (
        FIELDTERMINATOR = ',',
        ROWTERMINATOR = '\n',
        FIRSTROW = 2
    );
    PRINT 'Les données ont été chargées dans la table enseignant.';
END TRY
BEGIN CATCH
    PRINT 'Erreur : Les données pour la table enseignant existent déjà ou il y a une erreur lors du chargement.';
END CATCH
GO

-- Répétez le bloc TRY...CATCH pour chaque table restante (niveau, note, enseigner, inscrit)

-- Insertion des données dans la table niveau depuis CSV
BEGIN TRY
    BULK INSERT niveau
    FROM 'D:\Data Engineering\Mentorat\EtudiandsBD\SQL\csvdata\csv\niveau.csv'
    WITH (
        FIELDTERMINATOR = ',',
        ROWTERMINATOR = '\n',
        FIRSTROW = 2
    );
    PRINT 'Les données ont été chargées dans la table niveau.';
END TRY
BEGIN CATCH
    PRINT 'Erreur : Les données pour la table niveau existent déjà ou il y a une erreur lors du chargement.';
END CATCH
GO

-- Insertion des données dans la table note depuis CSV
BEGIN TRY
    BULK INSERT note
    FROM 'D:\Data Engineering\Mentorat\EtudiandsBD\SQL\csvdata\csv\note.csv'
    WITH (
        FIELDTERMINATOR = ',',
        ROWTERMINATOR = '\n',
        FIRSTROW = 2
    );
    PRINT 'Les données ont été chargées dans la table note.';
END TRY
BEGIN CATCH
    PRINT 'Erreur : Les données pour la table note existent déjà ou il y a une erreur lors du chargement.';
END CATCH
GO

-- Insertion des données dans la table enseigner depuis CSV
BEGIN TRY
    BULK INSERT enseigner
    FROM 'D:\Data Engineering\Mentorat\EtudiandsBD\SQL\csvdata\csv\enseigner.csv'
    WITH (
        FIELDTERMINATOR = ',',
        ROWTERMINATOR = '\n',
        FIRSTROW = 2
    );
    PRINT 'Les données ont été chargées dans la table enseigner.';
END TRY
BEGIN CATCH
    PRINT 'Erreur : Les données pour la table enseigner existent déjà ou il y a une erreur lors du chargement.';
END CATCH
GO

-- Insertion des données dans la table inscrit depuis CSV
BEGIN TRY
    BULK INSERT inscrit
    FROM 'D:\Data Engineering\Mentorat\EtudiandsBD\SQL\csvdata\csv\inscrit.csv'
    WITH (
        FIELDTERMINATOR = ',',
        ROWTERMINATOR = '\n',
        FIRSTROW = 2
    );
    PRINT 'Les données ont été chargées dans la table inscrit.';
END TRY
BEGIN CATCH
    PRINT 'Erreur : Les données pour la table inscrit existent déjà ou il y a une erreur lors du chargement.';
END CATCH
GO
