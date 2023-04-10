#!/bin/sh

#Informations de connexion à la base de données Oracle
username="nom_utilisateur"
password="mot_de_passe"
host="nom_hôte"
port="numéro_port"
sid="nom_sid"

#Nom du fichier de sauvegarde
backup_file="backup_oracle.dmp"

#Options d'importation
impdp_options="FULL=Y DIRECTORY=backup_dir DUMPFILE=$backup_file"

#Connect à la base de données et importation
impdp $username/$password@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(HOST=$host)(PORT=$port))(CONNECT_DATA=(SID=$sid))) $impdp_options
