-- Création de la base de données
CREATE DATABASE IF NOT EXISTS The_district;
USE The_district;

-- Table des catégories de plats
CREATE TABLE categorie (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(100) NOT NULL
);

-- Table des plats
CREATE TABLE plat (
    id INT AUTO_INCREMENT PRIMARY KEY,
    libelle VARCHAR(100) NOT NULL,
    description TEXT,
    prix DECIMAL(6,2) NOT NULL,
    image VARCHAR(255),
    active BOOLEAN DEFAULT TRUE,
    categorie_id INT,
    FOREIGN KEY (categorie_id) REFERENCES categorie(id) ON DELETE SET NULL
);

-- Table des utilisateurs
CREATE TABLE utilisateur (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE,
    mot_de_passe VARCHAR(255) NOT NULL,
    role ENUM('client', 'admin', 'chef') NOT NULL DEFAULT 'client'
);

-- Table des commandes
CREATE TABLE commande (
    id INT AUTO_INCREMENT PRIMARY KEY,
    utilisateur_id INT,
    nom VARCHAR(100) NOT NULL,
    prenom VARCHAR(100) NOT NULL,
    adresse VARCHAR(255) NOT NULL,
    ville VARCHAR(100) NOT NULL,
    telephone VARCHAR(20),
    email VARCHAR(150) NOT NULL,
    date_commande DATETIME DEFAULT CURRENT_TIMESTAMP,
    statut VARCHAR(50) DEFAULT 'en attente',
    FOREIGN KEY (utilisateur_id) REFERENCES utilisateur(id) ON DELETE SET NULL
);

-- Table des lignes de commande (panier)
CREATE TABLE ligne_commande (
    id INT AUTO_INCREMENT PRIMARY KEY,
    commande_id INT NOT NULL,
    plat_id INT NOT NULL,
    quantite INT NOT NULL DEFAULT 1,
    FOREIGN KEY (commande_id) REFERENCES commande(id) ON DELETE CASCADE,
    FOREIGN KEY (plat_id) REFERENCES plat(id) ON DELETE CASCADE
);

-- Table des messages envoyés via la page contact
CREATE TABLE contact (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL,
    message TEXT NOT NULL,
    date_envoi DATETIME DEFAULT CURRENT_TIMESTAMP
);
