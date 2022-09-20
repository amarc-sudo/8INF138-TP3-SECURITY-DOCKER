<a name="readme-top"></a>
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url]

# :books: TP3 - 8INF138 

Ceci est le TP3 du module 8INF138 de l'Universite du Quebec a Chicoutimi

Le rapport ce situe dans le depot

Le travail visuel n'a pas ete travaille car ce n'etait pas l'objectif du TP
Si vous voulez vous amusez a faire du material UI je suis ouvert au pull-request

## :ship: :gear: Compilation 

Pour lancer et tester le projet il faut faire les commandes suivantes :

```
git clone https://github.com/amarc-sudo/8INF138-TP3-SECURITY-DOCKER.git
cd 8INF138-TP3-SECURITY-DOCKER
git submodule init
git submodule update
git submodule foreach git pull origin master
docker-compose up -d --force-recreate
```

:warning: ATTENTION :warning: PARFOIS LE DOCKER DU BACK EST A RELANCER VIA L'INTERFACE

Les ports 4200, 8080 et 3306 doivent etre disponible sur la machine

## :walking: Marche a suivre pour le test

Adresse du site :
http://localhost:4200

Il y a 3 utilisateur :

| Login        | Password    | Role        |
|--------------|-------------|-------------|
| admin        | Tp3Aurelien | admin       |
| utilisateur1 | Tp3Aurelien | residentiel |
| utilisateur2 | Tp3Aurelien | affaire     |

Il n'y a qu'une seule page de connexion pour les trois utilisateur

## :key: Changement d'un mot de passe a la main

J'ai fourni un script de generation de mot de passe au cas ou si on a besoin de changer le mot de pass d'un utilisateur afin d'effectuer a des test. 

```
cd Scripts
java passwordGenerator.java lePasswordQuonSouhaiteEncrypter
```

## Built With

* [![Angular][Angular.io]][Angular-url]



<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/amarc-sudo/8INF138-TP3-SECURITY-DOCKER.svg?style=for-the-badge
[contributors-url]: https://github.com/amarc-sudo/8INF138-TP3-SECURITY-DOCKER/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/amarc-sudo/8INF138-TP3-SECURITY-DOCKER.svg?style=for-the-badge
[forks-url]: https://github.com/amarc-sudo/8INF138-TP3-SECURITY-DOCKER/network/members
[stars-shield]: https://img.shields.io/github/stars/amarc-sudo/8INF138-TP3-SECURITY-DOCKER.svg?style=for-the-badge
[stars-url]: https://github.com/amarc-sudo/8INF138-TP3-SECURITY-DOCKER/stargazers
[issues-shield]: https://img.shields.io/github/issues/amarc-sudo/8INF138-TP3-SECURITY-DOCKER.svg?style=for-the-badge
[issues-url]: https://github.com/amarc-sudo/8INF138-TP3-SECURITY-DOCKER/issues
[license-shield]: https://img.shields.io/github/license/amarc-sudo/8INF138-TP3-SECURITY-DOCKER.svg?style=for-the-badge
[license-url]: https://github.com/amarc-sudo/8INF138-TP3-SECURITY-DOCKER/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://www.linkedin.com/in/aurelien-marc-dev/
[product-screenshot]: images/screenshot.png
[Angular.io]: https://img.shields.io/badge/Angular-DD0031?style=for-the-badge&logo=angular&logoColor=white
[Angular-url]: https://angular.io/
