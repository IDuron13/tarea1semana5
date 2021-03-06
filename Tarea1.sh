switch.sh
echo "*************************"
echo "*        Menu           *"
echo "* 1.Crear un archivo    *"
echo "* 2.Eliminar un archivo *"
echo "* 3.Crear una Carpeta   *"
echo "* 4.Salir               *"
echo "*************************"

echo "Elegir una opcion del menu:"
read opcion

clear

case $opcion in
1)
clear
echo "*************************"
echo "*   Crear un archivo    *"
echo "*************************"

echo "Ingrese el nombre del archivo:"
read archivo

touch $HOME/Semana5/$archivo
	echo "Archivo creado de manera exitosa"
;;

2)
clear
echo "*************************"
echo "*  Eliminar un archivo  *"
echo "*************************"

echo "Ingrese el nombre del archivo a eliminar:"
read archivo

rm $HOME/Semana5/$archivo
	echo "Archivo eliminado de forma exitosa"
;;

3)
clear
echo "*************************"
echo "*  Crear una Carpeta    *"
echo "*************************"

echo "Ingrese el nombre de la carpeta a crear:"
read carpeta

mkdir $HOME/Semana5/$carpeta
	echo "Carpeta creada de forma exitosa"
;;

4)
	exit
;;

*)
	echo "Opcion no valida"
;;
esac
