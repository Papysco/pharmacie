-- Table fournisseur
INSERT INTO fournisseur (prenom, nom, email ,num_tel)
VALUES
  ('Aliou', 'Diouf', 'dioufAliou@example.com','77 123 45 67'),
  ('Fatou', 'Sow', 'sowFatou@example.com', '76 234 56 78'),
  ('Moussa', 'Ndiaye', 'ndiayeMoussa@example.com', '78 345 67 89'),
  ('Aissatou', 'Thiam', 'thiamAissatou@example.com', '77 456 78 90'),
  ('Mamadou', 'Sylla', 'syllaMamadou@example.com', '76 567 89 01'),
  ('Khadim', 'Gueye', 'gueyeKhadim@example.com', '78 678 90 12'),
;

-- Table pharmacien
INSERT INTO pharmacien (prenom, nom, admin, telephone, email, mdp)
VALUES
  ('Omar', 'Diop', 1, '77 987 65 43', 'omar.diop@example.com', 'mdp123'),
  ('Mariama', 'Ndiaye', 0, '76 876 54 32', 'mariama.ndiaye@example.com', 'mdp456'),
  ('Moussa', 'Sylla', 0, '78 765 43 21', 'moussa.sylla@example.com', 'mdp789'),
  ('Awa', 'Ba', 0, '77 654 32 10', 'awa.ba@example.com', 'mdpabc'),
  ('Alioune', 'Sow', 0, '76 543 21 98', 'alioune.sow@example.com', 'mdpdef'),
  ('Fatou', 'Gueye', 0, '78 432 10 98', 'fatou.gueye@example.com', 'mdpghe'),
  ('Ibrahima', 'Fall', 1, '77 392 13 77', 'papyscofall@gmail.com', '1234')
;

-- Table medicament
INSERT INTO medicament (nom, type, prix, date_fabrication, date_expiration, posologie)
VALUES
  ('Paracetamol', 'Antalgique', 500, '2023-01-05', '2024-01-05', '1 comprimé toutes les 6 heures'),
  ('Ibuprofene', 'Anti-inflammatoire', 700, '2023-02-10', '2024-02-10', '1 comprimé toutes les 8 heures'),
  ('Amoxicilline', 'Antibiotique', 1000, '2022-12-15', '2023-12-15', '1 comprimé matin et soir'),
  ('Paroxetine', 'Antidépresseur', 1200, '2022-11-20', '2023-11-20', '1 comprimé par jour'),
  ('Aspirine', 'Antiplaquettaire', 300, '2023-03-25', '2024-03-25', '1 comprimé par jour'),
  ('Omeprazole', 'Antiulcéreux', 900, '2023-04-30', '2024-04-30', '1 comprimé par jour'),
  ('Loratadine', 'Antihistaminique', 600, '2023-05-12', '2024-05-12', '1 comprimé par jour'),
  ('Metformine', 'Antidiabétique', 800, '2023-06-18', '2024-06-18', '1 comprimé par jour'),
  ('Ranitidine', 'Antiulcéreux', 750, '2023-07-22', '2024-07-22', '1 comprimé matin et soir'),
  ('Tramadol', 'Antalgique', 1000, '2023-08-30', '2024-08-30', '1 comprimé toutes les 6 heures'),
  ('Diazepam', 'Anxiolytique', 950, '2023-09-05', '2024-09-05', '1 comprimé par jour'),
  ('Ceftriaxone', 'Antibiotique', 1100, '2023-10-12', '2024-10-12', '1 injection par jour'),
  ('Fluoxetine', 'Antidépresseur', 800, '2023-11-20', '2024-11-20', '1 comprimé par jour'),
  ('Lisinopril', 'Antihypertenseur', 700, '2023-12-22', '2024-12-22', '1 comprimé par jour'),
  ('Prednisolone', 'Anti-inflammatoire', 550, '2024-01-02', '2025-01-02', '1 comprimé toutes les 8 heures'),
  ('Glibenclamide', 'Antidiabétique', 650, '2024-02-10', '2025-02-10', '1 comprimé par jour'),
  ('Atorvastatine', 'Hypolipidémiant', 900, '2024-03-15', '2025-03-15', '1 comprimé par jour'),
  ('Metronidazole', 'Antibiotique', 750, '2024-04-20', '2025-04-20', '1 comprimé matin et soir'),
  ('Ciprofloxacin', 'Antibiotique', 850, '2024-05-25', '2025-05-25', '1 comprimé toutes les 8 heures'),
  ('Nifedipine', 'Antihypertenseur', 600, '2024-06-30', '2025-06-30', '1 comprimé par jour')
;

-- Table stock
INSERT INTO stock (id_medicament, quantite)
VALUES
  (1, 100),
  (2, 80),
  (3, 120),
  (4, 60),
  (5, 150),
  (6, 200),
  (7, 90),
  (8, 110),
  (9, 70),
  (10, 180),
  (11, 100),
  (12, 50),
  (13, 80),
  (14, 70),
  (15, 60),
  (16, 120),
  (17, 90),
  (18, 40),
  (19, 100),
  (20, 75)
;


-- Insérer des factures de vente
INSERT INTO facture_vente (dateFacture, prenom_client, nom_client, numero_client)
VALUES
  ('2023-08-10', 'Amina', 'Diallo', '77 123 45 67'),
  ('2023-08-11', 'Saliou', 'Cisse', '76 234 56 78'),
  ('2023-08-12', 'Kadiatou', 'Diaw', '78 345 67 89'),
  ('2023-08-13', 'Cheikh', 'Gaye', '77 456 78 90'),
  ('2023-08-14', 'Ndeye', 'Thiam', '76 567 89 01')
;

-- Insérer des ventes liées aux factures
-- Note: Les ID de facture_vente sont utilisés comme références dans la table vente
INSERT INTO vente (id_facture_vente, date_vente, quantite, id_pharmacien, id_medicament)
VALUES
  (1, '2023-08-10', 3, 1, 3),
  (2, '2023-08-11', 2, 2, 8),
  (3, '2023-08-12', 1, 3, 5),
  (4, '2023-08-13', 4, 4, 12),
  (5, '2023-08-14', 2, 5, 17),
  (1, '2023-08-10', 1, 1, 6),
  (2, '2023-08-11', 3, 2, 1),
  (3, '2023-08-12', 2, 3, 10),
  (4, '2023-08-13', 1, 4, 14),
  (5, '2023-08-14', 5, 5, 18)
;


COMMIT;
