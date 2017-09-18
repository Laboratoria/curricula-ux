################################################
################################################

# Unidad - 05
# Ejercicio - 04
# Creando un scroll dentro de un scroll (sin que se rompa todo)

################################################
################################################

#Usemos un iPhone para este ejercicio
Device = new DeviceComponent
Device.setupContext()
Device.deviceType = "apple-iphone-7-silver"
Screen.backgroundColor = "#FFF"

# Creemos primero un scroll component
# Hagamoslo del tamaño del telefono
scroll = new ScrollComponent
    height: Framer.Screen.height
    width: Framer.Screen.width

# Añadamos un layer
layerA = new Layer
    parent: scroll.content
    y: 20
    size: 320
    x: 27.5
    backgroundColor: 'black'

# Añadamos y otro mas
layerB = new Layer
    parent: scroll.content
    y: 20 + layerA.height + 20
    size: 320
    x: 27.5
    backgroundColor: 'black'

# Y un tercero
layerC = new Layer
    parent: scroll.content
    y: 20 + layerA.height + 20 + layerB.height + 20
    size: 320
    x: 27.5
    backgroundColor: 'black'

# Con esta linea, el componente de scroll solo funcionara para moverse verticalmente

scroll.scrollHorizontal = false


# Ahora creemos un scroll horizontal dentro del LayerB
# Ahora, un poco sobre las dimensiones que debe tener un scroll
# Las dimensiones del Scroll component definen lo que se vertical
# Si creamos un scroll component con width 100 y height 100 y ponemos un layer de 1000 de altura y ancho dentro, solo veremos 100 de ancho o altura en cualquier momento en cualquier momento, el resto estara "clipped" (oculto)
# La mejor forma de entender esto es probandolo (pruebalo!)

# Para este caso, queremos que los layers se posicionen a partir del layerB
# Por ello, coloco el horizontalScroll como hijo (o dicho de otra forma, especifico que su padre, parent, es layerB)
# Luego, defino que el ancho sera 320 (el ancho de layerB) + 27.5, el espacio que hay a la derecha de layerB
# Esto, porque a medida que hagamos scroll horizontal, queremos que se vean los layers horizontales pasar
# si definieramos un ancho de 320 (pruebalo abajo quitando el + 27.5), a medida que hacemos el scroll horizontal, veriamos todo suceder dentro del layerB

# Por ultimo, añadi un contentInset (basicamente un padding) para que la ultima capa, una vez que haz hecho scroll hasta el final, no quede pegada al borde de la pantalla (prueba quitarlo y mira que pasa)

horizontalScroll = new ScrollComponent
  parent: layerB
  height: layerB.height
  width: 375
  x: -27.5
  scrollVertical: false
  contentInset:
    right: 27.5 + 20
    left: 27.5 + 20

# Agreguemos 3 capas dentro de este scroll horizontal

# Añadamos un layer
layerHA = new Layer
    parent: horizontalScroll.content
    y: 20
    size: 280
    backgroundColor: 'blue'

# Añadamos y otro mas
layerHB = new Layer
    parent: horizontalScroll.content
    y: 20
    size: 280
    x: 20 + 320
    backgroundColor: 'blue'

# Y un tercero
layerHC = new Layer
    parent: horizontalScroll.content
    y: 20
    size: 280
    x: 20 + (320 * 2) + 20
    backgroundColor: 'blue'

# Ahora un truco interesante
# No hay nada necesariamente malo con este prototipo
# Pero...que tal si deshabilitamos el scroll vertical cuando se usa el scroll horizontal
# Pruebalo ahora: haz scroll horizontal, y al mismo tiempo mueve el cursos hacia arriba y abajo
# Es un poco desorientador y te fuerza a solo moverte en lineas horizontales rectas

# Podemos detectar que se esta moviendo el scroll horizontal asi
# Prueba quitar los comentarios a la siguientes lineas

# horizontalScroll.on Events.MouseDown, ->
#   scroll.scrollVertical = false
#
# horizontalScroll.on Events.MouseUp, ->
#   scroll.scrollVertical = true

# Esta es solo una forma
# Tambien lo puedes hacer escuchando la velocidad en x o y (scroll.velocity.x o scroll.velocity.y)
# Dependiendo de tu prototipo, te convendra implementar una, otra o ninguna de estas alternativas :)
