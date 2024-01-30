#!/bin/bash
#Entregable 3: fiveOrMore
#Autor: Alejandro Borrajo Cruz
#Fecha: 29-01-2024

#Numero de parametros valido o no
if [ "$#" -ne 2 ]; then
	echo "ERROR! Inserte nombre del fichero y directorio"
	exit 
fi

#Si el fichero existe
if [ -e "$1" ]; then
	echo "El fichero $1 ya existe, porfavor cree otro"
	exit 1
fi

#Si el directorio existe
if [ ! -d "$2" ]; then
	echo "El directorio ya existe, porfavor cree otro"
	exit 1
fi

#Si el directorio esta vacio
if [ -z "$(ls -A "$2")" ]; then
	echo "El directorio $2 esta vacio"
	exit 1
fi

echo "Autor: Alejandro Borrajo Cruz"

fichero=$(ls $2/*.txt)
for i in $fichero; do
	if [ -f $i ]; then
		lineas=$(cat $i | wc -l)
		if [ $lineas -ge 5 ]; then
			echo $i
			echo $i >> $1
			#Parte 4
			palabras=$(cat $i | wc -w)
			echo "El fichero tiene $palabras palabras" > $i.q
			cat $i >> $i.q
		fi
	fi
done

numero=$(cat $1 | wc -l)

echo $numero >> $1


