INSERT INTO tp3.role (idRole, tagRole, labelRole) VALUES (1, 'admin', 'admin');
INSERT INTO tp3.role (idRole, tagRole, labelRole) VALUES (2, 'residentiel', 'residentiel');
INSERT INTO tp3.role (idRole, tagRole, labelRole) VALUES (3, 'affaire', 'affaire');

INSERT INTO tp3.user (idUser, login, password, salt, role, tentative) VALUES (1, 'admin', 'ZrXFHZD4wugvz3CrQwp0l5PqZWw0g+a5i3X69aTRku28ElianFKj0SV3zUcyUjlpj/uCLGRVJHD4G3dc0ailTA==', '5moLABpkJ+KeEpPtLngx2g==', 1, 0);
INSERT INTO tp3.user (idUser, login, password, salt, role, tentative) VALUES (2, 'utilisateur1', 'ZrXFHZD4wugvz3CrQwp0l5PqZWw0g+a5i3X69aTRku28ElianFKj0SV3zUcyUjlpj/uCLGRVJHD4G3dc0ailTA==', '5moLABpkJ+KeEpPtLngx2g==', 2, 0);
INSERT INTO tp3.user (idUser, login, password, salt, role, tentative) VALUES (3, 'utilisateur2', 'ZrXFHZD4wugvz3CrQwp0l5PqZWw0g+a5i3X69aTRku28ElianFKj0SV3zUcyUjlpj/uCLGRVJHD4G3dc0ailTA==', '5moLABpkJ+KeEpPtLngx2g==', 3, 0);