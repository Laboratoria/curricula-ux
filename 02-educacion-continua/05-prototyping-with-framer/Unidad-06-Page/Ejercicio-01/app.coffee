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

# Los page components son muy versatiles.
# Vayas a crear Layers del tamaño completo de la pantalla (fullscreen) o no, lo que los hace especiales son los gestos con los que vienen.

# Usa este ejercicio para familiarizarte con como se interactua con ellos.
# Intenta arrastrar hacia los lados las paginas y mira como sin tener que arrastrarlas del todo, llega un punto en que la siguiente pagina toma el centro del iPhone.

page = new PageComponent
    width: Screen.width
    height: Screen.height
    scrollVertical: false

# Creemos una primera pagina
# Agreguemosla al page component. Aqui tambien lo agregamos a un layer content (page.content) que es el que contiene las paginas
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

# Aunque pudimos haber agregado la segunda pagina al page component con las propiedades comentadas para que no corran
# Hagamoslo con esta funcion que es parte del page component
page.addPage(pageTwo, "right")
