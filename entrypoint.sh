#!/bin/bash

# Démarrer FRRouting
/usr/lib/frr/frrinit.sh start

# Lancer un shell interactif pour rester dans le conteneur
exec bash -i
