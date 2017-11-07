# ::::::::: DRAFT :::::::::

Ver status en: [Status Curso Framer](https://docs.google.com/spreadsheets/d/13WpVO5qfp_j7b94xdRIdzHhDC-smxiMNW9koRcQDQwI/edit?usp=sharing)

### Semana 1 - Unidad 01: Introducción a Framer

TBD min

Una introducción a Framer.JS, cómo funciona, lo que puedes crear con Framer y cómo usarlo.

| # | Tipo | Duración | Tópico
| - | ---- | -------- | ------
| 01 | Charla | ? min | [Introducción y objetivos del curso](https://docs.google.com/presentation/d/1uhG6qJnMMNyuTa6JLijSeaUpgx81UzTkeKL-EIAkUVo/edit?usp=sharing)
| 02 | Charla | ? min | [Que es Framer.JS](https://docs.google.com/presentation/d/1uhG6qJnMMNyuTa6JLijSeaUpgx81UzTkeKL-EIAkUVo/edit?usp=sharing)
| 03 | Charla | ? min | [Por que Framer.JS](https://docs.google.com/presentation/d/1uhG6qJnMMNyuTa6JLijSeaUpgx81UzTkeKL-EIAkUVo/edit?usp=sharing)
| 04 | Charla | ? min | [Ejemplos creados con Framer.JS](https://docs.google.com/document/d/1ixC0Erfi8iILZFKI2WadLOYlJe7b5JODdlseU6NJDP0/edit?usp=sharing)
| 05 | Charla | ? min | [Como usar Framer.JS](https://docs.google.com/presentation/d/1uhG6qJnMMNyuTa6JLijSeaUpgx81UzTkeKL-EIAkUVo/edit?usp=sharing)


##### Links
* [Run Framer on Windows](https://medium.com/microsoft-design/how-to-run-framer-js-on-windows-94e6a06abfe4)

## Ejercicio 01

Framer incluye una serie de funciones llamadas Utils (corto para utilidades).

Usemos algunas de las más populares:

### randomImageLayer **( Linea 14 ) **
Usando Unsplash, genera una imagen al azar. Especifica el Layer con el cual la estaras usando como argumento.

randomColor **( Linea 20 ) **
Genera un color al azar. Puedes incluir opcionalmente la opacidad del color.

delay **( Linea 26 ) **
Demora lo que luego especifiques en la funcion (lo que tu quieras).

cycle **( Linea 37 ) **
Al especificar una serie de cosas, esta funcion retorna de la primera a la ultima (en orden), y luego empieza nuevamente.

## Ejercicio 02

Deje para este segundo ejercicio una de mis funciones favoritas: Utils.modulate.

Para entender como funciona, he replicado un joystick.

Fijate como en base a que ese "joystick" se mueve en el eje "X" **( Linea 34 ) ** e "Y" **( Linea 37 ) ** cambian la opacidad y el tamaño de la capa square.
