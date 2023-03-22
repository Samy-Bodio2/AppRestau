set serveroutput on;
prompt ******************************************************************************
prompt Bonjour Mr/Mme/Mlle
prompt
prompt Action a effectuer
prompt
prompt 1. Ajouter un restaurant
prompt 2. Consulter les restaurants
prompt 3. Editer un restaurant
prompt 4. Rechercher un restaurant
prompt 5. Ajouter un menu du jour
prompt 6. Modifier un menu du jour
prompt 7. Historique des commandes
prompt 8. Se déconnecter
prompt 9. Quitter

declare

    v_option varchar(50);
    choix char := '&choix';

begin

    v_option := case choix
        when '1' then ' @Procedure/add_restaurant'
        when '2' then ' @Procedure/consult_restaurant'
        when '3' then  '@Procedure/Procedure_edit_resto'
        when '4' then " @Procedure/recherche d'un restaurant"
        when '5' then  '@Procedure/add_menu_jour'
        when '6' then ' @'
        when '7' then ' @Procedure/historique_commande'
        when '8' then  '@Procedure/se deconnecter'
        when '9' then  '@Procedure/exit'
        END;
        DBMS_OUTPUT.PUT_LINE (v_option);

end ;