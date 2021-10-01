#!/bin/bash
# BY SKYX **_**

noir='\e[0;30m'
gris='\e[1;30m'
rougefonce='\e[0;31m'
rose='\e[1;31m'
vertfonce='\e[0;32m'
vertclair='\e[1;32m'
orange='\e[0;33m'
jaune='\e[1;33m'
bleufonce='\e[0;34m'
bleuclair='\e[1;34m'
violetfonce='\e[0;35m'
violetclair='\e[1;35m'
cyanfonce='\e[0;36m'
cyanclair='\e[1;36m'
grisclair='\e[0;37m'
blanc='\e[1;37m'

neutre='\e[0;m'

# this script generate a GPG keys with Linux Instance
if [ "-n $1" ]; then
        chaine0="$1"
else
    chaine0="$$"
fi

POS=3
LONG=20

# Linux Instance start
chaine1=$( echo "$chaine0" | md5sum | md5sum )
chainealeatoire="${chaine1:$POS:$LONG}"

clear
sleep 2
echo "-----BEGIN PGP Private KEY BLOCK-----" >> LOG && echo "" >> LOG
echo "GPG Keys => " >> LOG #&& hexdump -n 16 -v -e '/1 "%02X"' -e '/16 "\n"' /dev/urandom

for i in `seq 1 10`; do
    hexdump -n 16 -v -e '/1 "%02X"' -e '/16 "\n"' /dev/urandom >> LOG
    hexdump -n 16 -v -e '/1 "%02X"' -e '/16 "\n"' /dev/urandom >> LOG
done

echo "" && echo -e "$vertfonce Algorith AES Base => $chainealeatoire $neutre" >> LOG
echo "" && echo "-----END PGP Private KEY BLOCK-----" >> LOG

# 29.09.21
#end
