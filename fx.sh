#!/bin/bash

sv_gitea=https://kheb.ignorelist.com:3000
ch_gitea=${CH_GITEA:-/home/michel/conf/kheb}
ch_atelier=$ch_gitea/publius/atelier_sciences
ch_monorg=$ch_gitea/publius
ch_base_brouillon=$ch_monorg/brouillons/

creer_note_brouillon() { #1(o): nom, #r: chemin
    local ch i=0
    # créer un répertoire ici
    cd $ch_base_brouillon
    ch=$(date +%Y-%M-%d)
    while [ -d "${ch}_${i}" ] ; do
        i=$((i+1))
    done
    mkdir "${ch}_${i}"
    # créer un fichier org sur la base du template
    cp $ch_atelier/canevas/NOTE.org "${ch}_${i}"/NOTE.org
    echo "${ch}_${i}"/NOTE.org
    cd ->/dev/null
}

creer_note_brouillon "$@"
