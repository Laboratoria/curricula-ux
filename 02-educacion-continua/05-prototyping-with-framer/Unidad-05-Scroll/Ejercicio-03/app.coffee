################################################
################################################

# Unidad - 05
# Ejercicio - 03
# Creando un scroll horizontal

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
    x: 20
    y: Align.center()

# Añadamos y otro mas
layerB = new Layer
    parent: scroll.content
    x: 20 + layerA.width + 20
    y: Align.center()

# Y un tercero
layerC = new Layer
    parent: scroll.content
    x: 20 + layerA.width + 20 + layerB.width + 20
    y: Align.center()

# Con esta linea, el componente de scroll solo funcionara para moverse horizontalmente

scroll.scrollVertical = false
