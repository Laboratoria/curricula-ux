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

# Añadiendo un horizontal scroll dentro del layerB

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