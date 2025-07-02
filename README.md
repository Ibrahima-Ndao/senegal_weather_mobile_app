# 🌦️ Senegal Weather App 🇸🇳

> Projet Flutter – Examen Développement Mobile MDSIA/ISI 2025  
> Réalisé par : **Ibrahima Ndao**  
> Date limite : 02 juillet 2025 à 23h59m59s

---

## 🎯 Objectif

Créer une application mobile Flutter responsive et esthétique qui :

- Récupère les données météo en temps réel via une API,
- Affiche une jauge de progression animée,
- Présente les résultats dans un tableau interactif,
- Offre une navigation fluide avec affichage des détails d’une ville et sa localisation sur Google Maps,
- Gère les erreurs et propose une expérience en mode sombre & clair.

---

## 📱 Fonctionnalités

### 🏠 Écran d’accueil

- Message d’introduction accueillant.
- Bouton central pour lancer l’expérience météo.

### 📊 Écran principal

- Jauge de progression animée (chargement dynamique).
- Requêtes API météo pour 5 villes du Sénégal.
- Messages de chargement animés (cycliques).
- Une fois le chargement terminé : tableau interactif avec les résultats météo.

### 🌍 Détails par ville

- Appui sur une ville → redirection vers une page détaillée.
- Affichage des infos météo + localisation sur Google Maps.
- Affichage d’un message d’erreur en cas d’échec de l’API.

### 🔄 Navigation & Rejouabilité

- La jauge devient un bouton "Recommencer" une fois le chargement terminé.
- Le bouton retour ramène à l’accueil.

---

## 🌐 Technologies & Outils

- **Flutter** 3.32.4
- **Retrofit** pour les appels API
- **Provider** pour la gestion d'état
- **Google Maps Flutter**
- **Animations Flutter** (jauge, transitions)
- Mode **dark/light**
- **Clean architecture** (dossier `core`, `data`, `domain`, `presentation`)

---

## 🧪 Installation & Lancement

### 1. Cloner le projet

```bash
git clone https://github.com/Ibrahima-Ndao/senegal_weather_mobile_app.git
cd senegal_weather_app
```
