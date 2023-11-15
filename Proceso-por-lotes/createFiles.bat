@echo off
REM 
REM Autor: Alejandro Borrajo Cruz
REM Fecha: 15-11-2023
REM Observaciones: Crear un menú con dos opciones: Si el usuario pulsa 1, se creará un archivo .txt y si pulsa 2 que se cree un archivo .bat.

set /P n1= "Seleccione 1 para crear un archivo .txt o 2 para crear un archivo .bat: "
set /P nombre= "Escriba el nombre de su archivo: "
if %n1%==1 goto txt
if %n1%==2 goto bat

:txt
type nul > %nombre%.txt
echo Usted ha seleccionado %n1%, se ha creado su archivo.txt
pause
exit
:bat
type nul > %nombre%.bat
echo Usted ha seleccionado %n1%, se ha creado su archivo.bat
exit
