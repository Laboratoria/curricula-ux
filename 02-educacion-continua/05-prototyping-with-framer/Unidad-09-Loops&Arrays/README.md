### Lección 09: Loops & Arrays

TBD min

##### Antes de la clase

Lee sobre los componentes de sliders disponibles en Framer.JS: Slider y Range Slider y lo que puedes hacer con ellos.

| # | Tipo | Duración | Tópico
| - | ---- | -------- | ------
| 01 | Lectura | 10 min | [Framer Cheat Sheet: Loops & arrays](https://blog.framer.com/framer-cheat-sheet-loops-arrays-5155b216413c?source=user_profile---------4----------------), Tess Gadd
| 02 | Lectura | 10 min | [Framer Cheat Sheet: Utils](https://medium.com/the-school-of-do/framer-cheatsheet-the-versatility-of-utils-bed26e1614e2), Tess Gadd
| 03 | Lectura | 10 min | [Framer Cheat Sheet: Utils.modulate](https://medium.com/the-school-of-do/framer-cheat-sheets-utils-modulate-b88e359fdcc6), Tess Gadd


##### En clase

| # | Tipo | Duración | Tópico
| - | ---- | -------- | ------
| 01 | Charla | 10 min | [Usando loops y arrays en Framer](#)
| 02 | Ejercicio | 10 min | Creando ...
| 03 | Discusión grupal | 5 min | Qué fue fácil, difícil y qué piensan
| 04 | Discusión de clase | 5 min | Compartir lo discutido con la clase entera

## Ejercicio 01

Primero, empecemos creando un array. **( Linea 13 ) **

Luego, cuando querramos agregar un item, usamos esta notacion, indicando su posicion en el array. **( Linea 17 ) **

## Ejercicio 02

Hasta ahora, hemos creado todo manualmente. Si teniamos que crear 5 capas en un scroll component, por ejemplo, las creabamos una por una. Ahora vamos a aprender algunas formas de hacer todo esto mas rapido. Empecemos por entender que son, como funcionan los loops, y para que los podemos usar. Asi es como se escribe un loop. He puesto 2 ejemplos, asi que fijate en la diferencia de usar 2 puntos '.' (..) y 3 puntos '. (...)' en la primera linea. **( Linea 21 )** y **( Linea 26 )**.

Si te fijas en el archivo, en el primer loop, vemos que corre 3 veces (0,1,2), en cambio en el segundo loop corre cuatro veces (0,1,2,3).

Ahora, usemos un loop para crear 3 capas. Ademas, usemos un array para agregarles un color de fondo. **( Linea 37 ) **

Asi como hemos usado un array para colores, lo hemos podido hacer para cualquiera de las otras propiedades. Como: width, images (definiendo una ruta de imagen), etc.

Un ejemplo de un array de imagenes:

```
imagenes = ['images/imagenA.jpg','images/imagenB.jpg','images/imagenC.jpg']

layer = new Layer
  images: imagenes[i]
```

O aun mas simple:
```
imagenes = ['A', 'B', 'C']

layer = new Layer
  images: 'images/imagen${imagenes[i]}.jpg'
```

## Ejercicio 03

Ahora, usemos un loop, esta vez agregando eventos de click a cada Layer que creamos. Tambien tendremos una forma de saber a que le hicimos click. **( Linea 13 ) **

A cada layer en este loop, ademas, le creamos un nombre unico usando el valor de i. Ademas, cuando le agregamos el evento onClick, usamos @custom.name y @animate. '@' es lo mismo que 'this'. Si hubieramos usado 'aLayer' en vez de '@', al hacer click en cualquiera de las capas, habria cambiado solo la ultima. Intentalo. **( Linea 34 ) **
