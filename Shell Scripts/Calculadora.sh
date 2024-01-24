#!/bin/bash
#Autor: Alejandro Borrajo Cruz
#Fecha: 23/01/2024
#Entregable 2: Calculadora.sh

clear

echo "Alejandro Borrajo Cruz"

if [ $# -ne 2 ]; then
	echo "Numero de parametros incorrecto"
	exit
fi

if [ -f $1 ]; then
	echo "Fichero Existente"
	exit
fi

i=1

while [ $i -le $2 ]; do

read -p "Operacion: Num1 Num2 " Op Num1 Num2 

case $Op in
	
	S)
	
		OpS=$(($Num1 + $Num2))
		
		echo "La suma de $Num1 y $Num2 es = $OpS" 
		echo "$Op $Num1 $Num2" >> $1
		
		;;
	
	R)
	
		OpR=$(($Num1 - $Num2))
		
		echo "La resta de $Num1 y $Num2 es = $OpR"
		echo "$Op $Num1 $Num2" >> $1 
		
		;;
	
	M)
	
		OpM=$(($Num1 * $Num2))
		
		echo "La multiplicacion de $Num1 y $Num2 es = $OpM"
		echo "$Op $Num1 $Num2" >> $1
		
		;;
	
	D)
	
		OpD=$(($Num1 / $Num2))
		
		echo "La division de $Num1 y $Num2 es = $OpD"
		echo "$Op $Num1 $Num2" >> $1
		
		;;
	
	X)
	
		echo "Salimos del script"
		exit
	
		;;
	
	*)
	
		echo "Operacion incorrecta"
		
		;;

esac

i=$(($i+1))
#Porque tiene que ser incremental


done

p=$(pwd)

echo $p/$1

cat /$HOME/$1

