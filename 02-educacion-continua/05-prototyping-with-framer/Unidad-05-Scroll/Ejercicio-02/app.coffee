################################################
################################################

# Unidad - 05
# Ejercicio - 02
# Creando un scroll vertical

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
    size: Framer.Screen

# Añadamos un layer
layerA = new Layer
    parent: scroll.content
    y: 20
    x: Align.center()

# Añadamos y otro mas
layerB = new Layer
    parent: scroll.content
    y: 20 + layerA.height + 20
    x: Align.center()

# Y un tercero
layerC = new Layer
    parent: scroll.content
    y: 20 + layerA.height + 20 + layerB.height + 20
    x: Align.center()

# Con esta linea, el componente de scroll solo funcionara para moverse verticalmente

scroll.scrollHorizontal = false
