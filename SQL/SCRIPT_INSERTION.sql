--SCRIPT D'INSERTION

Insert into AEROPORT (IDAEROPORT,NOM,LIEU) values ('1','Pierre Elliot Trudeau','Montreal');
Insert into AEROPORT (IDAEROPORT,NOM,LIEU) values ('2','Mohammed V','Casablanca');
Insert into AEROPORT (IDAEROPORT,NOM,LIEU) values ('3','Mirabel','Dorval');
Insert into AEROPORT (IDAEROPORT,NOM,LIEU) values ('4','Wakanda IV','Wakanda');
Insert into AEROPORT (IDAEROPORT,NOM,LIEU) values ('5','Charles de Gaulle','Paris');

Insert into ETAT_AVION (ETAT_ACTUEL,PISTE,IDETATAVION) values ('Vol','1','3873');
Insert into ETAT_AVION (ETAT_ACTUEL,PISTE,IDETATAVION) values ('Attente','3','3874');
Insert into ETAT_AVION (ETAT_ACTUEL,PISTE,IDETATAVION) values ('Atterissage','13','3875');
Insert into ETAT_AVION (ETAT_ACTUEL,PISTE,IDETATAVION) values ('Vol','8','3876');
Insert into ETAT_AVION (ETAT_ACTUEL,PISTE,IDETATAVION) values ('Decollage','15','3877');

Insert into ETAT_VOL (IDETATVOL,ETATACTUEL,LONGITUDE,LATITUDE,ALTITUDE,ORIENTATION,VITESSE) values ('13','Atterissage','123','123','1010','Sud','1000');
Insert into ETAT_VOL (IDETATVOL,ETATACTUEL,LONGITUDE,LATITUDE,ALTITUDE,ORIENTATION,VITESSE) values ('14','Decollage','213','321','1233','Est','999');
Insert into ETAT_VOL (IDETATVOL,ETATACTUEL,LONGITUDE,LATITUDE,ALTITUDE,ORIENTATION,VITESSE) values ('15','Atterissage','322','412','1232','Nord','1002');
Insert into ETAT_VOL (IDETATVOL,ETATACTUEL,LONGITUDE,LATITUDE,ALTITUDE,ORIENTATION,VITESSE) values ('16','Attente d''état','111','412','1400','Sud','1232');
Insert into ETAT_VOL (IDETATVOL,ETATACTUEL,LONGITUDE,LATITUDE,ALTITUDE,ORIENTATION,VITESSE) values ('17','En vol','150','523','2500','Ouest','1239');

Insert into MODE_PAIEMENT (IDMODEPAIMENT,TYPE_PAIEMENT) values ('123','Paypal');
Insert into MODE_PAIEMENT (IDMODEPAIMENT,TYPE_PAIEMENT) values ('456','Credit');
Insert into MODE_PAIEMENT (IDMODEPAIMENT,TYPE_PAIEMENT) values ('789','BTC');
Insert into MODE_PAIEMENT (IDMODEPAIMENT,TYPE_PAIEMENT) values ('234','Debit');
Insert into MODE_PAIEMENT (IDMODEPAIMENT,TYPE_PAIEMENT) values ('567','Comptant');

Insert into TRANSPORTEUR (IDTRANSPORTEUR,NOM) values ('4545','Air Canada');
Insert into TRANSPORTEUR (IDTRANSPORTEUR,NOM) values ('4546','Royal Air Maroc');
Insert into TRANSPORTEUR (IDTRANSPORTEUR,NOM) values ('4547','Qatar AirWays');
Insert into TRANSPORTEUR (IDTRANSPORTEUR,NOM) values ('4548','Fly Emirates');
Insert into TRANSPORTEUR (IDTRANSPORTEUR,NOM) values ('4549','WestJet');

Insert into UTILISATEUR (IDUTILISATEUR,NOM,MOT_DE_PASSE) values ('5634','Luke','123');
Insert into UTILISATEUR (IDUTILISATEUR,NOM,MOT_DE_PASSE) values ('5635','Oussama','1234');
Insert into UTILISATEUR (IDUTILISATEUR,NOM,MOT_DE_PASSE) values ('5636','Damien','12345');
Insert into UTILISATEUR (IDUTILISATEUR,NOM,MOT_DE_PASSE) values ('5637','Kha','123456');
Insert into UTILISATEUR (IDUTILISATEUR,NOM,MOT_DE_PASSE) values ('5638','Mathieu','1234567');

