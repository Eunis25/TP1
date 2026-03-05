#!/bin/bash

# Vérification du bonus : si aucun argument n'est passé
if [ -z "$1" ]
then
    echo -e "\033[31mErreur : Veuillez donner un nom au projet.\033[0m"
    exit 1
fi

NOM_PROJET=$1

# Création de la structure de dossiers
mkdir -p "$NOM_PROJET"/{src,tests,docs}
touch "$NOM_PROJET"/README.md
touch "$NOM_PROJET"/.gitignore

# Écriture dans README.md
echo "# $NOM_PROJET" > "$NOM_PROJET"/README.md
echo "Date de création : $(date)" >> "$NOM_PROJET"/README.md
echo "Auteur : Ton Nom" >> "$NOM_PROJET"/README.md

# Écriture dans .gitignore
echo -e "__pycache__/\n*.pyc\n.env\nnode_modules/" > "$NOM_PROJET"/.gitignore

# Message de succès en vert (Bonus)
echo -e "\033[32mLe projet $NOM_PROJET a été créé avec succès !\033[0m"
