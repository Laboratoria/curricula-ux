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
# Hagamoslo del tamaño del telefono
scroll = new ScrollComponent
    size: Framer.Screen

# Añadamos un layer
layerA = new Layer
    parent: scroll.content
    y: 20
    x: Align.center()

# Muy importante: definimos el parent como scroll.content
# La forma en que los scroll components funcionan es que se crean automaticamente estas 2 capas
# y el scroll.content crece de forma automatica para todo el espacio que sus hijos ocupen
# es decir si pones un layer en x: 1000 de width 100, pues su borde mas lejadno llegara hasta x: 1100 (1000 + 100)

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

# Los Scroll components por defecto tienen el scroll horizontal y vertical
# Por eso, lo comun es siempre usar una de las dos lineas

# Si queremos un scroll vertical, deshabilitar el scroll horizontal
# scroll.scrollHorizontal = false

# Si queremos un scroll horizontal, deshabilitar el scroll vertical
# scroll.scrollVertical = false

# En el siguiente ejercicio empezaremos crearemos un scroll vertical
