-- =====================================================
-- Schéma relationnel - Projet Global Credit Risk
-- Préparation du modèle de données SQL
-- =====================================================

CREATE TABLE clients (
    client_id INT PRIMARY KEY,
    nom VARCHAR(100),
    secteur VARCHAR(50),
    pays VARCHAR(50)
);

CREATE TABLE credits (
    credit_id INT PRIMARY KEY,
    client_id INT,
    montant DECIMAL(12,2),
    pd DECIMAL(5,4),
    lgd DECIMAL(5,4),
    FOREIGN KEY (client_id) REFERENCES clients(client_id)
);

CREATE TABLE notations (
    notation_id INT PRIMARY KEY,
    client_id INT,
    notation VARCHAR(10),
    FOREIGN KEY (client_id) REFERENCES clients(client_id)
);

CREATE TABLE secteurs (
    secteur VARCHAR(50) PRIMARY KEY,
    type_secteur VARCHAR(20)
);
