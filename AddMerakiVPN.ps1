#TD KOESIO 02/10/2023

#Variables modifiables
$ConnectionName = 'VPN'
$ServerAddress = 'XXXXX'
$PresharedKey = 'XXXXX'

#Supprimer le VPN s'il existe déjà avec le même nom
Remove-VpnConnection -AllUserConnection -Name $ConnectionName -Force -EA SilentlyContinue
#Ajouter le VPN
Add-VpnConnection -Name $ConnectionName -ServerAddress $ServerAddress -AllUserConnection -TunnelType L2tp -L2tpPsk $PresharedKey -AuthenticationMethod Pap -EncryptionLevel Optional -Force -WA SilentlyContinue -RememberCredential

#Modifier le Registre
REG add "HKLM\SYSTEM\CurrentControlSet\Services\RasMan\Parameters" /v ProhibitIpSec /t REG_DWORD /d 0 /f
REG add "HKLM\SYSTEM\CurrentControlSet\Services\PolicyAgent" /v AssumeUDPEncapsulationContextOnSendRule /t REG_DWORD /d 2 /f
