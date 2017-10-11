################################################
################################################

# Unidad - 05
# Ejercicio - 01
# El componente Scroll

################################################
################################################

#Usemos un iPhone para este ejercicio
Device = new DeviceComponent
Device.setupContext()
Device.deviceType = "apple-iphone-7-silver"
Screen.backgroundColor = "#FFF"

# Creemos primero un scroll component

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