import os
import shutil

files = []
direct = []

fichero = open("rutas.txt", "r")
lineas = fichero.readlines()
for i in lineas:
    ruta = i.strip()
    if os.path.isfile(ruta):
        files.append(ruta)

    elif os.path.isdir(ruta):
        direct.append(ruta)


print("A- Nombre de fichero y eliminarlo")
print("B- Nombre de directorio e información")
print("C- Nombre de fichero y copiarlo a destino")
print("D- Lista elegida por usuario")
print("E- Salir")


while True:
    opt = input("Ingrese una opcion: ")

    if opt == "A":
        fic = input("Ingrese el nombre de fichero: ")
        os.system(f'rm {fic}')
        files.remove(fic)

    elif opt == "B":
        dire = input("Ingrese un directorio: ")
        info = os.system(f'ls {dire}')
        print(info)

    elif opt == "C":
        nom = input("Ingrese un nombre de fichero: ")
        dest = input("Ingrese un nombre para el destino: ")

        shutil.copy(f"{nom}", f"{dest}")

    elif opt == "D":
        print("Ingrese '1' para mostrar lista ficheros")
        print("Ingrese '2' para mostrar lista directorios")
        opcion = input("Ingrese opción: ")

        if opcion == "1":
            print(files)

        elif opcion == "2":
            print(direct)

    elif opt == "E":
        print("Salir")
        exit()

fichero.close()
