# Lección 02: Lo básico: capas, capas de texto y eventos

Lee estos artículos y explora como usar capas (Layers) y capas de texto (text layers) en Framer.JS. Te recomendamos también empezar a navegar por los proyectos de Framer publicados en Dribbble así como el grupo de Facebook. En este ultimo se publican también muchas preguntas, lo que sirve siempre para aprender nuevos trucos (viendo las soluciones que se comparten).

* [Framer intro to programming](https://framer.com/getstarted/guides/programming/?utm_source=twitter&utm_medium=koenbok&utm_campaign=programming)
* [Framer Cheat Sheet: Layer Styling](https://blog.framer.com/framer-cheat-sheet-layer-styling-9d32246716e8?source=user_profile---------6----------------), Tess Gadd
* [The A-Z of Framer’s Text Layer](https://blog.framer.com/the-a-to-z-of-framers-text-layers-e4b99aa7a008), Tes Mat
* [Proyectos de Framer en Dribbble](https://dribbble.com/tags/framer)
* [Proyectos de Framer en el grupo de Facebook](https://www.facebook.com/groups/framerjs)

## Introducción a capas, capas de texto y eventos


### Ejercicio 01: Conociendo Layers, TextLayers y eventos

En Framer, lo que hacemos es crear objetos (de JavaScript). Este curso sera más práctico que teorico, asi que no entraremos aqui en detalle.

Para este primer ejercicio, crearemos una tarjeta con:

* una imagen
* un titulo
* un parrajo
* una serie de eventos

Como primer paso, aprendamos a crear un Layer. Creemos entonces un Layer (capa) llamado tarjeta. Y cambiemos el borderRadius, una de sus propiedades, a 10. **(Linea 21)**

Cuando creamos un objeto, como viste, podemos editar sus propiedades. Todos los objetos vienen con valores por defecto en todas sus propiedades. Una vez que hemos creado un objeto, si queremos editar una de sus propiedades, se hace de esta forma (En este caso, editaremos el ancho(width), alto(height), x,y y color de fondo). **(Linea 26)**

Coloquemos ahora una imagen. Las imagenes son tambien capas, simplemente definimos la imagen que vamos a usar. Framer viene con un folder llamado 'images'. En realidad podriamos poner la imagen en cualquier folder, pero por orden y para respetar como se suelen organizar los proyectos en Framer, recomiendo ponerlos alli **(Linea 36)**

Un detalle importante a resaltar es la propiedad 'parent'. Las coordenadas (x, y) seran calculadas en base al padre. Ademas, en esta segunda capa usamos la propiedad 'point' en vez de x e y.

```
Point: 12 === x: 12, y: 12
```

Size hace lo mismo, donde `size: 120` es lo mismo que `height: 120, width: 120`

Luego, creemos un titulo con un TextLayer **(Linea 45)**

El TextLayer es una capa que permite anadir texto
tiene algunas propiedades adicionales, como manejo inteligente de las dimensiones del objeto y mas.

Por ahora, existe un bug al usar el TextLayer que "rompe" el prototipo. Lo que tenemos que hacer cada vez que creamos un TextLayer es siempre definir el `fontFamily: 'arial'`.

Luego, creemos un parrafo con un TextLayer **(Linea 64)** Si queremos escribir texto muy largo, podemos usar el triple `'''`. Así:

```
text:'''
    Hola, mi nombre es Maria Apellido, y estoy aprendiendo Framer de forma divertida y concisa.
    '''
```

Como ultimo paso para esta leccion, aprendamos un poco sobre eventos. Los eventos siguen esta logica: si pasa X (un evento), haz Y (el codigo que escribamos).

Creemos por ejemplo un evento cuando hacemos click en  la tarjeta. Y lo que suceda es mandar un print describiendo en lo que hicimos click (un simple texto que diga "Tarjeta!"). **(Linea 83)**

Y haremos lo mismo para los demas elementos de la pagina.

Hay muchos otros tipos de eventos, revisalos y exploralos en los [Docs de Framer](https://framer.com/docs).

### Ejercicio 02: Recreando una tarjeta de Iris App

Ahora es tu turno. Dentro de la carpeta Ejercicio-02, hay una imagen de una tarjeta de salud que implementa Iris, un app muy interesante (del que puedes leer mas en [getiris.com](http://getiris.com)). Intenta recrearla con Framer.

![Iris](/Ejercicio-02/iris-iphone.png)

### ¿Qué fue fácil, difícil y qué piensan?
