#!/bin/bash

#Hecho por Eduardo Piedad :D

#Variable para utilizar el while, tambien sirve para enumerar los archivos
contador=1
#Variable que define cuando termina el while, osea la cantidad de veces que se va a ejecutar, por defecto es 25
termina=25
#Variable que almacena la cantidad de archivos que existen con las caracteristicas del ejecricio
cantidad=0
#Variable que almacena el nombre con el que se van a crear los archivos
NOMBRE="EDUARDO"

#Funcion para contar la cantidad de archivos que hay
contar(){
	#Este comando devuelve la cantidad de archivos que hay con el nombre que definimos anteriormente
	let cantidad=$(ls | grep -c $NOMBRE)
	#Un echo para ir viendo que hace el programa
	echo "hay $cantidad archivos con el nombre $NOMBRE"
	#Un condicional que verifica si ya existen archivos ($cantidad mayor que 25)
	#Si es correcto se suma 25 a la cantidad de archivos que hay y se almacena ese valor en la variable
	#que culmina el while ($termina)
	if [ $cantidad -ge 25 ]; then
		let termina=$cantidad+25
		let contador=$cantidad
	return
fi
}
#Se llama a la funcion contar
contar

#Se ejecuta el while

while [ $termina -ge $contador ]
do
	touch "$NOMBRE$contador"
	let contador=$contador+1
done
#Un arreglo del contador ya que al terminar el while se le sumaria 1 innecesariamente
let contador=$contador-1

#Echos para saber como termina el programa
echo "Se crearon $contador archivos"
echo "Deberian haber $termina archivos con el nombre $NOMBRE"





