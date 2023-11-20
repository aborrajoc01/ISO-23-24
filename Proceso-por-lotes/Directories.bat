@echo off
REM 
REM Autor: Alejandro Borrajo Cruz
REM Fecha: 15-11-2023
REM Observaciones:  • 1- Crear fichero con nombre pedido al usuario 
REM					• 2- Mostrar el árbol de directorios de la carpeta de usuario 
REM					• 3- Mostrar archivos con extensión txt 
REM					• 4- Crea los directorios alfredoff, marinapg y ramonam en tu directorio actual 
REM					• 5- Copia el contenido de tu carpeta de usuario al Escritorio.
					
set /P opcion= "Seleccione un numero entre 1 y 5: "
if %opcion%==1 goto dir
if %opcion%==2 goto tree
if %opcion%==3 goto txt
if %opcion%==4 goto makedir
if %opcion%==5 goto copy
:dir
set /P nombre= "Seleccione el nombre del fichero: "
mkdir %nombre%
echo Usted ha creado la carpeta %nombre% con exito
pause
exit
:tree
tree %USERPROFILE%
pause
exit
:txt
echo Pulse intro para mostrar los archivos .txt
pause
dir /b *.txt
pause
exit
:makedir
pause
mkdir alfredoff marinapg ramonam
echo Directorios creados con exito
pause 
exit
:copy
set "usuario"=%USERPROFILE%"
set escritorio=%USERPROFILE%\Desktop"
echo Copiando de %usuario% a %escritorio%...
xcopy /E /I /Y "%usuario% "%escritorio%"
echo Copia realizada con exito
pause
exit


