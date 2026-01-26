# Stress Test Global Risk – Banque Alpha

## Présentation du projet

Ce projet consiste en la mise en œuvre d’un **stress test de risque de crédit** appliqué à un portefeuille bancaire fictif, représentatif des expositions d’une banque universelle nommée *Banque Alpha*.

L’objectif est d’analyser l’impact d’un **choc macroéconomique** sur le risque de crédit du portefeuille, à travers l’évolution des **probabilités de défaut (PD)** et de la **perte attendue (Expected Loss – EL)**, en adoptant une lecture **sectorielle** du risque.

Le projet s’inscrit dans une démarche proche des pratiques des équipes **Global Risk** en environnement bancaire et est accompagné d'un document de synthèse (étude decas) présentant la méthodologie.
[Consulter l’étude de cas (PDF)]( Carole_Alain_Stress_Test_Global_Risk_Banque_Alpha.pdf) 


## Technologies utilisées

- Python
- Pandas
- NumPy
- Matplotlib
- JupyterLab

## Objectifs de l’analyse

- Simuler un portefeuille de crédit réaliste en situation normale (baseline)
- Appliquer un scénario de stress macroéconomique
- Mesurer l’impact du choc sur les indicateurs de risque de crédit
- Comparer la sensibilité d’un secteur cyclique et d’un secteur défensif
- Identifier les phénomènes de concentration sectorielle du risque


## Structure du portefeuille

Le portefeuille est composé de **130 entreprises fictives**, réparties de manière équilibrée entre deux secteurs :

- **Construction (65 entités)**  
  Secteur cyclique, fortement sensible aux conditions macroéconomiques dégradées

- **Grande Distribution alimentaire (65 entités)**  
  Secteur défensif, servant de groupe de référence


## Indicateurs de risque utilisés

- **Probability of Default (PD)**  
- **Loss Given Default (LGD)**  
- **Exposure at Default (EAD / Encours)**  
- **Expected Loss (EL)**  

La perte attendue est calculée selon la formule standard : EL = PD × LGD × EAD

## Scénarios de stress


### Scénario macroéconomique

Le scénario retenu correspond à une situation de **stagflation sévère**, caractérisée notamment par :
- Recul du PIB
- Inflation persistante
- Hausse marquée des taux d’intérêt
- Augmentation des prix de l’énergie

### Stress de crédit appliqué

L’analyse repose sur **deux niveaux de stress** :

- **Stress modéré**  
  Utilisé pour les résultats chiffrés et graphiques présentés.  
  Il repose sur une augmentation sectorielle différenciée des probabilités de défaut.

- **Stress sévère**  
  Test de robustesse complémentaire, appliquant des multiplicateurs plus élevés sur les PD, avec plafonnement à 100 %, afin d’explorer un scénario de dégradation extrême.
   Le stress sévère n’est pas utilisé pour les résultats graphiques principaux, mais sert de test de robustesse méthodologique du modèle.