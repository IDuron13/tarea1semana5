#!/bin/bash
menu() {
	clear
	echo "**************************"
	echo "*        Menu            *"
	echo "* 1.Cear un archivo      *"
	echo "* 2.Eliminar un archivo  *"
	echo "* 3.Crear una carpeta    *"
	echo "* 4.Salir                *"
	echo "**************************"
	echo "Elegir una opcion del menu:"
	read opcion

	return $opcion
}

crearArchivo() {
	clear
	echo "**************************"
	echo "*   Crear un archivo     *"
	echo "**************************"
	echo "Ingrese el nombre del archivo:"
	read archivo

	touch $HOME/Semana5/$archivo
	echo "Archivo creada exitosamente"
}

eliminarArchivo() {
	clear
	echo "**************************"
	echo "*   Eliminar archivo     *"
	echo "**************************"
	echo "Ingrese el nombre del archivo a eliminar:"
	read archivo

	rm $HOME/Semana5/$archivo
	echo "Archivo eliminado exitosamente"
}
crearCarpeta() {
	clear
	echo "**************************"
	echo "*   Crear una carpeta     *"
	echo "**************************"
	echo "Ingrese el nombre de la carpeta:"
	read carpeta

	mkdir $HOME/Semana5/$carpeta
	echo "Carpeta creada exitosamente"
}


menu

while [ "$opcion" != 4 ]
do 
	case $opcion in
	1)
		crearArchivo
	;;

	2)
		eliminarArchivo
	;;

	3)
		crearCarpeta
	;;
	4)
	exit
	;;

	*)
	echo "Opcion no valida"
	;;
	esac
	
	sleep 1.5s

	menu

done
