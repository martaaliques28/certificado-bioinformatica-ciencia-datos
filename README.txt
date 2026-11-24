En esta practica tenemos como objetivo encontrar a los pacientes, de 4
hospitales diferentes, que sean candidatos a recibir un nuevo farmaco, que actua contra la proteina BRAF mutada (V600E). El script que hemos elaborado
debe procesar los archivos .fasta que nos han proporcionado e identificar a 
aquellos candidatos que presentan la mutacion V600E, mostrandolos dentro de un 
solo documento nuevo.

Partimos de una carpeta donde encontramos datos de ADN de 40 pacientes,
 de 4 hospitales distintos.

DIRECTORIOS:

home/fcb_alumno19/tema2/data/centros_BRAF

intento2_buscar_pacientes_BRAF.sh
·peset.fasta     
·islafe.fasta   
·hcu_1.fasta   
·hug.fasta
·README.txt
·resultados.txt

DATOS DE ENTRADA:

4 archvos .fasta, uno por hospital, con qo pacentes cada uno
 (40 en total). Cada paciente ocupa 2 lineas:
Cabecera: empieza por '>' e incluye el nombre del paciente y el tipo de
tumor
(ejemplo: >PAC003|melanoma).
Algunas de las secuencias estan en minusculas, pero para que las reconozca el script haremos
 uso de 'grep -i', para que sea capaz de analizar mayusculas y minusculas.

SCRIPT UTILIZADO:

intento2_buscar_pacientes_BRAF.sh

Ejecucion (desde centros_BRAF):

Para este script he utilizado un blucle 'for'.

Funcionamiento:

!/bin/bash indica que el script se ejecuta con bash
- el bucle "for secuencia in *.fasta" recorre todos los archivos 
terminados en .fasta, guardando el nombre de cada uno en la variable
 'secuencia' en cada vuelta .
- 'do-done' delimita las intrucciones que se repiten en cada vuelta.
-grep busca la secuencia que nos dan 'CTACAGAGAAATC' en cada archivo_
· -i no distingue mayusculas y minusculas
· -B 1 saca la linea anterir a la consecuencia, en este caso la cabecera
· >> añade los resultados a un archivo directamente 'resultados.txt'

RESULTADOS:

Al ejecutar el script en centros_BRAF, obtenemos que 14 pacientes son
candidatos para el farmaco.
