#!/bin/bash
#La linea superior sirve para indicar que se hace con bash
#for-in sirve para crear un bucle
#'for' guarda el nombre un archivo por cada vuelta  y 'in' recorre  todos los archivos que terminen en .fasta

for secuencia  in *.fasta

	do grep -i -B 1 "CTACAGAGAAATC" $secuencia >> resultados.txt
#do-done, sirve para delimitar lo que tiene que repetir cada vuelta del bucle
#-i sirve para que no diferencie las mayusculas y minusculas
#-B 1 sirve para que muestre la linea donde esta la secuencia y la anterior,en este caso, donde se encuentra el nombre del paciente
#la secuencia dada es la mutacion V600E
#>>resultados.txt, sirve para enviar los resultados obtenidos a un archivo txt aparte
done


