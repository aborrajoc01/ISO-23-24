@echo off 
REM Reliza la media de 3 numeros pasados por parametros
REM
REM Autor: Alejandro Borrajo Cruz
REM Fecha: 14-11-2023

set /A suma= %1 + %2 + %3 
set /A media=%suma%/3
echo La media de los numeros: %1 ,%2 y %3 es %media%