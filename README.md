### [AddMerakiVPN](AddMerakiVPN.ps1) ###
A lancer en tant qu'administrateur\
\
"AddMerakiVPN.ps1" permet d'ajouter un VPN (Windows Intégré) pour se connecter à un routeur Meraki.\
3 variables modifiable:\
-"ConnectionName", le nom que le VPN aura sur le PC\
-"ServerAddress", le "Hostname", a retrouver dans le menu "Client VPN" de Meraki\
-"PresharedKey", le "Shared secret", a retrouver dans le menu "Client VPN" de Meraki\
\
Il faudra rentrer manuellement le nom d'utilisateur et le mot de passe lors de la première connexion au VPN
