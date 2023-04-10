#!/bin/sh
#informations de connexion à la base de données Oracle
username="nom_utilisateur"
password="mot_de_passe"
host="nom_hôte"
port="numéro_port"
sid="nom_sid"

#Requête SQL à exécuter
query="SELECT * FROM ma_table;"

#Connect à la base de données à l'aide de SQL*Plus et exécution la requête SQL
sqlplus -S $username/$password@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(HOST=$host)(PORT=$port))(CONNECT_DATA=(SID=$sid))) << EOF
$query
exit
EOF
