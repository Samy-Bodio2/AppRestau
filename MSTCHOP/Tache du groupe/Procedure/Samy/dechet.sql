-- set serveroutput on;
-- CREATE OR REPLACE FUNCTION id_restau(nom VARCHAR)
-- RETURN INT IS
-- CURSOR idrst IS
-- SELECT id_user from Users where username = nom;
-- entier INT;
-- BEGIN
-- OPEN idrst;
-- FETCH idrst into entier;
-- RETURN entier;
-- END;
-- /

-- INSERT INTO Restaurant(id_resto,name_resto,Description,name_employee,phone_number,resto_address,Date_res_created,id_user)
-- VALUES
-- (id_resto_seq.nextval,
-- '&Entrer_le_nom_du_restau',
-- '&Description',
-- '&Responsable_du_restaurant',
-- &Numero_du_restaurant,
-- '&Adresse_du_restaurant',
-- TO_DATE('&Date', 'DD/MM/YYYY'),id_restau('&Enter_your_Username'));



---------------------------------------addmenu

-- CREATE OR REPLACE FUNCTION idutil(nom VARCHAR)
-- RETURN INT IS
-- CURSOR iduse IS
-- SELECT id_user from Users where username = nom;
-- entier INT;
-- BEGIN
-- OPEN iduse;
-- FETCH iduse into entier;
-- RETURN entier;
-- END;
-- /

    -- INSERT INTO Customers(id_cust,first_name,last_name,phone_number,Email,Datecd_cust,Cust_address,id_user)
    -- VALUES
    -- (id_customers_seq.nextval,'&first_name','&last_name',&phone_number,'&Email',SYSDATE,'&Cust_address',idutil('&Enter_Your_User_Name'));








    
    
    
    
    CREATE OR REPLACE FUNCTION idpan(nom VARCHAR)
    RETURN INT IS
    CURSOR idpanier IS
    SELECT P.id_panier from Panier P
    join Customers C
    on P.id_cust = C.id_cust 
    join Users S
    on S.id_user = C.id_user
    where S.username = nom;
    entier INT;
    BEGIN
    OPEN idpanier;
    FETCH idpanier into entier;
    RETURN entier;
    END;
    /