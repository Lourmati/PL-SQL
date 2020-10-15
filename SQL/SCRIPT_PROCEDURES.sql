	CREATE OR REPLACE PACKAGE TP2P
	IS
	  PROCEDURE ins_vol(
		  p_PORTE                       IN VOL.PORTE%type DEFAULT NULL ,
		  p_HEURE_ARRIVEE               IN VOL.HEURE_ARRIVEE%type DEFAULT NULL ,
		  p_EQUIPAGE_IDEQUIPAGE         IN VOL.EQUIPAGE_IDEQUIPAGE%type DEFAULT NULL ,
		  p_TRANSPORTEUR_IDTRANSPORTEUR IN VOL.TRANSPORTEUR_IDTRANSPORTEUR%type ,
		  p_HEURE_DEPART                IN VOL.HEURE_DEPART%type DEFAULT NULL ,
		  p_AVION_IDAVION               IN VOL.AVION_IDAVION%type ,
		  p_NUMEROVOL                   IN VOL.NUMEROVOL%type );
		  
	  -- update vol
	  PROCEDURE upd_vol(
		  p_PORTE                       IN VOL.PORTE%type DEFAULT NULL ,
		  p_HEURE_ARRIVEE               IN VOL.HEURE_ARRIVEE%type DEFAULT NULL ,
		  p_EQUIPAGE_IDEQUIPAGE         IN VOL.EQUIPAGE_IDEQUIPAGE%type DEFAULT NULL ,
		  p_TRANSPORTEUR_IDTRANSPORTEUR IN VOL.TRANSPORTEUR_IDTRANSPORTEUR%type ,
		  p_HEURE_DEPART                IN VOL.HEURE_DEPART%type DEFAULT NULL ,
		  p_AVION_IDAVION               IN VOL.AVION_IDAVION%type ,
		  p_NUMEROVOL                   IN VOL.NUMEROVOL%type );
		  
	  -- delete vol
	  PROCEDURE del_vol(
		  p_NUMEROVOL IN VOL.NUMEROVOL%type );
      
	  PROCEDURE ins_billet(
		  p_PASSAGER_IDPASSAGER IN BILLET.PASSAGER_IDPASSAGER%type ,
		  p_PRIX                IN BILLET.PRIX%type ,
		  p_VOL_NUMEROVOL       IN BILLET.VOL_NUMEROVOL%type ,
		  p_IDBILLET            IN BILLET.IDBILLET%type );
	  -- update billet
	  PROCEDURE upd_billet(
		  p_PASSAGER_IDPASSAGER IN BILLET.PASSAGER_IDPASSAGER%type ,
		  p_PRIX                IN BILLET.PRIX%type ,
		  p_VOL_NUMEROVOL       IN BILLET.VOL_NUMEROVOL%type ,
		  p_IDBILLET            IN BILLET.IDBILLET%type );
	  -- delete billet
	  PROCEDURE del_billet(
		  p_IDBILLET IN BILLET.IDBILLET%type );
	  PROCEDURE ins_equipage(
		  p_NOMEQUIPAGE                 IN EQUIPAGE.NOMEQUIPAGE%type DEFAULT NULL ,
		  p_PILOTE                      IN EQUIPAGE.PILOTE%type ,
		  p_IDEQUIPAGE                  IN EQUIPAGE.IDEQUIPAGE%type ,
		  p_TRANSPORTEUR_IDTRANSPORTEUR IN EQUIPAGE.TRANSPORTEUR_IDTRANSPORTEUR%type );
	  -- update equipage
	  PROCEDURE upd_equipage(
		  p_NOMEQUIPAGE                 IN EQUIPAGE.NOMEQUIPAGE%type DEFAULT NULL ,
		  p_PILOTE                      IN EQUIPAGE.PILOTE%type ,
		  p_IDEQUIPAGE                  IN EQUIPAGE.IDEQUIPAGE%type ,
		  p_TRANSPORTEUR_IDTRANSPORTEUR IN EQUIPAGE.TRANSPORTEUR_IDTRANSPORTEUR%type );
	  -- delete equipage
	  PROCEDURE del_equipage (
		  p_IDEQUIPAGE IN EQUIPAGE.IDEQUIPAGE%type );	 
	  PROCEDURE ins_aeroport(
		  p_LIEU       IN AEROPORT.LIEU%type DEFAULT NULL ,
		  p_NOM        IN AEROPORT.NOM%type ,
		  p_IDAEROPORT IN AEROPORT.IDAEROPORT%type );
	  -- update aeroport
	  PROCEDURE upd_aeroport(
		  p_LIEU       IN AEROPORT.LIEU%type DEFAULT NULL ,
		  p_NOM        IN AEROPORT.NOM%type ,
		  p_IDAEROPORT IN AEROPORT.IDAEROPORT%type );
	  -- delete aeroport
	  PROCEDURE del_aeroport(
		  p_IDAEROPORT IN AEROPORT.IDAEROPORT%type );
	  PROCEDURE ins_avion(
		  p_TRANSPORTEUR_IDTRANSPORTEUR IN AVION.TRANSPORTEUR_IDTRANSPORTEUR%type ,
		  p_MANUFACTURIER               IN AVION.MANUFACTURIER%type ,
		  p_IDAVION                     IN AVION.IDAVION%type ,
		  p_MODELE                      IN AVION.MODELE%type DEFAULT NULL );
	  -- update avion
	  PROCEDURE upd_avion(
		  p_TRANSPORTEUR_IDTRANSPORTEUR IN AVION.TRANSPORTEUR_IDTRANSPORTEUR%type ,
		  p_MANUFACTURIER               IN AVION.MANUFACTURIER%type ,
		  p_IDAVION                     IN AVION.IDAVION%type ,
		  p_MODELE                      IN AVION.MODELE%type DEFAULT NULL );
	  -- delete avion
	  PROCEDURE del_avion(
		  p_IDAVION IN AVION.IDAVION%type );
	  PROCEDURE ins_avion_etat_avion(
		  p_ETAT_AVION_IDETATAVION IN AVION_ETAT_AVION.ETAT_AVION_IDETATAVION%type ,
		  p_AVION_IDAVION          IN AVION_ETAT_AVION.AVION_IDAVION%type );
	  -- delete avion-etat_avion
	  PROCEDURE del_avion_etat_avion(
		  p_AVION_IDAVION              IN AVION_ETAT_AVION.AVION_IDAVION%type ,
		  p_ETAT_AVION_IDETATAVION     IN AVION_ETAT_AVION.ETAT_AVION_IDETATAVION%type );
	  PROCEDURE ins_etat_avion(
		  p_ETAT_ACTUEL IN ETAT_AVION.ETAT_ACTUEL%type ,
		  p_PISTE       IN ETAT_AVION.PISTE%type ,
		  p_IDETATAVION IN ETAT_AVION.IDETATAVION%type );
	  -- update etat_avion
	  PROCEDURE upd_etat_avion(
		  p_ETAT_ACTUEL IN ETAT_AVION.ETAT_ACTUEL%type ,
		  p_PISTE       IN ETAT_AVION.PISTE%type ,
		  p_IDETATAVION IN ETAT_AVION.IDETATAVION%type );
	  -- delete etat_avion
	  PROCEDURE del_etat_avion(
		  p_IDETATAVION IN ETAT_AVION.IDETATAVION%type );
	  PROCEDURE ins_etat_avion_piste(
		  p_ETAT_AVION_IDETATAVION IN ETAT_AVION_PISTE.ETAT_AVION_IDETATAVION%type ,
		  p_PISTE_IDPISTE          IN ETAT_AVION_PISTE.PISTE_IDPISTE%type );
	  -- delete etat_avion-piste
	  PROCEDURE del_etat_avion_piste(
		  p_PISTE_IDPISTE                   IN ETAT_AVION_PISTE.PISTE_IDPISTE%type ,
		  p_ETAT_AVION_IDETATAVION          IN ETAT_AVION_PISTE.ETAT_AVION_IDETATAVION%type );
	  PROCEDURE ins_etat_vol(
		  p_IDETATVOL   IN ETAT_VOL.IDETATVOL%type ,
		  p_ORIENTATION IN ETAT_VOL.ORIENTATION%type DEFAULT NULL ,
		  p_ETATACTUEL  IN ETAT_VOL.ETATACTUEL%type ,
		  p_ALTITUDE    IN ETAT_VOL.ALTITUDE%type DEFAULT NULL ,
		  p_LONGITUDE   IN ETAT_VOL.LONGITUDE%type ,
		  p_VITESSE     IN ETAT_VOL.VITESSE%type DEFAULT NULL ,
		  p_LATITUDE    IN ETAT_VOL.LATITUDE%type );
	  -- update etat_vol
	  PROCEDURE upd_etat_vol(
		  p_IDETATVOL   IN ETAT_VOL.IDETATVOL%type ,
		  p_ORIENTATION IN ETAT_VOL.ORIENTATION%type DEFAULT NULL ,
		  p_ETATACTUEL  IN ETAT_VOL.ETATACTUEL%type ,
		  p_ALTITUDE    IN ETAT_VOL.ALTITUDE%type DEFAULT NULL ,
		  p_LONGITUDE   IN ETAT_VOL.LONGITUDE%type ,
		  p_VITESSE     IN ETAT_VOL.VITESSE%type DEFAULT NULL ,
		  p_LATITUDE    IN ETAT_VOL.LATITUDE%type );
	  -- delete etat_vol
	  PROCEDURE del_etat_vol(
		  p_IDETATVOL IN ETAT_VOL.IDETATVOL%type );
	  PROCEDURE ins_mode_paiement(
		  p_TYPE_PAIEMENT IN MODE_PAIEMENT.TYPE_PAIEMENT%type ,
		  p_IDMODEPAIMENT IN MODE_PAIEMENT.IDMODEPAIMENT%type );
	  -- update mode_paiement
	  PROCEDURE upd_mode_paiement(
		  p_TYPE_PAIEMENT IN MODE_PAIEMENT.TYPE_PAIEMENT%type ,
		  p_IDMODEPAIMENT IN MODE_PAIEMENT.IDMODEPAIMENT%type );
	  -- delete mode_paiement
	  PROCEDURE del_mode_paiement(
		  p_IDMODEPAIMENT IN MODE_PAIEMENT.IDMODEPAIMENT%type );  
	  PROCEDURE ins_passager(
		  p_MODE_PAIEMENT_IDMODEPAIMENT IN PASSAGER.MODE_PAIEMENT_IDMODEPAIMENT%type ,
		  p_UTILISATEUR_IDUTILISATEUR   IN PASSAGER.UTILISATEUR_IDUTILISATEUR%type ,
		  p_IDPASSAGER                  IN PASSAGER.IDPASSAGER%type );
	  -- update passager
	  PROCEDURE upd_passager(
		  p_MODE_PAIEMENT_IDMODEPAIMENT IN PASSAGER.MODE_PAIEMENT_IDMODEPAIMENT%type ,
		  p_UTILISATEUR_IDUTILISATEUR   IN PASSAGER.UTILISATEUR_IDUTILISATEUR%type ,
		  p_IDPASSAGER                  IN PASSAGER.IDPASSAGER%type );
	  -- delete passager
	  PROCEDURE del_passager(
		  p_IDPASSAGER IN PASSAGER.IDPASSAGER%type );
	  PROCEDURE ins_piste(
		  p_IDPISTE             IN PISTE.IDPISTE%type ,
		  p_LONGUEUR            IN PISTE.LONGUEUR%type ,
		  p_ETATPISTE           IN PISTE.ETATPISTE%type ,
		  p_AEROPORT_IDAEROPORT IN PISTE.AEROPORT_IDAEROPORT%type ,
		  p_LARGEUR             IN PISTE.LARGEUR%type );
	  -- update piste
	  PROCEDURE upd_piste(
		  p_IDPISTE             IN PISTE.IDPISTE%type ,
		  p_LONGUEUR            IN PISTE.LONGUEUR%type ,
		  p_ETATPISTE           IN PISTE.ETATPISTE%type ,
		  p_AEROPORT_IDAEROPORT IN PISTE.AEROPORT_IDAEROPORT%type ,
		  p_LARGEUR             IN PISTE.LARGEUR%type );
	  -- delete piste
	  PROCEDURE del_piste(
		  p_IDPISTE IN PISTE.IDPISTE%type );
	  PROCEDURE ins_transporteur(
		  p_IDTRANSPORTEUR IN TRANSPORTEUR.IDTRANSPORTEUR%type ,
		  p_NOM            IN TRANSPORTEUR.NOM%type );
	  -- update transporteur
	  PROCEDURE upd_transporteur(
		  p_IDTRANSPORTEUR IN TRANSPORTEUR.IDTRANSPORTEUR%type ,
		  p_NOM            IN TRANSPORTEUR.NOM%type );
	  -- delete transporteur
	  PROCEDURE del_transporteur(
		  p_IDTRANSPORTEUR IN TRANSPORTEUR.IDTRANSPORTEUR%type );
	  PROCEDURE ins_utilisateur(
		  p_NOM           IN UTILISATEUR.NOM%type ,
		  p_IDUTILISATEUR IN UTILISATEUR.IDUTILISATEUR%type ,
		  p_MOT_DE_PASSE  IN UTILISATEUR.MOT_DE_PASSE%type DEFAULT NULL );
	  -- update utilisateur
	  PROCEDURE upd_utilisateur(
		  p_NOM           IN UTILISATEUR.NOM%type ,
		  p_IDUTILISATEUR IN UTILISATEUR.IDUTILISATEUR%type ,
		  p_MOT_DE_PASSE  IN UTILISATEUR.MOT_DE_PASSE%type DEFAULT NULL );
	  -- delete utilisateur
	  PROCEDURE del_utilisateur(
		  p_IDUTILISATEUR IN UTILISATEUR.IDUTILISATEUR%type );
	  PROCEDURE ins_vol_aeroport(
		  p_VOL_NUMEROVOL       IN VOL_AEROPORT.VOL_NUMEROVOL%type ,
		  p_AEROPORT_IDAEROPORT IN VOL_AEROPORT.AEROPORT_IDAEROPORT%type );
	  -- delete vol-aeroport
	  PROCEDURE del_vol_aeroport(
		  p_VOL_NUMEROVOL            IN VOL_AEROPORT.VOL_NUMEROVOL%type ,
		  p_AEROPORT_IDAEROPORT      IN VOL_AEROPORT.AEROPORT_IDAEROPORT%type );
	  PROCEDURE ins_vol_etat_vol(
		  p_VOL_NUMEROVOL      IN VOL_ETAT_VOL.VOL_NUMEROVOL%type ,
		  p_ETAT_VOL_IDETATVOL IN VOL_ETAT_VOL.ETAT_VOL_IDETATVOL%type );
	  -- delete vol-etat_vol
	  PROCEDURE del_vol_etat_vol(
		  p_VOL_NUMEROVOL            IN VOL_ETAT_VOL.VOL_NUMEROVOL%type ,
		  p_ETAT_VOL_IDETATVOL       IN VOL_ETAT_VOL.ETAT_VOL_IDETATVOL%type );
		
	END TP2P;
		---------------------------------------------------------------- BODY ---------------------------------------------------------------------------------------------
	/
	CREATE OR REPLACE PACKAGE body TP2P
	IS

		
	-- insert vol
	PROCEDURE ins_vol(
		p_PORTE                       IN VOL.PORTE%type DEFAULT NULL ,
		p_HEURE_ARRIVEE               IN VOL.HEURE_ARRIVEE%type DEFAULT NULL ,
		p_EQUIPAGE_IDEQUIPAGE         IN VOL.EQUIPAGE_IDEQUIPAGE%type DEFAULT NULL ,
		p_TRANSPORTEUR_IDTRANSPORTEUR IN VOL.TRANSPORTEUR_IDTRANSPORTEUR%type ,
		p_HEURE_DEPART                IN VOL.HEURE_DEPART%type DEFAULT NULL ,
		p_AVION_IDAVION               IN VOL.AVION_IDAVION%type ,
		p_NUMEROVOL                   IN VOL.NUMEROVOL%type )
	IS
		ex_invalid_porte EXCEPTION;
		ex_null_porte EXCEPTION;
		ex_null_numerovol EXCEPTION;
	BEGIN
	  IF p_PORTE < 0 THEN 
      RAISE ex_invalid_porte; 
	  
      ELSIF p_PORTE is NULL THEN
	  RAISE ex_null_porte;
	  
	  ELSIF p_NUMEROVOL is NULL THEN
	  RAISE ex_null_numerovol;
	  
	  ELSE
	  INSERT
	  INTO VOL
		(
		  PORTE ,
		  HEURE_ARRIVEE ,
		  EQUIPAGE_IDEQUIPAGE ,
		  TRANSPORTEUR_IDTRANSPORTEUR ,
		  HEURE_DEPART ,
		  AVION_IDAVION ,
		  NUMEROVOL
		)
		VALUES
		(
		  p_PORTE ,
		  p_HEURE_ARRIVEE ,
		  p_EQUIPAGE_IDEQUIPAGE ,
		  p_TRANSPORTEUR_IDTRANSPORTEUR ,
		  p_HEURE_DEPART ,
		  p_AVION_IDAVION ,
		  p_NUMEROVOL
		);
		END IF;
	EXCEPTION
		WHEN no_data_found THEN
			dbms_output.put_line('Vol non valide ; une ou plusieurs informations non valides'); 
		WHEN ex_invalid_porte THEN
			dbms_output.put_line('Numero de porte non valide; ne peut pas etre negatif');
		WHEN ex_null_porte THEN
			dbms_output.put_line('Numero de porte non valide; ne peut pas etre null');
		WHEN ex_null_numerovol THEN
			dbms_output.put_line('Numero de vol non valide; ne peut pas etre null');
	END;

	-- update vol
	PROCEDURE upd_vol
	  (
		p_PORTE                       IN VOL.PORTE%type DEFAULT NULL ,
		p_HEURE_ARRIVEE               IN VOL.HEURE_ARRIVEE%type DEFAULT NULL ,
		p_EQUIPAGE_IDEQUIPAGE         IN VOL.EQUIPAGE_IDEQUIPAGE%type DEFAULT NULL ,
		p_TRANSPORTEUR_IDTRANSPORTEUR IN VOL.TRANSPORTEUR_IDTRANSPORTEUR%type ,
		p_HEURE_DEPART                IN VOL.HEURE_DEPART%type DEFAULT NULL ,
		p_AVION_IDAVION               IN VOL.AVION_IDAVION%type ,
		p_NUMEROVOL                   IN VOL.NUMEROVOL%type
	  )
	IS
		ex_invalid_porte EXCEPTION;
		ex_null_porte EXCEPTION;
		ex_null_numerovol EXCEPTION;
	BEGIN
	  IF p_PORTE < 0 THEN 
      RAISE ex_invalid_porte; 
	  
      ELSIF p_PORTE is NULL THEN
	  RAISE ex_null_porte;
	  
	  ELSIF p_NUMEROVOL is NULL THEN
	  RAISE ex_null_numerovol;
	  
	  ELSE
	  UPDATE VOL
	  SET PORTE                     = p_PORTE ,
		HEURE_ARRIVEE               = p_HEURE_ARRIVEE ,
		EQUIPAGE_IDEQUIPAGE         = p_EQUIPAGE_IDEQUIPAGE ,
		TRANSPORTEUR_IDTRANSPORTEUR = p_TRANSPORTEUR_IDTRANSPORTEUR ,
		HEURE_DEPART                = p_HEURE_DEPART ,
		AVION_IDAVION               = p_AVION_IDAVION
	  WHERE NUMEROVOL               = p_NUMEROVOL;
	  END IF;
	EXCEPTION
		WHEN no_data_found THEN
			dbms_output.put_line('Vol non valide ; une ou plusieurs informations non valides'); 
		WHEN ex_invalid_porte THEN
			dbms_output.put_line('Numero de porte non valide; ne peut pas etre negatif');
		WHEN ex_null_porte THEN
			dbms_output.put_line('Numero de porte non valide; ne peut pas etre null');
		WHEN ex_null_numerovol THEN
			dbms_output.put_line('Numero de vol non valide; ne peut pas etre null');
	END;

	-- delete vol
	PROCEDURE del_vol(
		p_NUMEROVOL IN VOL.NUMEROVOL%type )
	IS
	BEGIN
	  DELETE FROM VOL WHERE NUMEROVOL = p_NUMEROVOL;
	END;

	-- insert billet
	PROCEDURE ins_billet(
		p_PASSAGER_IDPASSAGER IN BILLET.PASSAGER_IDPASSAGER%type ,
		p_PRIX                IN BILLET.PRIX%type ,
		p_VOL_NUMEROVOL       IN BILLET.VOL_NUMEROVOL%type ,
		p_IDBILLET            IN BILLET.IDBILLET%type )
	IS
	    ex_invalid_prix EXCEPTION;
		ex_null_idbillet EXCEPTION;
		ex_null_prix EXCEPTION;
		
	BEGIN
	IF p_PRIX < 0 THEN 
      RAISE ex_invalid_prix; 
	  
    ELSIF p_PRIX is NULL THEN
	  RAISE ex_null_prix;
	  
	ELSIF p_IDBILLET is NULL THEN
	  RAISE ex_null_idbillet;
	  
	ELSE
    INSERT
	  INTO BILLET
    (
      PASSAGER_IDPASSAGER ,
      PRIX ,
      VOL_NUMEROVOL ,
      IDBILLET
    )
    VALUES
    (
      p_PASSAGER_IDPASSAGER ,
      p_PRIX ,
      p_VOL_NUMEROVOL ,
      p_IDBILLET
    );
	END IF;
	EXCEPTION
		WHEN no_data_found THEN
			dbms_output.put_line('Billet non valide; une ou plusieurs informations non valides'); 
		WHEN ex_invalid_prix THEN
			dbms_output.put_line('Prix non valide; ne peut pas etre negatif'); 
		WHEN ex_null_prix THEN
			dbms_output.put_line('Prix non valide; ne peut pas etre null');
		WHEN ex_null_idbillet THEN
			dbms_output.put_line('IDBillet non valide; ne peut pas etre null');
	END;	

	-- update billet 
	PROCEDURE upd_billet
	  (
		p_PASSAGER_IDPASSAGER IN BILLET.PASSAGER_IDPASSAGER%type ,
		p_PRIX                IN BILLET.PRIX%type ,
		p_VOL_NUMEROVOL       IN BILLET.VOL_NUMEROVOL%type ,
		p_IDBILLET            IN BILLET.IDBILLET%type
	  )
	IS
		ex_invalid_prix EXCEPTION;
		ex_null_prix EXCEPTION;
		ex_null_idbillet EXCEPTION;
	BEGIN
	  IF p_PRIX < 0 THEN 
      RAISE ex_invalid_prix; 
	  
	  ELSIF p_PRIX is NULL THEN
	  RAISE ex_null_prix;
	  
	  ELSIF p_IDBILLET is NULL THEN
	  RAISE ex_null_idbillet;
	  
      ELSE	
	  UPDATE BILLET
	  SET PASSAGER_IDPASSAGER = p_PASSAGER_IDPASSAGER ,
		PRIX                  = p_PRIX ,
		VOL_NUMEROVOL         = p_VOL_NUMEROVOL
	    WHERE IDBILLET          = p_IDBILLET;
	  END IF;
	EXCEPTION
		WHEN no_data_found THEN
			dbms_output.put_line('Billet non valide; une ou plusieurs informations non valides'); 
		WHEN ex_invalid_prix THEN
			dbms_output.put_line('Prix non valide; ne peut pas etre negatif'); 
		WHEN ex_null_prix THEN
			dbms_output.put_line('Prix non valide; ne peut pas etre null');
		WHEN ex_null_idbillet THEN
			dbms_output.put_line('IDBillet non valide; ne peut pas etre null');
	END;

	-- delete billet
	PROCEDURE del_billet(
		p_IDBILLET IN BILLET.IDBILLET%type )
	IS
	BEGIN
	  DELETE FROM BILLET WHERE IDBILLET = p_IDBILLET;
	END;

		
	  -- insert equipage
	PROCEDURE ins_equipage(
		p_NOMEQUIPAGE                 IN EQUIPAGE.NOMEQUIPAGE%type DEFAULT NULL ,
		p_PILOTE                      IN EQUIPAGE.PILOTE%type ,
		p_IDEQUIPAGE                  IN EQUIPAGE.IDEQUIPAGE%type ,
		p_TRANSPORTEUR_IDTRANSPORTEUR IN EQUIPAGE.TRANSPORTEUR_IDTRANSPORTEUR%type )
	IS
		ex_null_nomequipage EXCEPTION;
		ex_invalid_idequipage EXCEPTION;
		ex_null_idequipage EXCEPTION;
	BEGIN
	  IF p_IDEQUIPAGE < 0 THEN 
      RAISE ex_invalid_idequipage; 
	  
	  ELSIF p_NOMEQUIPAGE is NULL THEN
	  RAISE ex_null_nomequipage;
	  
	  ELSIF p_IDEQUIPAGE is NULL THEN
	  RAISE ex_null_idequipage;
	
	  ELSE
	  INSERT
	  INTO EQUIPAGE
		(
		  NOMEQUIPAGE ,
		  PILOTE ,
		  IDEQUIPAGE ,
		  TRANSPORTEUR_IDTRANSPORTEUR
		)
		VALUES
		(
		  p_NOMEQUIPAGE ,
		  p_PILOTE ,
		  p_IDEQUIPAGE ,
		  p_TRANSPORTEUR_IDTRANSPORTEUR
		);
	  END IF;
	EXCEPTION
	    WHEN no_data_found THEN
			dbms_output.put_line('Equipage non valide; une ou plusieurs informations non valides'); 
		WHEN ex_invalid_idequipage THEN
			dbms_output.put_line('IdEquipage non valide; ne peut pas etre negatif'); 
		WHEN ex_null_nomequipage THEN
			dbms_output.put_line('Nom equipage non valide; ne peut pas etre null');
		WHEN ex_null_idequipage THEN
			dbms_output.put_line('IdEquipage non valide; ne peut pas etre null');
	END;
	-- update equipage
	PROCEDURE upd_equipage
	  (
		p_NOMEQUIPAGE                 IN EQUIPAGE.NOMEQUIPAGE%type DEFAULT NULL ,
		p_PILOTE                      IN EQUIPAGE.PILOTE%type ,
		p_IDEQUIPAGE                  IN EQUIPAGE.IDEQUIPAGE%type ,
		p_TRANSPORTEUR_IDTRANSPORTEUR IN EQUIPAGE.TRANSPORTEUR_IDTRANSPORTEUR%type
	  )
	IS
		ex_null_nomequipage EXCEPTION;
		ex_invalid_idequipage EXCEPTION;
		ex_null_idequipage EXCEPTION;
	BEGIN
	  IF p_IDEQUIPAGE < 0 THEN 
      RAISE ex_invalid_idequipage; 
	  
	  ELSIF p_NOMEQUIPAGE is NULL THEN
	  RAISE ex_null_nomequipage;
	  
	  ELSIF p_IDEQUIPAGE is NULL THEN
	  RAISE ex_null_idequipage;
	
	  ELSE
	  UPDATE EQUIPAGE
	  SET NOMEQUIPAGE               = p_NOMEQUIPAGE ,
		PILOTE                      = p_PILOTE ,
		TRANSPORTEUR_IDTRANSPORTEUR = p_TRANSPORTEUR_IDTRANSPORTEUR
	  WHERE IDEQUIPAGE              = p_IDEQUIPAGE;
	  END IF;
	EXCEPTION
	    WHEN no_data_found THEN
			dbms_output.put_line('Equipage non valide; une ou plusieurs informations non valides'); 
		WHEN ex_invalid_idequipage THEN
			dbms_output.put_line('IdEquipage non valide; ne peut pas etre negatif'); 
		WHEN ex_null_nomequipage THEN
			dbms_output.put_line('Nom equipage non valide; ne peut pas etre null');	
		WHEN ex_null_idequipage THEN
			dbms_output.put_line('IdEquipage non valide; ne peut pas etre null');
	END;
	
	
	
	-- delete equipage
	PROCEDURE del_equipage(
		p_IDEQUIPAGE IN EQUIPAGE.IDEQUIPAGE%type )
	IS
	BEGIN
	  DELETE FROM EQUIPAGE WHERE IDEQUIPAGE = p_IDEQUIPAGE;
	END;

		
	  -- insert aeroport
	PROCEDURE ins_aeroport(
		p_LIEU       IN AEROPORT.LIEU%type DEFAULT NULL ,
		p_NOM        IN AEROPORT.NOM%type ,
		p_IDAEROPORT IN AEROPORT.IDAEROPORT%type )
	IS
	BEGIN
	  INSERT
	  INTO AEROPORT
		(
		  LIEU ,
		  NOM ,
		  IDAEROPORT
		)
		VALUES
		(
		  p_LIEU ,
		  p_NOM ,
		  p_IDAEROPORT
		);
	END;
	-- update aeroport
	PROCEDURE upd_aeroport
	  (
		p_LIEU       IN AEROPORT.LIEU%type DEFAULT NULL ,
		p_NOM        IN AEROPORT.NOM%type ,
		p_IDAEROPORT IN AEROPORT.IDAEROPORT%type
	  )
	IS
	BEGIN
	  UPDATE AEROPORT
	  SET LIEU         = p_LIEU ,
		NOM            = p_NOM
	  WHERE IDAEROPORT = p_IDAEROPORT;
	END;
	-- delete aeroport
	PROCEDURE del_aeroport(
		p_IDAEROPORT IN AEROPORT.IDAEROPORT%type )
	IS
	BEGIN
	  DELETE FROM AEROPORT WHERE IDAEROPORT = p_IDAEROPORT;
	END;

	
	  -- insert avion
	PROCEDURE ins_avion(
		p_TRANSPORTEUR_IDTRANSPORTEUR IN AVION.TRANSPORTEUR_IDTRANSPORTEUR%type ,
		p_MANUFACTURIER               IN AVION.MANUFACTURIER%type ,
		p_IDAVION                     IN AVION.IDAVION%type ,
		p_MODELE                      IN AVION.MODELE%type DEFAULT NULL )
	IS
	BEGIN
	  INSERT
	  INTO AVION
		(
		  TRANSPORTEUR_IDTRANSPORTEUR ,
		  MANUFACTURIER ,
		  IDAVION ,
		  MODELE
		)
		VALUES
		(
		  p_TRANSPORTEUR_IDTRANSPORTEUR ,
		  p_MANUFACTURIER ,
		  p_IDAVION ,
		  p_MODELE
		);
	END;
	-- update avion
	PROCEDURE upd_avion
	  (
		p_TRANSPORTEUR_IDTRANSPORTEUR IN AVION.TRANSPORTEUR_IDTRANSPORTEUR%type ,
		p_MANUFACTURIER               IN AVION.MANUFACTURIER%type ,
		p_IDAVION                     IN AVION.IDAVION%type ,
		p_MODELE                      IN AVION.MODELE%type DEFAULT NULL
	  )
	IS
	BEGIN
	  UPDATE AVION
	  SET TRANSPORTEUR_IDTRANSPORTEUR = p_TRANSPORTEUR_IDTRANSPORTEUR ,
		MANUFACTURIER                 = p_MANUFACTURIER ,
		MODELE                        = p_MODELE
	  WHERE IDAVION                   = p_IDAVION;
	END;
	-- delete avion
	PROCEDURE del_avion(
		p_IDAVION IN AVION.IDAVION%type )
	IS
	BEGIN
	  DELETE FROM AVION WHERE IDAVION = p_IDAVION;
	END;

	
		  -- insert avion-etat_avion
	PROCEDURE ins_avion_etat_avion(
		p_ETAT_AVION_IDETATAVION IN AVION_ETAT_AVION.ETAT_AVION_IDETATAVION%type ,
		p_AVION_IDAVION          IN AVION_ETAT_AVION.AVION_IDAVION%type )
	IS
	BEGIN
	  INSERT
	  INTO AVION_ETAT_AVION
		(
		  ETAT_AVION_IDETATAVION ,
		  AVION_IDAVION
		)
		VALUES
		(
		  p_ETAT_AVION_IDETATAVION ,
		  p_AVION_IDAVION
		);
	END;
	
	-- delete avion-etat_avion
	PROCEDURE del_avion_etat_avion(
		p_AVION_IDAVION          IN AVION_ETAT_AVION.AVION_IDAVION%type ,
		p_ETAT_AVION_IDETATAVION IN AVION_ETAT_AVION.ETAT_AVION_IDETATAVION%type )
	IS
	BEGIN
	  DELETE
	  FROM AVION_ETAT_AVION
	  WHERE AVION_IDAVION        = p_AVION_IDAVION
	  AND ETAT_AVION_IDETATAVION = p_ETAT_AVION_IDETATAVION;
	END;

	
	  -- insert etat_avion
	PROCEDURE ins_etat_avion(
		p_ETAT_ACTUEL IN ETAT_AVION.ETAT_ACTUEL%type ,
		p_PISTE       IN ETAT_AVION.PISTE%type ,
		p_IDETATAVION IN ETAT_AVION.IDETATAVION%type )
	IS
	BEGIN
	  INSERT
	  INTO ETAT_AVION
		(
		  ETAT_ACTUEL ,
		  PISTE ,
		  IDETATAVION
		)
		VALUES
		(
		  p_ETAT_ACTUEL ,
		  p_PISTE ,
		  p_IDETATAVION
		);
	END;
	-- update etat_avion
	PROCEDURE upd_etat_avion
	  (
		p_ETAT_ACTUEL IN ETAT_AVION.ETAT_ACTUEL%type ,
		p_PISTE       IN ETAT_AVION.PISTE%type ,
		p_IDETATAVION IN ETAT_AVION.IDETATAVION%type
	  )
	IS
	BEGIN
	  UPDATE ETAT_AVION
	  SET ETAT_ACTUEL   = p_ETAT_ACTUEL ,
		PISTE           = p_PISTE
	  WHERE IDETATAVION = p_IDETATAVION;
	END;
	-- delete etat_avion
	PROCEDURE del_etat_avion(
		p_IDETATAVION IN ETAT_AVION.IDETATAVION%type )
	IS
	BEGIN
	  DELETE FROM ETAT_AVION WHERE IDETATAVION = p_IDETATAVION;
	END;

		
	  -- insert etat_avion-piste
	PROCEDURE ins_etat_avion_piste(
		p_ETAT_AVION_IDETATAVION IN ETAT_AVION_PISTE.ETAT_AVION_IDETATAVION%type ,
		p_PISTE_IDPISTE          IN ETAT_AVION_PISTE.PISTE_IDPISTE%type )
	IS
	BEGIN
	  INSERT
	  INTO ETAT_AVION_PISTE
		(
		  ETAT_AVION_IDETATAVION ,
		  PISTE_IDPISTE
		)
		VALUES
		(
		  p_ETAT_AVION_IDETATAVION ,
		  p_PISTE_IDPISTE
		);
	END;
	
	-- delete etat_avion-piste
	PROCEDURE del_etat_avion_piste(
		p_PISTE_IDPISTE          IN ETAT_AVION_PISTE.PISTE_IDPISTE%type ,
		p_ETAT_AVION_IDETATAVION IN ETAT_AVION_PISTE.ETAT_AVION_IDETATAVION%type )
	IS
	BEGIN
	  DELETE
	  FROM ETAT_AVION_PISTE
	  WHERE PISTE_IDPISTE        = p_PISTE_IDPISTE
	  AND ETAT_AVION_IDETATAVION = p_ETAT_AVION_IDETATAVION;
	END;


	
	  -- insert etat_vol
	PROCEDURE ins_etat_vol(
		p_IDETATVOL   IN ETAT_VOL.IDETATVOL%type ,
		p_ORIENTATION IN ETAT_VOL.ORIENTATION%type DEFAULT NULL ,
		p_ETATACTUEL  IN ETAT_VOL.ETATACTUEL%type ,
		p_ALTITUDE    IN ETAT_VOL.ALTITUDE%type DEFAULT NULL ,
		p_LONGITUDE   IN ETAT_VOL.LONGITUDE%type ,
		p_VITESSE     IN ETAT_VOL.VITESSE%type DEFAULT NULL ,
		p_LATITUDE    IN ETAT_VOL.LATITUDE%type )
	IS
	BEGIN
	  INSERT
	  INTO ETAT_VOL
		(
		  IDETATVOL ,
		  ORIENTATION ,
		  ETATACTUEL ,
		  ALTITUDE ,
		  LONGITUDE ,
		  VITESSE ,
		  LATITUDE
		)
		VALUES
		(
		  p_IDETATVOL ,
		  p_ORIENTATION ,
		  p_ETATACTUEL ,
		  p_ALTITUDE ,
		  p_LONGITUDE ,
		  p_VITESSE ,
		  p_LATITUDE
		);
	END;
	-- update etat_vol
	PROCEDURE upd_etat_vol
	  (
		p_IDETATVOL   IN ETAT_VOL.IDETATVOL%type ,
		p_ORIENTATION IN ETAT_VOL.ORIENTATION%type DEFAULT NULL ,
		p_ETATACTUEL  IN ETAT_VOL.ETATACTUEL%type ,
		p_ALTITUDE    IN ETAT_VOL.ALTITUDE%type DEFAULT NULL ,
		p_LONGITUDE   IN ETAT_VOL.LONGITUDE%type ,
		p_VITESSE     IN ETAT_VOL.VITESSE%type DEFAULT NULL ,
		p_LATITUDE    IN ETAT_VOL.LATITUDE%type
	  )
	IS
	BEGIN
	  UPDATE ETAT_VOL
	  SET ORIENTATION = p_ORIENTATION ,
		ETATACTUEL    = p_ETATACTUEL ,
		ALTITUDE      = p_ALTITUDE ,
		LONGITUDE     = p_LONGITUDE ,
		VITESSE       = p_VITESSE ,
		LATITUDE      = p_LATITUDE
	  WHERE IDETATVOL = p_IDETATVOL;
	END;
	-- delete etat_vol
	PROCEDURE del_etat_vol(
		p_IDETATVOL IN ETAT_VOL.IDETATVOL%type )
	IS
	BEGIN
	  DELETE FROM ETAT_VOL WHERE IDETATVOL = p_IDETATVOL;
	END;
	
	  -- insert mode_paiement
	PROCEDURE ins_mode_paiement(
		p_TYPE_PAIEMENT IN MODE_PAIEMENT.TYPE_PAIEMENT%type ,
		p_IDMODEPAIMENT IN MODE_PAIEMENT.IDMODEPAIMENT%type )
	IS
	BEGIN
	  INSERT
	  INTO MODE_PAIEMENT
		(
		  TYPE_PAIEMENT ,
		  IDMODEPAIMENT
		)
		VALUES
		(
		  p_TYPE_PAIEMENT ,
		  p_IDMODEPAIMENT
		);
	END;
	-- update mode_paiement
	PROCEDURE upd_mode_paiement
	  (
		p_TYPE_PAIEMENT IN MODE_PAIEMENT.TYPE_PAIEMENT%type ,
		p_IDMODEPAIMENT IN MODE_PAIEMENT.IDMODEPAIMENT%type
	  )
	IS
	BEGIN
	  UPDATE MODE_PAIEMENT
	  SET TYPE_PAIEMENT   = p_TYPE_PAIEMENT
	  WHERE IDMODEPAIMENT = p_IDMODEPAIMENT;
	END;
	-- delete mode_paiement
	PROCEDURE del_mode_paiement(
		p_IDMODEPAIMENT IN MODE_PAIEMENT.IDMODEPAIMENT%type )
	IS
	BEGIN
	  DELETE FROM MODE_PAIEMENT WHERE IDMODEPAIMENT = p_IDMODEPAIMENT;
	END;

	  -- insert passager
	PROCEDURE ins_passager(
		p_MODE_PAIEMENT_IDMODEPAIMENT IN PASSAGER.MODE_PAIEMENT_IDMODEPAIMENT%type ,
		p_UTILISATEUR_IDUTILISATEUR   IN PASSAGER.UTILISATEUR_IDUTILISATEUR%type ,
		p_IDPASSAGER                  IN PASSAGER.IDPASSAGER%type )
	IS
	BEGIN
	  INSERT
	  INTO PASSAGER
		(
		  MODE_PAIEMENT_IDMODEPAIMENT ,
		  UTILISATEUR_IDUTILISATEUR ,
		  IDPASSAGER
		)
		VALUES
		(
		  p_MODE_PAIEMENT_IDMODEPAIMENT ,
		  p_UTILISATEUR_IDUTILISATEUR ,
		  p_IDPASSAGER
		);
	END;
	-- update passager
	PROCEDURE upd_passager
	  (
		p_MODE_PAIEMENT_IDMODEPAIMENT IN PASSAGER.MODE_PAIEMENT_IDMODEPAIMENT%type ,
		p_UTILISATEUR_IDUTILISATEUR   IN PASSAGER.UTILISATEUR_IDUTILISATEUR%type ,
		p_IDPASSAGER                  IN PASSAGER.IDPASSAGER%type
	  )
	IS
	BEGIN
	  UPDATE PASSAGER
	  SET MODE_PAIEMENT_IDMODEPAIMENT = p_MODE_PAIEMENT_IDMODEPAIMENT ,
		UTILISATEUR_IDUTILISATEUR     = p_UTILISATEUR_IDUTILISATEUR
	  WHERE IDPASSAGER                = p_IDPASSAGER;
	END;
	-- delete passager
	PROCEDURE del_passager(
		p_IDPASSAGER IN PASSAGER.IDPASSAGER%type )
	IS
	BEGIN
	  DELETE FROM PASSAGER WHERE IDPASSAGER = p_IDPASSAGER;
	END;

		

	  -- insert piste
	PROCEDURE ins_piste(
		p_IDPISTE             IN PISTE.IDPISTE%type ,
		p_LONGUEUR            IN PISTE.LONGUEUR%type ,
		p_ETATPISTE           IN PISTE.ETATPISTE%type ,
		p_AEROPORT_IDAEROPORT IN PISTE.AEROPORT_IDAEROPORT%type ,
		p_LARGEUR             IN PISTE.LARGEUR%type )
	IS
	BEGIN
	  INSERT
	  INTO PISTE
		(
		  IDPISTE ,
		  LONGUEUR ,
		  ETATPISTE ,
		  AEROPORT_IDAEROPORT ,
		  LARGEUR
		)
		VALUES
		(
		  p_IDPISTE ,
		  p_LONGUEUR ,
		  p_ETATPISTE ,
		  p_AEROPORT_IDAEROPORT ,
		  p_LARGEUR
		);
	END;
	-- update piste
	PROCEDURE upd_piste
	  (
		p_IDPISTE             IN PISTE.IDPISTE%type ,
		p_LONGUEUR            IN PISTE.LONGUEUR%type ,
		p_ETATPISTE           IN PISTE.ETATPISTE%type ,
		p_AEROPORT_IDAEROPORT IN PISTE.AEROPORT_IDAEROPORT%type ,
		p_LARGEUR             IN PISTE.LARGEUR%type
	  )
	IS
	BEGIN
	  UPDATE PISTE
	  SET LONGUEUR          = p_LONGUEUR ,
		ETATPISTE           = p_ETATPISTE ,
		AEROPORT_IDAEROPORT = p_AEROPORT_IDAEROPORT ,
		LARGEUR             = p_LARGEUR
	  WHERE IDPISTE         = p_IDPISTE;
	END;
	-- delete piste
	PROCEDURE del_piste(
		p_IDPISTE IN PISTE.IDPISTE%type )
	IS
	BEGIN
	  DELETE FROM PISTE WHERE IDPISTE = p_IDPISTE;
	END;

		
		  -- insert transporteur
	PROCEDURE ins_transporteur(
		p_IDTRANSPORTEUR IN TRANSPORTEUR.IDTRANSPORTEUR%type ,
		p_NOM            IN TRANSPORTEUR.NOM%type )
	IS
	BEGIN
	  INSERT
	  INTO TRANSPORTEUR
		(
		  IDTRANSPORTEUR ,
		  NOM
		)
		VALUES
		(
		  p_IDTRANSPORTEUR ,
		  p_NOM
		);
	END;
	-- update transporteur
	PROCEDURE upd_transporteur
	  (
		p_IDTRANSPORTEUR IN TRANSPORTEUR.IDTRANSPORTEUR%type ,
		p_NOM            IN TRANSPORTEUR.NOM%type
	  )
	IS
	BEGIN
	  UPDATE TRANSPORTEUR SET NOM = p_NOM WHERE IDTRANSPORTEUR = p_IDTRANSPORTEUR;
	END;
	-- delete transporteur
	PROCEDURE del_transporteur(
		p_IDTRANSPORTEUR IN TRANSPORTEUR.IDTRANSPORTEUR%type )
	IS
	BEGIN
	  DELETE FROM TRANSPORTEUR WHERE IDTRANSPORTEUR = p_IDTRANSPORTEUR;
	END;
		
		
	
		
		  -- insert utilisateur
	PROCEDURE ins_utilisateur(
		p_NOM           IN UTILISATEUR.NOM%type ,
		p_IDUTILISATEUR IN UTILISATEUR.IDUTILISATEUR%type ,
		p_MOT_DE_PASSE  IN UTILISATEUR.MOT_DE_PASSE%type DEFAULT NULL )
	IS
	BEGIN
	  INSERT
	  INTO UTILISATEUR
		(
		  NOM ,
		  IDUTILISATEUR ,
		  MOT_DE_PASSE
		)
		VALUES
		(
		  p_NOM ,
		  p_IDUTILISATEUR ,
		  p_MOT_DE_PASSE
		);
	END;
	-- update utilisateur
	PROCEDURE upd_utilisateur
	  (
		p_NOM           IN UTILISATEUR.NOM%type ,
		p_IDUTILISATEUR IN UTILISATEUR.IDUTILISATEUR%type ,
		p_MOT_DE_PASSE  IN UTILISATEUR.MOT_DE_PASSE%type DEFAULT NULL
	  )
	IS
	BEGIN
	  UPDATE UTILISATEUR
	  SET NOM             = p_NOM ,
		MOT_DE_PASSE      = p_MOT_DE_PASSE
	  WHERE IDUTILISATEUR = p_IDUTILISATEUR;
	END;
	-- delete utilisateur
	PROCEDURE del_utilisateur(
		p_IDUTILISATEUR IN UTILISATEUR.IDUTILISATEUR%type )
	IS
	BEGIN
	  DELETE FROM UTILISATEUR WHERE IDUTILISATEUR = p_IDUTILISATEUR;
	END;
		
		
		
	
		  -- insert vol-aeroport
	PROCEDURE ins_vol_aeroport(
		p_VOL_NUMEROVOL       IN VOL_AEROPORT.VOL_NUMEROVOL%type ,
		p_AEROPORT_IDAEROPORT IN VOL_AEROPORT.AEROPORT_IDAEROPORT%type )
	IS
	BEGIN
	  INSERT
	  INTO VOL_AEROPORT
		(
		  VOL_NUMEROVOL ,
		  AEROPORT_IDAEROPORT
		)
		VALUES
		(
		  p_VOL_NUMEROVOL ,
		  p_AEROPORT_IDAEROPORT
		);
	END;
	
	-- delete vol-aeroport
	PROCEDURE del_vol_aeroport(
		p_VOL_NUMEROVOL       IN VOL_AEROPORT.VOL_NUMEROVOL%type ,
		p_AEROPORT_IDAEROPORT IN VOL_AEROPORT.AEROPORT_IDAEROPORT%type )
	IS
	BEGIN
	  DELETE
	  FROM VOL_AEROPORT
	  WHERE VOL_NUMEROVOL     = p_VOL_NUMEROVOL
	  AND AEROPORT_IDAEROPORT = p_AEROPORT_IDAEROPORT;
	END;
		
		
		
		 -- insert vol-etat_vol
	PROCEDURE ins_vol_etat_vol(
		p_VOL_NUMEROVOL      IN VOL_ETAT_VOL.VOL_NUMEROVOL%type ,
		p_ETAT_VOL_IDETATVOL IN VOL_ETAT_VOL.ETAT_VOL_IDETATVOL%type )
	IS
	BEGIN
	  INSERT
	  INTO VOL_ETAT_VOL
		(
		  VOL_NUMEROVOL ,
		  ETAT_VOL_IDETATVOL
		)
		VALUES
		(
		  p_VOL_NUMEROVOL ,
		  p_ETAT_VOL_IDETATVOL
		);
	END;
	
	-- delete vol-etat_vol
	PROCEDURE del_vol_etat_vol(
		p_VOL_NUMEROVOL      IN VOL_ETAT_VOL.VOL_NUMEROVOL%type ,
		p_ETAT_VOL_IDETATVOL IN VOL_ETAT_VOL.ETAT_VOL_IDETATVOL%type )
	IS
	BEGIN
	  DELETE
	  FROM VOL_ETAT_VOL
	  WHERE VOL_NUMEROVOL    = p_VOL_NUMEROVOL
	  AND ETAT_VOL_IDETATVOL = p_ETAT_VOL_IDETATVOL;
	END;
		
	END TP2P;
