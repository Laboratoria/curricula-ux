**::::::::: DRAFT :::::::::**

Ver status en: [Status Curso Framer](https://docs.google.com/spreadsheets/d/13WpVO5qfp_j7b94xdRIdzHhDC-smxiMNW9koRcQDQwI/edit?usp=sharing)

# Semana 1 - Unidad 04: Aún más vida: animaciones en Framer

TBD min

Input para los ejercicios:
* http://www.prototypingwithframer.com/twitter-birthday-balloon-animation/
* http://www.prototypingwithframer.com/creating-a-button-loading-animation/
* http://www.prototypingwithframer.com/zero-inbox-animation/

## Antes de la clase

**Tener en cuenta:** hace poco, Framer cambio como se crean las animaciones. Especificamente, ha cambiado la forma en que especificamos el layer que estamos animando.

Si animamos un layer llamado `LayerA`:

**Forma actual**:

```
animationName = new Animation LayerA
```

**Forma previa**:

```
animationName = new Animation
    layer: LayerA
```

Adicionalmente, antes se usaba `properties` para definir cosas como `time`, `delay`, etc. Ahora, se usa `options`.

Ten esto en cuenta cuando leas las siguientes lecturas.

| # | Tipo | Duración | Tópico
| - | ---- | -------- | ------
| 01 | Lectura | ? min | [Animation Docs](https://framer.com/docs/#animation.animation)
| 01 | Lectura | ? min | [Twitter Birthday Balloon]()
| 01 | Lectura | ? min | [Creating a button loading animation]()
| 01 | Lectura | ? min | [Zero inbox animation]()


## En clase

| # | Tipo | Duración | Tópico
| - | ---- | -------- | ------
| 01 | Charla | 10 min | [Usando animaciones en Framer.JS](#)
| 02 | Ejercicio 01 | 10 min | Animaciones Parte 1
| 02 | Ejercicio 02 | 10 min | Animaciones Parte 2
| 02 | Ejercicio 03 | 10 min | El regreso del Sunset
| 03 | Discusión grupal | 5 min | Qué fue fácil, difícil y qué piensan
| 04 | Discusión de clase | 5 min | Compartir lo discutido con la clase entera

## Ejercicio 01

Las animaciones y los estados son similares. Lo diferente es como se usan y como funcionan.

Por ejemplo, las animaciones animaran la capa que indiques de forma unidireccional, pero no te sirven para luego devolverlo a donde estaba. Con estados podriamos definir posiciones, formas, colores (y mas propiedades) y facilmente mover un layer entre estas propiedades. Pero a veces solo necesitamos hacer algo una vez y no preocuparnos mas de ello.

Creemos por ejemplo una animacion simple que podriamos usar para indicar que estamos cargando algo. Creemos un simple circulo que se movera a la derecha y desaparecera. **(Linea 19)**

Definimos aqui la animacion, indicando que es una animacion y a que capa corresponde
Fijate en como lo escribimos:

```
nombreDeAnimacion = new Animation capaAnimada,
```

Muy importante (y facil olvidar) la "," **(linea 28)**

Las animaciones tienen sus propios eventos. Por ejemplo, podemos saber cuando una animacion empezo o termino.

Creemos mas circulos (en total 5), para simular un tiempo de carga "real", asi como sus animaciones. Cada circulo adicional que vamos a crear tendran una opacidad de 0 para ser "inivisibles". Solo queremos que se vean cuando es su turno de animarse.  **(linea 41)**

(Hay otra propiedad que es "visible" que puede ser true/false (boolean) que podriamos usar tambien)

(Tomar en cuenta con "visible": no se puede animar de true a false, como si podemos animar la opacidad)

Ahora con los eventos. Queremos que cuando el circulo1 termine de moverse (finalice su animacion), empiece a hacer lo mismo el circulo2. Para ello primero cambiamos su opacidad de 0 a 1. Y luego iniciamos su animacion. Un truco que se usa mucho con los eventos: print.  A veces no sabemos si hay un problema con el evento (es decir, si lo estamos detectando) o si el problema es con la capa o lo que estamos invocando/haciendo. Usando print podemos verificar que un evento esta siendo llamado. Y repetimos lo anterior para todos los circulos. **(linea 107)**

## Ejercicio 02

Otro caso en el que podriamos querer usar animaciones es para cargar el UI en un app. Ya que esto solo sucedera una vez (cuando se abre el app).

Creemos el UI. Atencion al orden el que creamos los layers. Lo ultimo que creamos va a ir "arriba". En este ejemplo, tendremos en la parte superior el status bar asi como un header. Queremos el status bar **sobre** el header, por lo que primero debemos crear el header.

Mas adelante aprenderemos mas sobre como trabajar mejor con figma para trabajar ahi el diseño, pero te voy dando un tip:

Si necesitas generar sombras, considera hacerlo en Framer. Si importas una imagen con sombra te causara problemas con el ancho

Primero, usemos una serie de capas que importe del stickersheet de Material Design de Google. **(linea 19)**

Importante colocar de ultimo el navBar si queremos que, en el eje z, este lo mas arriba posible **(linea 52)**

Las animaciones estaran con un delay (retraso) de 1 segundo para que sea mas facil verlas (y no corran apenas cargamos el prototipo).

Nuevamente, muy importante el ',' al final de la primera linea de cada animacion

Si quisieramos crear las animaciones (para luego correrlas), lo hariamos asi:

```
fabAppear = new Animation fab,
   scale: 1
   opacity: 1
   options:
     time: .5
     delay: .5 + 1

 headerSlideDown = new Animation header,
   y: 0
   options:
     time: .4
     delay: .2 + 1

 contentSlideUp = new Animation content,
   y: 92
   opacity: 1
   options:
     time: .2
     delay: .2 + 1
```

Luego, tendriamos que tener las siguientes lineas para que corran (pero las he comentado para que no corran)

```
contentSlideUp.start()
headerSlideDown.start()
fabAppear.start()
```

En realidad, queremos que esta animacion corra desde el comienzo, asi que no tiene mucho sentido definirla y luego tener que iniciarla. Mejor, hagamos las dos cosas de una.  **(linea 60)**

¡Listo!

## Ejercicio 03

Ahora es tu turno. Intenta animar un atardecer, esta vez usando animaciones en ves de state.