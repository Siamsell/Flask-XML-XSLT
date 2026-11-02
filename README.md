

```markdown
#  Annuaire des Artistes Algériens

![Python](https://img.shields.io/badge/Python-3.8%2B-blue?logo=python&logoColor=white)
![Flask](https://img.shields.io/badge/Flask-2.x-black?logo=flask&logoColor=white)
![XML](https://img.shields.io/badge/XML-Parsing-orange)
![XSLT](https://img.shields.io/badge/XSLT-Transform-green)
![License](https://img.shields.io/badge/License-Academic-lightgrey)

> Application web développée avec **Flask** permettant de rechercher des artistes algériens et d'afficher leurs informations (ville, site web, albums, chansons) à partir d'une base de données **XML**, avec transformation **XSLT** pour l'affichage.

---

## Table des matières

- [Aperçu](#-aperçu)
- [Fonctionnalités](#-fonctionnalités)
- [Structure du projet](#-structure-du-projet)
- [Installation](#-installation)
- [Utilisation](#-utilisation)
- [Routes de l'application](#-routes-de-lapplication)
- [Technologies utilisées](#-technologies-utilisées)
- [Fichiers de données](#-fichiers-de-données)
- [Exemples de recherche](#-exemples-de-recherche)
- [Auteurs](#-auteurs)
- [Licence](#-licence)

---

## Aperçu

L'application permet de :
1. **Rechercher un artiste** par son nom depuis la page d'accueil
2. **Consulter la liste complète** des artistes via une transformation XSLT

Les données sont stockées dans un fichier `ArtistAlgerian.xml` et mises en forme via une feuille de style `ArtistAlgerian.xsl`.

---

##Fonctionnalités

- **Recherche d'artistes par nom** (insensible à la casse)
- **Lecture de données XML** via `xml.etree.ElementTree`
- **Transformation XSLT en HTML** via `lxml`
- **Interface web responsive** avec Flask et templates Jinja2
- **Affichage structuré** : profil artiste, albums et pistes
- **Liens externes sécurisés** (ouverture dans un nouvel onglet avec `noopener`)
- **Gestion des erreurs** : fichier introuvable, XML invalide, etc.

---

##  Structure du projet

```
artistes-algeriens/
│
├── app.py                    # Application Flask principale
├── ArtistAlgerian.xml        # Base de données des artistes
├── ArtistAlgerian.xsl        # Feuille de style XSLT
├── ArtistAlgerian.html       # Sortie HTML générée par XSLT
├── index.html                # Template Flask (recherche)
├── style.css                 # Styles CSS
├── requirements.txt          # Dépendances Python
└── static/                   # Fichiers statiques (optionnel)
```

---

## Installation

### Prérequis

- **Python 3.8+**
- **pip**
- Un navigateur web moderne

### Étapes

1. **Cloner le repository**
   ```bash
   git clone https://github.com/VOTRE_USERNAME/artistes-algeriens.git
   cd artistes-algeriens
   ```

2. **Créer un environnement virtuel (recommandé)**
   ```bash
   python -m venv venv
   ```

3. **Activer l'environnement virtuel**
   ```bash
   # Linux / macOS
   source venv/bin/activate

   # Windows
   venv\Scripts\activate
   ```

4. **Installer les dépendances**
   ```bash
   pip install -r requirements.txt
   ```

   Ou manuellement :
   ```bash
   pip install flask lxml
   ```

5. **Lancer l'application**
   ```bash
   python app.py
   ```

6. **Ouvrir dans le navigateur**
   - Page de recherche : [http://localhost:5000](http://localhost:5000)
   - Liste complète via XSLT : [http://localhost:5000/xslt](http://localhost:5000/xslt)

---

## Utilisation

### Recherche d'un artiste

1. Ouvrez [http://localhost:5000](http://localhost:5000)
2. Saisissez un nom (ex. `FIRGANI`, `ALHACHEMI`, `mohamed`)
3. Cliquez sur **Rechercher**
4. Les informations de l'artiste s'affichent : ville, site web, albums et pistes

### Affichage complet via XSLT

Accédez à [http://localhost:5000/xslt](http://localhost:5000/xslt) pour voir la liste de tous les artistes, générée dynamiquement par transformation XSLT.

---

##  Routes de l'application

| Route    | Méthode     | Description                                      |
|----------|-------------|--------------------------------------------------|
| `/`      | GET, POST   | Page de recherche d'artistes                     |
| `/xslt`  | GET         | Affichage complet via transformation XSLT        |

---

## Technologies utilisées

| Technologie | Rôle |
|-------------|------|
| **Python 3.8+** | Langage principal |
| **Flask** | Framework web |
| **lxml** | Parsing XML et transformation XSLT |
| **ElementTree** | Lecture des données XML pour la recherche |
| **Jinja2** | Moteur de templates HTML |
| **HTML5 / CSS3** | Interface utilisateur |
| **XSLT 1.0** | Transformation XML → HTML |

---

##  Fichiers de données

### `ArtistAlgerian.xml`

Structure d'un artiste :

```xml
<artist>
    <name>NOM DE L'ARTISTE</name>
    <city>Ville</city>
    <website>http://site-web.com</website>
    <albums>
        <album>
            <title>Titre de l'album</title>
            <genre>Genre musical</genre>
            <tracklist>Titre de la chanson</tracklist>
        </album>
    </albums>
</artist>
```

### `ArtistAlgerian.xsl`

Feuille de style XSLT qui transforme le fichier XML en page HTML stylisée (bordures, tableaux, en-têtes, etc.).

---

## Exemples de recherche

Essayez les recherches suivantes :

| Recherche    | Résultat attendu |
|--------------|------------------|
| `FIRGANI`    | FIRGANI Mohamed Taher (Constantine) |
| `ALHACHEMI`  | ALHACHEMI GUARWABI (Alger) |
| `mohamed`    | FIRGANI Mohamed Taher |
| `alger`      | ALHACHEMI GUARWABI (via la ville) |

---

## Résolution des problèmes courants

| Problème | Solution |
|----------|----------|
| `ModuleNotFoundError: No module named 'flask'` | Exécutez `pip install flask` |
| `ModuleNotFoundError: No module named 'lxml'` | Exécutez `pip install lxml` |
| Erreur XSLT au chargement | Vérifiez que `ArtistAlgerian.xml` et `ArtistAlgerian.xsl` sont dans le même dossier que `app.py` |
| Le CSS ne s'affiche pas | Déplacez `style.css` dans un dossier `static/` ou ajustez le chemin dans `index.html` |

##  Licence

Projet académique — Libre d'utilisation à des fins **éducatives**.




Bon push sur GitHub ! 🚀
