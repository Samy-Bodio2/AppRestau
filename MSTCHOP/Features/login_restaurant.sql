SELECT username, password
FROM Restaurant r 
JOIN Users u
ON(r.id_user = u.id_user)
WHERE username = '&username' AND password = format1('&password');

@Features/Features_respo_resto/Menu_respo_resto_con