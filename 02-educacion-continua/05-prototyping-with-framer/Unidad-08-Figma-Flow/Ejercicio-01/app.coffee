################################################
################################################

# Unidad - 09
# Ejercicio - 01
# Usando Figma y el Flow Component

################################################
################################################

# Antes de meternos al codigo, consulta este archivo de Figma:
# https://www.figma.com/file/Hm1B6rHdcKgfO7GOYU3e09X5/cart-Page-1

# Diseñe una tienda muy basica de libretas. No es un prototipo completo, pero nos permitira usar todo lo que puede hacer un flow component.

# Trabajar con Figma y Framer es muy facil, es solo cuestion de diseñar y ordenar lo que diseñas pensando que lo usaras en Framer.

# No hay una forma correcta de hacerlo, pero esta es una que funciona.

# En este caso, fui diseñando las pantallas (bajo Screen Mocks), para asegurarme de tener todos los assets (o imagenes) que necesitaria exportar. Aqui reviso que el diseño de todo cuadre antes de armarlo en Framer. Luego podre consultar estos diseños para saber en que posicion (x e y) debo colocar cada imagen.

# Luego, bajo la seccion Assets tengo todas las imagenes individiales que exporte al folder images dentro del proyecto de Framer. Y luego ya es cuestion de crear Layers que hagan referencia a estas imagenes.

#Usemos un iPhone para este ejercicio
Device = new DeviceComponent
Device.setupContext()
Device.deviceType = "apple-iphone-7-silver"
Screen.backgroundColor = "#FFF"

# Ahora empecemos a creemos el Flow Component

# Las imagenes de la tienda que te llevaran a la pagina de cada una

store = new Layer
  image: 'images/store.jpg'
  width: 375
  height: 1109

# Por como lo hice en este caso, voy a colocar layers encima de las imagenes correspondientes de cada libreta
# Para ayudarme a colocarlos, les puse primero color de fondo azul. Luego lo deje en '', que es una forma rapida de hacerlos transparentes (y no tener que escribir rgba(0,0,0,0)).

framerNotebookLink = new Layer
  size: 351
  point: 12
  parent: store
  backgroundColor: 'blue'
  backgroundColor: ''

fileNotesLink = new Layer
  size: 351
  x: 12, y: 379
  parent: store
  backgroundColor: 'blue'
  backgroundColor: ''

denikNotebookLink = new Layer
  size: 351
  x: 12, y:746
  parent: store
  backgroundColor: 'blue'
  backgroundColor: ''

# Ahora agreguemos las paginas de cada item:
# Un detalle importante: el flow component siempre estirara las imagenes para que cubran, asi que asegurate que sean igual o mas anchas y altas. Es decir, si tienes un flow de 100 de ancho y 100 de alto, asegurate que lo que agregues sea 100 o mas de ancho y alto.

framerItemPage = new Layer
  image: 'images/framer-notebook.jpg'
  width: 375
  height: 667

fieldItemPage = new Layer
  image: 'images/field-notes.jpg'
  width: 375
  height: 667

denikItemPage = new Layer
    image: 'images/denik-notebook.jpg'
    width: 375
    height: 667

# El flow component debes crearlo al final (SIEMPRE) de todas las capas que este contendra

flow = new FlowComponent

flow.showNext(store)

# Cuando agregamos Layers que son mas altos que el Flow Component, estas se insertaran automaticamente (para ayudarnos) en un scroll component (que ya estara dentrol del scroll component).

# Este scroll sin embargo, es por defecto blanco, asi que podemos cambiar el color de fondo asi:

flow.scroll.backgroundColor = '#fff'




# Ojo al detalle: para el primer hotspot (linea 89), usa onTap.
# Si usas onClick, veras que si haces scroll sobre un Layer con onclick, al terminar el scroll, lo tomara como un click, salvo que tu cursor (o dedo), al terminar el scroll, ya no este encima del Layer.

# Con onTap, si ocurre un scroll, no se considera como "tap". Pruebalo!

# Ahora agreguemos el boton para abrir el menu:

# Primero la imagen que usaremos para el menu

menu = new Layer
  image: 'images/menu.jpg'
  height: 667
  width: 240
  x: -240
  custom:
    state: false

menuButton = new Layer
  image: 'images/menu-button.png'
  point: 24
  size: 40

menuButton.states =
  open:
    image: 'images/menu-button.png'
  close:
    image: 'images/close.png'
  left:
    x: 24
    options:
      time: .25
  right:
    x: 76
    options:
      time: .25

menuButton.onClick ->
  if !menu.custom.state
    menuButton.animate('close')
    flow.showOverlayLeft(menu)
    menu.custom.state = true
    return
  else
    flow.showPrevious()
    menu.custom.state = false
    menuButton.animate('open')
    return

# Agreguemos el boton para regresar

backButton = new Layer
  image: 'images/back.png'
  opacity: 0
  point: 24
  size: 40
  visible: false

backButton.states =
  on:
    opacity: 1
    options:
      time: .2
  off:
    opacity: 0
    options:
      time: .2

framerNotebookLink.onTap ->
  flow.showNext(framerItemPage)
  backButton.animate('on')
  menuButton.animate('right')
  backButton.visible = true

fileNotesLink.onClick ->
  flow.showNext(fieldItemPage)
  backButton.animate('on')
  menuButton.animate('right')
  backButton.visible = true

denikNotebookLink.onClick ->
  flow.showNext(denikItemPage)
  backButton.animate('on')
  menuButton.animate('right')
  backButton.visible = true

backButton.onClick ->
  flow.showPrevious()
  backButton.animate('off')
  menuButton.animate('left')
  backButton.visible = false
