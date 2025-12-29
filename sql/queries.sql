-- =====================================================
-- Requêtes SQL analytiques - Projet Global Credit Risk
-- =====================================================

-- 1. Calcul de la perte attendue par client
SELECT
    c.client_id,
    c.nom,
    c.secteur,
    cr.montant,
    cr.pd,
    cr.lgd,
    cr.montant * cr.pd * cr.lgd AS perte_attendue
FROM credits cr
JOIN clients c ON cr.client_id = c.client_id;


-- 2. Agrégation des pertes par secteur
SELECT
    c.secteur,
    SUM(cr.montant * cr.pd * cr.lgd) AS perte_totale_attendue
FROM credits cr
JOIN clients c ON cr.client_id = c.client_id
GROUP BY c.secteur;


-- 3. Analyse sectorielle avec window function
SELECT
    c.secteur,
    c.nom,
    cr.montant * cr.pd * cr.lgd AS perte_attendue,
    SUM(cr.montant * cr.pd * cr.lgd)
        OVER (PARTITION BY c.secteur) AS perte_totale_secteur
FROM credits cr
JOIN clients c ON cr.client_id = c.client_id;


-- 4. Classement des secteurs les plus risqués
SELECT
    c.secteur,
    SUM(cr.montant * cr.pd * cr.lgd) AS perte_totale_attendue
FROM credits cr
JOIN clients c ON cr.client_id = c.client_id
GROUP BY c.secteur
ORDER BY perte_totale_attendue DESC;
