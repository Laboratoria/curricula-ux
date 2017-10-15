################################################
################################################

# Unidad - 06
# Ejercicio - 01
# El componente Page

################################################
################################################

#Usemos un iPhone para este ejercicio
Device = new DeviceComponent
Device.setupContext()
Device.deviceType = "apple-iphone-7-silver"
Screen.backgroundColor = "#FFF"

# Creando el Page Component
page = new PageComponent
    width: Screen.width
    height: Screen.height
    scrollVertical: false

# Creando las paginas
pageOne = new Layer
    width: page.width
    height: page.height
    parent: page.content
    backgroundColor: "#28affa"

pageTwo = new Layer
    width: page.width
    height: page.height
    backgroundColor: "#90D7FF"
    # parent: page.content
    # x: pageOne.width

# Agregando la página
page.addPage(pageTwo, "right")
