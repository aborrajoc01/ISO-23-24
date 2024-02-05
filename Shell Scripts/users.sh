#!/bin/bash
#Nombre: Alejandro Borrajo Cruz
#Fecha: 04-02-2024
#Entregable users.sh


if [ $# -ge 2  ]; then
	echo "Se necesita al menos un parametro"
	exit 1
fi


num=$1

if [ -z $1 ]; then
	num=1000
fi


echo "==============================================" > /tmp/logUsers.sh
echo "" >> /tmp/logUsers.sh

fecha=$(date +%d-%m-%Y)
hora=$(date +%H:%M)

echo "Informe de users el dia $fecha a las $hora " >> /tmp/logUsers.sh
echo "" >> /tmp/logUsers.sh


while cont=: read usuario campo2 UID campo4
do

	if [ $UID -gt $num ]; then
		echo "$usuario - $uid" >> /tmp/logUsers.sh
		echo "" >> /tmp/logUsers.sh
		
		let contador=$contador+1	
	fi
	
done < /etc/passwd


echo "Total: $contador usuarios" >> /tmp/logUsers.sh	
echo "" >> /tmp/logUsers.sh
echo "==============================================" >> /tmp/logUsers.sh

cat /tmp/logUsers.sh

rm /tmp/logUsers.sh


echo "$fecha - $hora - El usuario $USER ha solicitado un informe de usuarios" >> /tmp/logeventos
