import os
import cpuinfo as c

r=open("/etc/passwd","r")
find=False

while True:
    print("1- Muestra info del SSOO y de la CPU")
    print("2- Info de los usuarios")
    print("3- Diganos un directorio")
    print("4- Salir")
    option = int(input("Seleccione una de las opciones: "))

    if(option == 1):
        print(os.uname().sysname)
        print(c.get_cpu_info()["brand_raw"])
        print(" ")

    if(option == 2):
        usuario=input("Escribe un usuario: ")
        lines=r.readlines()
        for i in lines:
            if usuario in i:
                find=True
        if find==True:
            print("EL usuario "+usuario+" ya existe")
            print(" ")
        else:
            os.system("useradd  -m "+usuario)
            print("Usuario creado correctamente")
            print(" ")
        r.close()

    if(option == 3):
        dir=input("Escriba la carpeta: ")
        valor=os.path.exists(dir)
        if valor==True:
            print("El directorio que ha introducido existe")
            print(" ")
        elif valor==False:
            os.mkdir(dir)
            print("EL directorio que ha introducido se ha creado correctamente")
            print(" ")

    if(option == 4):
        break

