# Analyse de risque crédit sous scénario macroéconomique

## Objectif du projet

Ce projet montre comment analyser l’évolution d’un portefeuille de crédit à partir d’un scénario macroéconomique défavorable.

L’objectif est de structurer les données, calculer des indicateurs de risque et comparer l’impact du scénario sur différents secteurs.

Ce projet met l’accent sur la logique d’analyse, la lecture des résultats et l’interprétation métier.


## Contexte

Un portefeuille fictif de 130 entreprises est analysé dans deux secteurs :

- Construction (secteur cyclique)
- Grande distribution alimentaire (secteur défensif)

Un scénario macroéconomique de type stagflation est appliqué afin d’évaluer la sensibilité du portefeuille.


## Méthodologie

1. Création d’un portefeuille de crédit (baseline)
2. Application d’un scénario de stress macroéconomique
3. Ajustement des probabilités de défaut (PD)
4. Calcul de la perte attendue (Expected Loss)
5. Comparaison des résultats par secteur


## Indicateurs utilisés

- PD : probabilité de défaut
- LGD : perte en cas de défaut
- EAD : exposition au défaut
- EL : perte attendue

Ces indicateurs permettent d’évaluer l’impact d’un choc économique sur le portefeuille.


## Insights principaux

- Le scénario de stress augmente significativement le niveau de risque
- Le secteur construction est plus sensible aux chocs macroéconomiques
- La perte attendue progresse plus fortement dans les secteurs cycliques
- L’analyse met en évidence des concentrations de risque sectorielles


## Technologies utilisées

- Python
- Pandas
- NumPy
- Matplotlib
- JupyterLab


## Compétences mobilisées

- Nettoyage et structuration de données
- Création d’indicateurs
- Analyse comparative
- Visualisation de données
- Interprétation métier


## Conclusion

Ce stress test met en évidence l’impact d’un scénario macroéconomique dégradé sur le risque de crédit du portefeuille.
L’augmentation des probabilités de défaut (PD) et de la perte attendue (EL) reflète une détérioration du profil de risque, particulièrement marquée sur les secteurs les plus sensibles au cycle économique.
Dans une logique de gestion des risques, ce type d’analyse permet d’anticiper les vulnérabilités du portefeuille, d’identifier les concentrations sectorielles et d’alimenter des décisions stratégiques (allocation, limites de risque, capital).

## Documentation

Une étude de cas complète est disponible :

[Voir le document PDF](./Carole_Alain_Stress_Test_Global_Risk_Banque_Alpha.pdf)
