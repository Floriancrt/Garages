# Garages : adresses email OpenStreetMap

- [Télécharger le classeur Excel](https://github.com/Floriancrt/Garages/raw/refs/heads/main/exports/Garages_emails_OSM.xlsx)
- [Télécharger le CSV enrichi](https://github.com/Floriancrt/Garages/raw/refs/heads/main/exports/Garages_emails_OSM.csv)
- [Consulter le bilan du rapprochement](bilan_rapprochement.json)

## Résultat après audit

| Indicateur | Résultat |
| --- | ---: |
| Lignes d’origine conservées | 102 755 |
| Garages avec au moins un email attribué | 1 394 |
| Adresses email distinctes | 1 360 |
| Cellules email renseignées | 1 396 |
| Première livraison : garages avec email | 952 |
| Augmentation nette | 442 (+46,4 %) |
| Nouvelles lignes renseignées | 451 |
| Anciennes attributions retirées après contrôle | 9 |
| Lignes avec des candidats non attribués | 895 |

Le classeur comprend **Bilan et sources**, **Tous les garages**, **Avec email**
et **À vérifier**. Ce dernier onglet contient 1178 candidats pour
895 lignes : ces emails nécessitent une vérification et ne sont pas
attribués aux garages dans les colonnes email du fichier principal.
Le CSV complet utilise le point-virgule et l’encodage UTF-8 avec BOM.

## Corrections du rapprochement

La première méthode rejetait certaines variantes de voies et annotations de
zones industrielles. L’audit a ajouté leur normalisation, les articles et
abréviations usuelles, les variantes de noms commerciaux et d’opérateurs, ainsi
que le rapprochement des objets OSM décrivant un même établissement. Les noms
partageant uniquement une commune ou des termes génériques de l’automobile
ne suffisent pas à attribuer un email.

Les SIRET du CSV sont arrondis en notation scientifique. Ils restent inchangés
et ne sont jamais traités comme des SIRET complets. Une compatibilité à la
précision disponible doit être corroborée par l’adresse, la voie ou l’identité
et la localité. Les contradictions géographiques ou d’identifiants et les
correspondances ambiguës sont écartées.

## Limites de la source

Overpass est un moteur de requêtes sur OpenStreetMap : il consulte les mêmes
données et n’apporte pas une seconde base d’emails.
Le contrôle des 12 extraits a recensé **20 707 objets `shop=car_repair`, dont
2 684 avec un email actif exploitable (environ 13 %)**. Sur l’ensemble des
catégories automobiles contrôlées, 38 970 objets ont été recensés, dont
5 449 avec un email actif exploitable. Ces catégories cartographiques ne
recouvrent pas exactement les codes NAF du CSV SIRENE.

Les données proviennent exclusivement d’emails publiés dans OSM. Aucune
recherche d’email sur les sites des entreprises n’a été réalisée. Les extraits
Geofabrik et OpenStreetMap France contiennent des données du 19 octobre 2026 ;
ils ont été téléchargés lorsque les serveurs Overpass étaient indisponibles.
La localisation complémentaire utilise les contours officiels des communes.

Les liens sources et la méthode figurent dans les fichiers. L’actualité et la
délivrabilité des emails ne sont pas vérifiées. Une cellule vide signifie
qu’aucune attribution suffisamment fiable n’a été réalisée ; elle ne prouve
pas que le garage n’a pas d’email.

## Contrôles et attribution

Les 102 755 lignes et leurs champs d’origine ont été vérifiés, ainsi que
la présence de chaque email attribué dans les tags actifs des objets OSM
cités, les contradictions géographiques ou d’identifiants, l’intégrité du
classeur et la séparation des candidats à vérifier. Les empreintes des
fichiers et les décomptes sont dans le bilan JSON.

Données email : © les contributeurs d’OpenStreetMap, sous licence ODbL.
https://www.openstreetmap.org/copyright

Extraits : https://download.geofabrik.de/europe/france.html et
https://download.openstreetmap.fr/extracts/

Contours des communes : https://geo.api.gouv.fr/

Conserver l’attribution OpenStreetMap avec les données enrichies diffusées.
