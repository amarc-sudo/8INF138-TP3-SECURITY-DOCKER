create table if not exists tp3.clientAffaire
(
    idClient int auto_increment
        primary key,
    nom      varchar(255) null,
    prenom   varchar(255) null
);

create table tp3.clientResidentiel
(
    idClient int auto_increment
        primary key,
    nom      varchar(255) null,
    prenom   varchar(255) null
);

create table tp3.role
(
    idRole    int auto_increment
        primary key,
    tagRole   varchar(255) not null,
    labelRole varchar(255) not null
);

create table tp3.securityData
(
    idSecurity  int auto_increment
        primary key,
    tagSecurity varchar(255)         null,
    variables  int null,
    status      tinyint(1) default 0 null
);

create table tp3.user
(
    idUser    int auto_increment
        primary key,
    login     varchar(255)  null,
    password  varchar(255)  null,
    salt      varchar(255)  null,
    role      int           null,
    tentative int default 0 null,
    constraint user_role_idRole_fk
        foreign key (role) references tp3.role (idRole)
);

create table tp3.token
(
    idToken             int auto_increment
        primary key,
    token               varchar(255) null,
    user                int          null,
    DateExpirationToken datetime     null,
    constraint token_user_idUser_fk
        foreign key (user) references tp3.user (idUser)
);

INSERT INTO tp3.role (idRole, tagRole, labelRole) VALUES (1, 'admin', 'admin');
INSERT INTO tp3.role (idRole, tagRole, labelRole) VALUES (2, 'residentiel', 'residentiel');
INSERT INTO tp3.role (idRole, tagRole, labelRole) VALUES (3, 'affaire', 'affaire');

INSERT INTO tp3.user (idUser, login, password, salt, role, tentative) VALUES (1, 'admin', 'ZrXFHZD4wugvz3CrQwp0l5PqZWw0g+a5i3X69aTRku28ElianFKj0SV3zUcyUjlpj/uCLGRVJHD4G3dc0ailTA==', '5moLABpkJ+KeEpPtLngx2g==', 1, 0);
INSERT INTO tp3.user (idUser, login, password, salt, role, tentative) VALUES (2, 'utilisateur1', 'ZrXFHZD4wugvz3CrQwp0l5PqZWw0g+a5i3X69aTRku28ElianFKj0SV3zUcyUjlpj/uCLGRVJHD4G3dc0ailTA==', '5moLABpkJ+KeEpPtLngx2g==', 2, 0);
INSERT INTO tp3.user (idUser, login, password, salt, role, tentative) VALUES (3, 'utilisateur2', 'ZrXFHZD4wugvz3CrQwp0l5PqZWw0g+a5i3X69aTRku28ElianFKj0SV3zUcyUjlpj/uCLGRVJHD4G3dc0ailTA==', '5moLABpkJ+KeEpPtLngx2g==', 3, 0);

INSERT INTO tp3.securityData (idSecurity, tagSecurity, status, variable) VALUES (1, 'tentative', 1, 3);
INSERT INTO tp3.securityData (idSecurity, tagSecurity, status, variable) VALUES (2, 'passwordLengthMin', 1, 10);
INSERT INTO tp3.securityData (idSecurity, tagSecurity, status, variable) VALUES (3, 'passwordMaj', 0, 1);
INSERT INTO tp3.securityData (idSecurity, tagSecurity, status, variable) VALUES (4, 'passwordNumber', 0, 1);
INSERT INTO tp3.securityData (idSecurity, tagSecurity, status, variable) VALUES (5, 'passwordSpecial', 0, 1);

INSERT INTO tp3.clientAffaire (idClient, nom, prenom) VALUES (1, 'John', 'Doe');
INSERT INTO tp3.clientAffaire (idClient, nom, prenom) VALUES (2, 'Arna', 'Coeur');
INSERT INTO tp3.clientAffaire (idClient, nom, prenom) VALUES (3, 'Jack', 'Uzi');
INSERT INTO tp3.clientAffaire (idClient, nom, prenom) VALUES (4, 'Sal', 'Amie');
INSERT INTO tp3.clientAffaire (idClient, nom, prenom) VALUES (5, 'Alain', 'Terieur');

INSERT INTO tp3.clientResidentiel (idClient, nom, prenom) VALUES (1, 'Alex', 'Terieur');
INSERT INTO tp3.clientResidentiel (idClient, nom, prenom) VALUES (2, 'Barack', 'Afrit');
INSERT INTO tp3.clientResidentiel (idClient, nom, prenom) VALUES (3, 'dix', 'surdix');
INSERT INTO tp3.clientResidentiel (idClient, nom, prenom) VALUES (4, 'Clint', 'Horris');
INSERT INTO tp3.clientResidentiel (idClient, nom, prenom) VALUES (5, 'Colette', 'Sterole');
INSERT INTO tp3.clientResidentiel (idClient, nom, prenom) VALUES (6, 'Jean', 'Nemard');
INSERT INTO tp3.clientResidentiel (idClient, nom, prenom) VALUES (7, 'Julie', 'Danstespensee');
INSERT INTO tp3.clientResidentiel (idClient, nom, prenom) VALUES (8, 'Julienne', 'Delegume');