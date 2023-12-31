#!/bin/bash

CRE=$(tput setaf 1)
CGR=$(tput setaf 2)
CYE=$(tput setaf 3)
CBL=$(tput setaf 4)
BLD=$(tput bold)
CNC=$(tput sgr0)

# Args
command=$1

# Logo
logo () {

    local text="${1:?}"
    echo -en "
    WOdddddxk0KNW                                            WNK0kxdddddOW 
     Wo........',:lx0N                                    N0xl:,'........oW 
      Xc.,clcc:;'....;lON                              NOl;....';:cclc,.cX  
       Kc'cdodlc::ccc;..:kN                          Nk:..;ccc::cldodc'cK   
        Xo;:loooooooool:,'cK                        Kc',:loooooooool:;oX    
         WKxolccclllllllc;';OW                    WO;';clllllllcccloxKW     
            WNKOOOOkkkOkkkdokN                    NkodkkkOkkkOOOOKNW       
    \n\n"
    printf ' %s [%s%s %s%s %s]%s\n\n' "${CRE}" "${CNC}" "${CYE}" "${text}" "${CNC}" "${CRE}" "${CNC}"
}

for octeto in [10..150]; do
    devices+=("192.168.1.$octeto")
done

logo "rxfatalslash"

if [ "$(whoami)" != "root" ]; then
    printf "%s%s[ERROR] Ejecuta el sccript como root%s\n\n" "${BLD}" "${CRE}" "${CNC}"
    exit 1
fi

printf "%s%s[+] Conectando con los equipos...%s" "${BLD}" "${CRE}" "${CNC}"
sleep 5
clear

for device in $devices; do
    ssh $USER@$device $command > /dev/null 2>&1

    if [ $? -eq 0 ]; then
        printf "$device [%sSUCCESS%s]\n" "${CGR}" "${CNC}"
    else
        printf "$device [%sFAIL%s]\n" "${CRE}" "${CNC}"
    fi
done