#!/bin/sh

#Informations de connexion à la base de données Oracle
username="nom_utilisateur"
password="mot_de_passe"
host="nom_hôte"
port="numéro_port"
sid="nom_sid"

#Nom du fichier de sauvegarde
backup_file="backup_Oracle.dmp"

#Options d'exportation
expdp_options="FULL=Y CONTENT=METADATA_ONLY DIRECTORY=backup_dir DUMPFILE=$backup_file"

# Se connecter à la base de données et effectuer l'exportation
expdp $username/$password@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(HOST=$host)(PORT=$port))(CONNECT_DATA=(SID=$sid))) $expdp_options
