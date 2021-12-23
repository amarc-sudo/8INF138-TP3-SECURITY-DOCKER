# TP3 - 8INF138

Ceci est le TP3 du module 8INF138 de l'Universite du Quebec a Chicoutimi

Le rapport ce situe dans le depot


## Compilation 

Pour lancer et tester le projet il faut faire les commandes suivantes :

```
git clone https://github.com/amarc-sudo/tp3-security-docker.git
cd tp3-security-docker
git submodule init
git submodule update
git submodule foreach git pull origin master
docker-compose up -d --force-recreate
```

Les ports 4200, 8080 et 3306 doivent etre disponible sur la machine

## Marche a suivre pour le test
Il y a 3 utilisateur :

| Login        | Password    | Role        |
|--------------|-------------|-------------|
| admin        | Tp3Aurelien | admin       |
| utilisateur1 | Tp3Aurelien | residentiel |
| utilisateur2 | Tp3Aurelien | affaire     |

Il n'y a qu'une seule page de connexion pour les trois utilisateur
