# Garages : emails OSM vérifiés directement par Overpass

- [Télécharger le classeur Excel](https://github.com/Floriancrt/Garages/raw/refs/heads/main/exports/Garages_emails_OSM.xlsx)
- [Télécharger le CSV enrichi](https://github.com/Floriancrt/Garages/raw/refs/heads/main/exports/Garages_emails_OSM.csv)
- [Bilan des contrôles et du rapprochement](bilan_rapprochement.json)
- [Traçabilité de la collecte Overpass](collecte_overpass.json) et [requêtes exécutées](overpass_requetes/)

## Résultat

| Indicateur | Valeur |
| --- | ---: |
| Lignes d’origine conservées | 102 755 |
| Garages avec au moins un email attribué | 1 396 |
| Adresses email distinctes attribuées | 1 362 |
| Cellules email renseignées | 1 398 |
| Lignes avec plusieurs emails | 2 |
| Livraison précédente après correction du rapprochement | 1 394 |
| Nouvelles lignes renseignées depuis cette livraison | 2 |
| Anciennes attributions retirées | 0 |
| Candidats séparés, non attribués | 1 178 |

Le classeur comporte **Bilan et sources**, **Tous les garages**, **Avec email**
et **À vérifier**. Les candidats de ce dernier onglet ne sont pas attribués
dans les colonnes email du fichier principal. Plusieurs adresses pour un
même établissement sont réparties dans plusieurs colonnes ; les cellules
restent vides si aucune attribution suffisamment fiable n’est possible.
Le CSV utilise le point-virgule et UTF-8 avec BOM.

## Collecte directe Overpass

Les tags des objets utilisés dans cette livraison proviennent des réponses
de `https://overpass-api.de/api/interpreter`, obtenues le 20 octobre 2026.
Les 8 réponses utilisées sont complètes, sans message
d’interruption. Leurs empreintes SHA-256, dates et requêtes sont archivées
dans le bilan de collecte. Les tags du jeu consolidé ont été comparés aux
réponses API avant publication, puis chaque email attribué a été vérifié
dans les tags actifs de ses sources OSM citées.

Réinterrogation directe par identifiant OSM des objets et candidats automobiles repérés dans les extraits précédents, complétée par les lots géographiques Overpass réussis.

Les extraits Geofabrik et OpenStreetMap France de la livraison précédente
servent à repérer les identifiants des objets supplémentaires à réinterroger.
Leurs emails ne sont pas recopiés comme résultats Overpass : les tags et
emails de cette livraison ont été obtenus à nouveau par l’API.

Les requêtes géographiques nationales et les lots les plus denses ont expiré. Les objets déjà repérés ont été réinterrogés par identifiant ; cette collecte ne constitue pas une nouvelle recherche géographique exhaustive.

Overpass interroge la base OpenStreetMap. Une nouvelle collecte via cette
API peut confirmer les mêmes emails que les extraits OSM précédents.
Aucune recherche sur les sites des entreprises n’a été effectuée.

## Rapprochement et contrôles

Le rapprochement utilise les adresses normalisées, les variantes de noms et
les localités corroborées. Les SIRET du CSV sont arrondis en notation
scientifique : ils restent inchangés et ne sont jamais traités comme des
identifiants complets. Leur compatibilité doit être corroborée par l’adresse,
la voie ou l’identité et la localité. Les contradictions et ambiguïtés sont
écartées. La localisation complémentaire utilise les contours officiels des
communes de https://geo.api.gouv.fr/.

Les 102 755 lignes et champs d’origine sont conservés. Les contrôles
portent aussi sur l’origine API de tous les tags, la présence des emails dans
les tags actifs, les contradictions géographiques et d’identifiants,
l’intégrité du classeur et la séparation des candidats à vérifier.
L’actualité et la délivrabilité des emails ne sont pas vérifiées. Une cellule
vide ne prouve pas qu’un établissement n’a pas d’email.

Données email : © les contributeurs d’OpenStreetMap, sous licence ODbL.
https://www.openstreetmap.org/copyright

Conserver cette attribution lors de la diffusion des données enrichies.
