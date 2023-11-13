@echo offREM Script mkprofile.bat
REM Crea un script que cree en la carpeta USERPROFILE los directorios asir dam smr daw y ceti, ademas dentro de estos directorios crea los subdirectorios docs, pract y exam
REM
REM Autor: Alejandro Borrajo Cruz
REM Fecha: 13/11/23


mkdir %USERPROFILE% \asir \dam \smr \daw \ceti
mkdir %USERPROFILE%\dam\docs %USERPROFILE%\dam\pract %USERPROFILE%\dam\exam
mkdir %USERPROFILE%\asir\docs %USERPROFILE%\asir\pract %USERPROFILE%\asir\exam
mkdir %USERPROFILE%\smr\docs %USERPROFILE%\smr\pract %USERPROFILE%\smr\exam
mkdir %USERPROFILE%\daw\docs %USERPROFILE%\daw\pract %USERPROFILE%\daw\exam
mkdir %USERPROFILE%\ceti\docs %USERPROFILE%\ceti\pract %USERPROFILE%\ceti\exam
