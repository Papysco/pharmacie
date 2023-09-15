CREATE TABLE pharmacien (
  id_pharmacien INT AUTO_INCREMENT PRIMARY KEY,
  prenom VARCHAR(50),
  nom VARCHAR(50),
  admin BOOLEAN,
  telephone VARCHAR(15),
  email VARCHAR(100),
  mdp VARCHAR(100)
);

CREATE TABLE medicament (
  id_medicament INT AUTO_INCREMENT PRIMARY KEY,
  nom VARCHAR(100),
  type VARCHAR(50),
  prix DECIMAL(10, 2),
  date_fabrication DATE,
  date_expiration DATE,
  posologie VARCHAR(200),
  -- id_stock INT
);

CREATE TABLE vente (
  id_vente INT AUTO_INCREMENT PRIMARY KEY,
  id_facture_vente INT,
  date_vente DATE,
  quantite INT,
  id_pharmacien INT,
  id_medicament INT
);

CREATE TABLE commande (
  id_commande INT AUTO_INCREMENT PRIMARY KEY,
  date_commande DATE,
  quantite INT,
  id_pharmacien INT,
  id_fournisseur INT,
  id_medicament INT,
  id_facture INT
);

CREATE TABLE stock (
  id_stock INT AUTO_INCREMENT PRIMARY KEY,
  id_medicament INT,
  quantite INT
);

CREATE TABLE fournisseur (
  id_fournisseur INT AUTO_INCREMENT PRIMARY KEY,
  prenom VARCHAR(50),
  nom VARCHAR(50),
  email VARCHAR(50),
  num_tel VARCHAR(15)
);

CREATE TABLE facture_vente (
  id_facture_vente INT AUTO_INCREMENT PRIMARY KEY,
  dateFacture DATE,
  prenom_client VARCHAR(50),
  nom_client VARCHAR(50),
  numero_client VARCHAR(15)
);

CREATE TABLE facture_commande (
  id_facture INT AUTO_INCREMENT PRIMARY KEY,
  date_facture DATE
);


-- ALTER TABLE medicament ADD FOREIGN KEY (id_stock) REFERENCES stock(id_stock);
ALTER TABLE vente ADD FOREIGN KEY (id_facture_vente) REFERENCES facture_vente(id_facture_vente);
ALTER TABLE vente ADD FOREIGN KEY (id_pharmacien) REFERENCES pharmacien(id_pharmacien);
ALTER TABLE vente ADD FOREIGN KEY (id_medicament) REFERENCES medicament(id_medicament);
ALTER TABLE commande ADD FOREIGN KEY (id_pharmacien) REFERENCES pharmacien(id_pharmacien);
ALTER TABLE commande ADD FOREIGN KEY (id_fournisseur) REFERENCES fournisseur(id_fournisseur);
ALTER TABLE commande ADD FOREIGN KEY (id_medicament) REFERENCES medicament(id_medicament);
ALTER TABLE commande ADD FOREIGN KEY (id_facture) REFERENCES facture_commande(id_facture);
ALTER TABLE stock ADD FOREIGN KEY (id_medicament) REFERENCES medicament(id_medicament);
