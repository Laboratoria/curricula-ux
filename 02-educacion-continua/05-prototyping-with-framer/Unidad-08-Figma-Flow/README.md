# LEccion 08: Usando los componentes de Framer: Flow, y trabajando con Figma

TBD min

## Antes de la clase

Lee un poco sobre qué es el Flow component y lo que te permite construir (pista: es similar a InVision, pero mas poderoso).

[Framer Cheat Sheet: Flow Components](https://blog.framer.com/framer-cheat-sheet-flow-components-46c2dd6e7ea6?source=user_profile---------0----------------), Tess Gadd

## En clase

## Ejercicio 01

Antes de meternos al codigo, consulta este [archivo de Figma](https://www.figma.com/file/Hm1B6rHdcKgfO7GOYU3e09X5/cart-Page-1)

Diseñe una tienda muy basica de libretas. No es un prototipo completo, pero nos permitira usar todo lo que puede hacer un flow component. Trabajar con Figma y Framer es muy facil, es solo cuestion de diseñar y ordenar lo que diseñas pensando que lo usaras en Framer.

No hay una forma correcta de hacerlo, pero esta es una que funciona.

En este caso, fui diseñando las pantallas (bajo Screen Mocks), para asegurarme de tener todos los assets (o imagenes) que necesitaria exportar. Aqui reviso que el diseño de todo cuadre antes de armarlo en Framer. Luego podre consultar estos diseños para saber en que posicion (x e y) debo colocar cada imagen.

Luego, bajo la seccion Assets tengo todas las imagenes individiales que exporte al folder images dentro del proyecto de Framer. Y luego ya es cuestion de crear Layers que hagan referencia a estas imagenes.

Ahora empecemos a creemos el Flow Component

Las imagenes de la tienda que te llevaran a la pagina de cada uno de los productos.

Por como lo hice en este caso, voy a colocar layers encima de las imagenes correspondientes de cada libreta. Para ayudarme a colocarlos, les puse primero color de fondo azul. Luego lo deje en '', que es una forma rapida de hacerlos transparentes (y no tener que escribir rgba(0,0,0,0)).

Ahora agreguemos las paginas de cada item:
Un detalle importante: el flow component siempre estirara las imagenes para que cubran, asi que asegurate que sean igual o mas anchas y altas. Es decir, si tienes un flow de 100 de ancho y 100 de alto, asegurate que lo que agregues sea 100 o mas de ancho y alto.

# El flow component debes crearlo al final (SIEMPRE) de todas las capas que este contendra

# Cuando agregamos Layers que son mas altos que el Flow Component, estas se insertaran automaticamente (para ayudarnos) en un scroll component (que ya estara dentrol del scroll component).

# Este scroll sin embargo, es por defecto blanco, asi que podemos cambiar el color de fondo asi:

# Ojo al detalle: para el primer hotspot (linea 89), usa onTap.
# Si usas onClick, veras que si haces scroll sobre un Layer con onclick, al terminar el scroll, lo tomara como un click, salvo que tu cursor (o dedo), al terminar el scroll, ya no este encima del Layer.

# Con onTap, si ocurre un scroll, no se considera como "tap". Pruebalo!

# Ahora agreguemos el boton para abrir el menu:

# Primero la imagen que usaremos para el menu

Puse primero el boton de quitar para que cuando añada el boton de añadir, vaya encima (arriba en el eje Z).

Solo agregamos un item al carrito (cuando aprendas de loops y arrays, te reto a que pruebes agregar los demas items al carrito de forma dinamica).

## Ejercicio 02
