# Lección 05: Usando los componentes de Framer: Scroll


## Antes de la clase

Lee sobre el componente que permite añadir el gesto de  “scrollear” a tus prototipos: el scroll component.

| # | Tipo | Duración | Tópico
| - | ---- | -------- | ------
| 01 | Lectura | 10 min | [Framer Cheat Sheet: Scroll Components](https://blog.framer.com/framer-cheat-sheet-scroll-components-25825be636ae?source=user_profile---------2----------------), Tess Gadd


## En clase

| # | Tipo | Duración | Tópico
| - | ---- | -------- | ------
| 01 | Ejercicio 01 | 10 min | El componente Scroll
| 02 | Ejercicio 02 | 10 min | Creando un scroll vertical
| 03 | Ejercicio 03 | 10 min | Creando un scroll horizontal
| 04 | Ejercicio 04 | 10 min | Creando un scroll dentro de un scroll (sin que se rompa todo)
| 05 | Ejercicio 05 | 10 min | Reto: Crea este prototipo
| 03 | Discusión grupal | 5 min | Qué fue fácil, difícil y qué piensan
| 04 | Discusión de clase | 5 min | Compartir lo discutido con la clase entera

## Ejercicio 01: El componente Scroll

El scroll component es el primero de muchos componentes de Framer que revisaremos. Nos sirve si queremos crear una pantalla o Layer que, en terminos practicos "se puede scrollear". Es decir, ya sea con el mouse haciendo click o con el dedo en el celular, podemos desplazar el layer.

Creemos un scroll  component del tamaño (size) del telefono. **(linea 19)**

Si quieres habilitar usar la rueda del mouse, inserta este codigo:

`scroll.mouseWheelEnabled = true`

Una vez que creamos el scroll, debemos agregar las capas que iran dentro de este componente. Es decir, a las que podremos hacer scroll. Creemos un layer y hagamoslo. **(linea 22)**

Muy importante: definimos el parent como scroll.content. La forma en que los scroll components funcionan es que se crean automaticamente estas 2 capas (scroll, y content dentro de scroll, es decir scroll.content). El scroll.content crece de forma automatica para ser del tamaño del espacio que sus hijos ocupen, es decir si pones un layer en x: 1000 de width 100, pues su borde mas lejadno llegara hasta x: 1100 (1000 + 100).

Añadamos 2 layers más. **(linea 28)**

Los Scroll components por defecto tienen el scroll horizontal y vertical. Por eso, lo comun es siempre usar una de las dos lineas siguiente lineas:

* Si queremos un scroll vertical, deshabilitar el scroll horizontal: `scroll.scrollHorizontal = false`

* Si queremos un scroll horizontal, deshabilitar el scroll vertical: `scroll.scrollVertical = false`

En el siguiente ejercicio empezaremos crearemos un scroll vertical.


## Ejercicio 02

Creemos un scroll vertical.

Empecemos nuevamente con un scroll del tamaño de la pantalla, y anñadamos 3 layers. **(linea 18)**

Con una linea podemos hacer que este scroll solo funcione verticalmente. **(linea 42)**

¡Listo!

## Ejercicio 03

Creemos un scroll horizontal y añadamos los layers. Un cambio sera como ubicamos los layers hacia la derecha en vez de hacia abajo. **(linea 19)**

Y para que solo funcione horitontalmente, una ultima linea de codigo.  **(linea 42)**

## Ejercicio 04

En este ejercicio...crearemos un scroll dentro de un scroll. Esto presenta una serie de retos que podemos resolver usando eventos.

Igual que en los anteriores, crearemos un scroll con 3 capas dentro de ellas. **(linea 19)**

Hagamos que solo funcione verticalmente al deshabilitar el scroll horizontal. **(linea 49)**

Ahora creemos un scroll horizontal dentro del LayerB. Ahora, un poco sobre las dimensiones que debe tener un scroll. Las dimensiones del Scroll component definen lo que se vera. Si creamos un scroll component con width 100 y height 100 y ponemos un layer de 1000 de altura y ancho dentro, solo veremos 100 de ancho o altura en cualquier momento en cualquier momento, el resto estara "clipped" (oculto) **(linea 53)**

La mejor forma de entender esto es probandolo (pruebalo!).

Para este caso, queremos que los layers se posicionen a partir del layerB. Por ello, coloco el horizontalScroll como hijo (o dicho de otra forma, especifico que su padre, parent, es layerB). Luego, defino que el ancho sera 320 (el ancho de layerB) + 27.5, el espacio que hay a la derecha de layerB. Esto, porque a medida que hagamos scroll horizontal, queremos que se vean los layers horizontales pasar. Si definieramos un ancho de 320 (pruebalo abajo quitando el + 27.5), a medida que hacemos el scroll horizontal, veriamos todo suceder dentro del layerB.



Añadamos 3 capas a este segundo scroll. **(linea 66)**

Ahora un truco interesante: No hay nada necesariamente malo con este prototipo.

Pero...que tal si deshabilitamos el scroll vertical cuando se usa el scroll horizontal. Pruebalo ahora: haz scroll horizontal, y al mismo tiempo mueve el cursos hacia arriba y abajo. Es un poco desorientador y te fuerza a solo moverte en lineas horizontales rectas.

Podemos detectar que se esta moviendo el scroll horizontal asi. Prueba añadir estas lineas de codigo:

```
horizontalScroll.on Events.MouseDown, ->
  scroll.scrollVertical = false

horizontalScroll.on Events.MouseUp, ->
  scroll.scrollVertical = true
```

Esta es solo una forma. Tambien lo puedes hacer escuchando la velocidad en x o y (scroll.velocity.x o scroll.velocity.y). Dependiendo de tu prototipo, te convendra implementar una, otra o ninguna de estas alternativas :)

## Ejercicio 05

Este ejercicio es un reto para ti: recrea el diseño.

Abre la imagen ejercicio.jpg.

Crea este prototipo, donde:

La primera pantalla tiene 2 botones (con V y H como texto)

Hacer click en cada boton debe llevarte a:

* Si haces click en H, a una pantalla completa con un scroll horizontal
* Si haces click en V, a una pantalla completa con un scroll vertical

Puntos extra su haces que la transicion entre la pantalla inicial a uno de los 2 scrolls sea interesante ;)