Insert into EQUIPAGE (IDEQUIPAGE,PILOTE,TRANSPORTEUR_IDTRANSPORTEUR,NOMEQUIPAGE) values ('2382','Camille','4545','A');
Insert into EQUIPAGE (IDEQUIPAGE,PILOTE,TRANSPORTEUR_IDTRANSPORTEUR,NOMEQUIPAGE) values ('2383','Baron Rouge','4546','B');
Insert into EQUIPAGE (IDEQUIPAGE,PILOTE,TRANSPORTEUR_IDTRANSPORTEUR,NOMEQUIPAGE) values ('2384','Manfred von Richtofen','4547','C');
Insert into EQUIPAGE (IDEQUIPAGE,PILOTE,TRANSPORTEUR_IDTRANSPORTEUR,NOMEQUIPAGE) values ('2385','Samuel','4548','D');
Insert into EQUIPAGE (IDEQUIPAGE,PILOTE,TRANSPORTEUR_IDTRANSPORTEUR,NOMEQUIPAGE) values ('2386','Alexander Pokryshkin','4549','E');

Insert into AVION (IDAVION,MANUFACTURIER,MODELE,TRANSPORTEUR_IDTRANSPORTEUR) values ('1739188','Bombardier','92MIN','4545');
Insert into AVION (IDAVION,MANUFACTURIER,MODELE,TRANSPORTEUR_IDTRANSPORTEUR) values ('1739189','Air Bus','742MAX','4546');
Insert into AVION (IDAVION,MANUFACTURIER,MODELE,TRANSPORTEUR_IDTRANSPORTEUR) values ('1739190','Boeing','737MAX','4547');
Insert into AVION (IDAVION,MANUFACTURIER,MODELE,TRANSPORTEUR_IDTRANSPORTEUR) values ('1739191','Cessna','123C','4548');
Insert into AVION (IDAVION,MANUFACTURIER,MODELE,TRANSPORTEUR_IDTRANSPORTEUR) values ('1739192','Chengdu','2999MAX','4549');

Insert into PISTE (IDPISTE,ETATPISTE,LONGUEUR,LARGEUR,AEROPORT_IDAEROPORT) values ('1234','En construction','100','9','1');
Insert into PISTE (IDPISTE,ETATPISTE,LONGUEUR,LARGEUR,AEROPORT_IDAEROPORT) values ('1235','Occupé','150','9','2');
Insert into PISTE (IDPISTE,ETATPISTE,LONGUEUR,LARGEUR,AEROPORT_IDAEROPORT) values ('1236','Libre','250','9','3');
Insert into PISTE (IDPISTE,ETATPISTE,LONGUEUR,LARGEUR,AEROPORT_IDAEROPORT) values ('1237','Occupé','300','9','4');
Insert into PISTE (IDPISTE,ETATPISTE,LONGUEUR,LARGEUR,AEROPORT_IDAEROPORT) values ('1238','Libre','100','9','5');

Insert into VOL (NUMEROVOL,HEURE_DEPART,HEURE_ARRIVEE,PORTE,AVION_IDAVION,TRANSPORTEUR_IDTRANSPORTEUR,EQUIPAGE_IDEQUIPAGE) values ('YUL1',to_date('19-05-10 10:00:00','YYYY-MM-DD HH24:MI:SS'),to_date('19-05-10 20:00:00', 'YYYY-MM-DD HH24:MI:SS'),'5','1739188','4545','2382');
Insert into VOL (NUMEROVOL,HEURE_DEPART,HEURE_ARRIVEE,PORTE,AVION_IDAVION,TRANSPORTEUR_IDTRANSPORTEUR,EQUIPAGE_IDEQUIPAGE) values ('YUL2',to_date('19-05-11 10:00:00','YYYY-MM-DD HH24:MI:SS'),to_date('19-05-11 20:00:00', 'YYYY-MM-DD HH24:MI:SS'),'2','1739189','4546','2383');
Insert into VOL (NUMEROVOL,HEURE_DEPART,HEURE_ARRIVEE,PORTE,AVION_IDAVION,TRANSPORTEUR_IDTRANSPORTEUR,EQUIPAGE_IDEQUIPAGE) values ('YUL3',to_date('19-05-12 10:00:00', 'YYYY-MM-DD HH24:MI:SS'),to_date('19-05-12 20:00:00', 'YYYY-MM-DD HH24:MI:SS'),'3','1739190','4547','2384');
Insert into VOL (NUMEROVOL,HEURE_DEPART,HEURE_ARRIVEE,PORTE,AVION_IDAVION,TRANSPORTEUR_IDTRANSPORTEUR,EQUIPAGE_IDEQUIPAGE) values ('YUL4',to_date('19-05-13 10:00:00', 'YYYY-MM-DD HH24:MI:SS'),to_date('19-05-13 20:00:00', 'YYYY-MM-DD HH24:MI:SS'),'4','1739191','4548','2385');
Insert into VOL (NUMEROVOL,HEURE_DEPART,HEURE_ARRIVEE,PORTE,AVION_IDAVION,TRANSPORTEUR_IDTRANSPORTEUR,EQUIPAGE_IDEQUIPAGE) values ('YUL5',to_date('19-05-20 10:00:00', 'YYYY-MM-DD HH24:MI:SS'),to_date('19-05-20 20:00:00', 'YYYY-MM-DD HH24:MI:SS'),'13','1739192','4549','2386');

