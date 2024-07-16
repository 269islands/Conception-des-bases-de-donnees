-- Table Étudiant
CREATE TABLE Etudiant (
    id_etudiant INT PRIMARY KEY,
    nom_etudiant VARCHAR(50) NOT NULL,
    prenom_etudiant VARCHAR(50) NOT NULL,
    date_de_naissance DATE NOT NULL,
    adresse VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL
);

-- Table Cours
CREATE TABLE Cours (
    id_cours INT PRIMARY KEY,
    nom_cours VARCHAR(100) NOT NULL,
    description TEXT NOT NULL,
    credits INT NOT NULL
);

-- Table Enseignant
CREATE TABLE Enseignant (
    id_enseignant INT PRIMARY KEY,
    nom_enseignant VARCHAR(50) NOT NULL,
    prenom_enseignant VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL
);

-- Table Niveau
CREATE TABLE Niveau (
    id_niveau INT PRIMARY KEY,
    nom_niveau VARCHAR(50) NOT NULL
);

-- Table Note
CREATE TABLE Note (
    id_note INT PRIMARY KEY,
    id_etudiant INT NOT NULL,
    id_cours INT NOT NULL,
    valeur DECIMAL(5, 2) NOT NULL,
    date_note DATE NOT NULL,
    FOREIGN KEY (id_etudiant) REFERENCES Etudiant(id_etudiant),
    FOREIGN KEY (id_cours) REFERENCES Cours(id_cours)
);

-- Table Devoir
CREATE TABLE Devoir (
    id_devoir INT PRIMARY KEY,
    id_cours INT NOT NULL,
    date_limite DATE NOT NULL,
    description TEXT,
    FOREIGN KEY (id_cours) REFERENCES Cours(id_cours)
);

-- Table Examen
CREATE TABLE Examen (
    id_examen INT PRIMARY KEY,
    id_cours INT NOT NULL,
    date_examen DATE NOT NULL,
    type VARCHAR(50) NOT NULL,
    FOREIGN KEY (id_cours) REFERENCES Cours(id_cours)
);

-- Table de relation entre :
-- Étudiant et Niveau (many-to-many via une table de liaison)
CREATE TABLE Etudiant_Niveau (
    id_etudiant INT,
    id_niveau INT,
    PRIMARY KEY (id_etudiant, id_niveau),
    FOREIGN KEY (id_etudiant) REFERENCES Etudiant(id_etudiant),
    FOREIGN KEY (id_niveau) REFERENCES Niveau(id_niveau)
);

-- Enseignant et Cours  (many-to-many via une table de liaison)
CREATE TABLE Enseignant_Cours (
    id_enseignant INT,
    id_cours INT,
    PRIMARY KEY (id_enseignant, id_cours),
    FOREIGN KEY (id_enseignant) REFERENCES Enseignant(id_enseignant),
    FOREIGN KEY (id_cours) REFERENCES Cours(id_cours)
);