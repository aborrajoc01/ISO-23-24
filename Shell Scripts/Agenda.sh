#!/bin/bash
#Autor:Alejandro Borrajo Cruz
#Fecha: 17/01/2024
#Entregable 1. Agenda de contactos

clear

dni=$(echo $dni | cut -d ":" -f 1)

while true ;do

	echo "a-Añadir una entrada"
	echo "b-Buscar por dni"
	echo "c-Ver la agenda completa"
	echo "d-Eliminar todas las entradas de la agenda"
	echo "e-Finalizar"
	read -p "Seleccione una opcion: " option
	echo

	case $option in

	a)
		echo "Usted a seleccionado Añadir una entrada"
		read -p "Introduzca su dni para identificarle: " dni
		if grep "^$dni" agenda.txt >> /dev/null ; then
			echo "El usuario que ha introducido ya existe"
			echo
		
		else
			read -p "Introduzca su nombre: " name
			read -p "Introduzca sus apellidos: " surname
			read -p "Introduzca su localidad: " local
			echo "Usuario registrado correctamente"
			echo
			echo $dni:$name:$surname:$local >> agenda.txt
		
		fi
		
	;;

	
	b)
		echo "Usted a seleccionado Buscar por dni"
		read -p "Introduzca un dni y le facilitaremos su informacion: " dni
		if grep "^$dni" agenda.txt >> /dev/null ;then
		name=$(grep "^$dni" agenda.txt | cut -d ":" -f 2)
		surname=$(grep "^$dni" agenda.txt | cut -d ":" -f 3)
		local=$(grep "^$dni" agenda.txt | cut -d ":" -f 4)
			echo "Los datos del dni registrado ($dni) son:"
			echo "Nombre: $name"
			echo "Apellidos: $surname"
			echo "Localidad: $local"
			echo
		else
			echo "El dni que ha introducido ($dni) no existe en la base de datos"
			echo
		fi
	;;
	

	c)
		echo "Usted a seleccionado Ver la agenda completa"
		echo
		echo "(dni)" "(nombre)" "(apellidos)" "(localidad)"
		echo
		if [ -e agenda.txt ]; then
			completo=$(cat agenda.txt)
			echo "$completo"
			echo
		else
			echo "La agenda esta vacia"
		fi
	;;
	
	d)
		echo "Eliminando todas las entradas de la Agenda..."
		if [ ! -s agenda.txt ]; then
			echo " " > "agenda.txt"
			echo "Todas las entradas de la Agenda han sido eliminadas"
			echo
		else
			echo "La agenda está vacia"
			echo
		fi
	;;
	
	e)
		echo "Usted ha seleccionado Finalizar"
		exit
	;;

	esac
	done

break
		