Insert into "VOL_AEROPORT" (VOL_NUMEROVOL,AEROPORT_IDAEROPORT) values ('YUL1','1');
Insert into "VOL_AEROPORT" (VOL_NUMEROVOL,AEROPORT_IDAEROPORT) values ('YUL2','2');
Insert into "VOL_AEROPORT" (VOL_NUMEROVOL,AEROPORT_IDAEROPORT) values ('YUL3','3');
Insert into "VOL_AEROPORT" (VOL_NUMEROVOL,AEROPORT_IDAEROPORT) values ('YUL4','4');
Insert into "VOL_AEROPORT" (VOL_NUMEROVOL,AEROPORT_IDAEROPORT) values ('YUL5','5');

Insert into "VOL_ETAT_VOL" (VOL_NUMEROVOL,ETAT_VOL_IDETATVOL) values ('YUL1','13');
Insert into "VOL_ETAT_VOL" (VOL_NUMEROVOL,ETAT_VOL_IDETATVOL) values ('YUL2','14');
Insert into "VOL_ETAT_VOL" (VOL_NUMEROVOL,ETAT_VOL_IDETATVOL) values ('YUL3','15');
Insert into "VOL_ETAT_VOL" (VOL_NUMEROVOL,ETAT_VOL_IDETATVOL) values ('YUL4','16');
Insert into "VOL_ETAT_VOL" (VOL_NUMEROVOL,ETAT_VOL_IDETATVOL) values ('YUL5','17');

Insert into "AVION_ETAT_AVION" (AVION_IDAVION,ETAT_AVION_IDETATAVION) values ('1739188','3873');
Insert into "AVION_ETAT_AVION" (AVION_IDAVION,ETAT_AVION_IDETATAVION) values ('1739189','3874');
Insert into "AVION_ETAT_AVION" (AVION_IDAVION,ETAT_AVION_IDETATAVION) values ('1739190','3875');
Insert into "AVION_ETAT_AVION" (AVION_IDAVION,ETAT_AVION_IDETATAVION) values ('1739191','3876');
Insert into "AVION_ETAT_AVION" (AVION_IDAVION,ETAT_AVION_IDETATAVION) values ('1739192','3877');

Insert into PASSAGER (IDPASSAGER,MODE_PAIEMENT_IDMODEPAIMENT,UTILISATEUR_IDUTILISATEUR) values ('4040','123','5634');
Insert into PASSAGER (IDPASSAGER,MODE_PAIEMENT_IDMODEPAIMENT,UTILISATEUR_IDUTILISATEUR) values ('4041','456','5635');
Insert into PASSAGER (IDPASSAGER,MODE_PAIEMENT_IDMODEPAIMENT,UTILISATEUR_IDUTILISATEUR) values ('4042','789','5636');
Insert into PASSAGER (IDPASSAGER,MODE_PAIEMENT_IDMODEPAIMENT,UTILISATEUR_IDUTILISATEUR) values ('4043','234','5637');
Insert into PASSAGER (IDPASSAGER,MODE_PAIEMENT_IDMODEPAIMENT,UTILISATEUR_IDUTILISATEUR) values ('4044','567','5638');

Insert into BILLET (IDBILLET,PRIX,VOL_NUMEROVOL,PASSAGER_IDPASSAGER) values ('11','500','YUL1','4040');
Insert into BILLET (IDBILLET,PRIX,VOL_NUMEROVOL,PASSAGER_IDPASSAGER) values ('22','999','YUL2','4041');
Insert into BILLET (IDBILLET,PRIX,VOL_NUMEROVOL,PASSAGER_IDPASSAGER) values ('33','1000','YUL3','4042');
Insert into BILLET (IDBILLET,PRIX,VOL_NUMEROVOL,PASSAGER_IDPASSAGER) values ('44','1200','YUL4','4043');
Insert into BILLET (IDBILLET,PRIX,VOL_NUMEROVOL,PASSAGER_IDPASSAGER) values ('55','2200','YUL5','4044');

Insert into "ETAT_AVION_PISTE" (PISTE_IDPISTE,ETAT_AVION_IDETATAVION) values ('1234','3873');
Insert into "ETAT_AVION_PISTE" (PISTE_IDPISTE,ETAT_AVION_IDETATAVION) values ('1235','3874');
Insert into "ETAT_AVION_PISTE" (PISTE_IDPISTE,ETAT_AVION_IDETATAVION) values ('1236','3875');
Insert into "ETAT_AVION_PISTE" (PISTE_IDPISTE,ETAT_AVION_IDETATAVION) values ('1237','3876');
Insert into "ETAT_AVION_PISTE" (PISTE_IDPISTE,ETAT_AVION_IDETATAVION) values ('1238','3877');

