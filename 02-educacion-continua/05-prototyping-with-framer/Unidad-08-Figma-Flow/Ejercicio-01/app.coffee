################################################
################################################

# Unidad - 09
# Ejercicio - 01
# Usando Figma y el Flow Component

################################################
################################################

#Usemos un iPhone para este ejercicio
Device = new DeviceComponent
Device.setupContext()
Device.deviceType = "apple-iphone-7-silver"
Screen.backgroundColor = "#FFF"

# Creando el primer layer, la pagina inicial
store = new Layer
  image: 'images/store.jpg'
  width: 375
  height: 1109

# Creando los layers que usaremos para navegar a cada producto
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

# Agregando las paginas de cada producto
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

# Creando el flow component
flow = new FlowComponent

# Agregando el layer `store` como lo primero que veras
flow.showNext(store)

# Definiendo un color de fondo para el scroll component que es parte del Flow Component
flow.scroll.backgroundColor = '#fff'

# Agregando el menu
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
