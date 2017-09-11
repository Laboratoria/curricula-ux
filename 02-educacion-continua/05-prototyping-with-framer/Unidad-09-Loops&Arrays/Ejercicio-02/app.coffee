################################################
################################################

# Unidad - 06
# Ejercicio - 02
# El componente Page, parte 2

################################################
################################################

#Usemos un iPhone para este ejercicio
Device = new DeviceComponent
Device.setupContext()
Device.deviceType = "apple-iphone-7-silver"
Screen.backgroundColor = "#FFF"

# Un uso interesante, por ejemplo, es para prototipar el onboarding de un app.
# Recuerda que el Page Component es un componente hecho por el equipo de Framer
# Tiene funcionalidades que ya vienen por defecto. Esto es bueno porque te ahorra mucho trabajo.
# Funciones como el gesto de no tener que arrastrar completamente hacia derecha o izquierda un layer para terminar de cambiar a la siguiente o anterior pagina del page component.

# Sin embargo, esto quiere decir que a veces tenemos que 'hackearlo' un poco para que funcione como queremos.
# A medida que vas probando y usando los componentes de Framer esto te sera mas facil.

# Por ejemplo, en este caso, queremos simular el onboarding de un app, con 3 imagenes que la persona puede revisar.

# El producto final que queremos son 3 imagenes que podemos explorar arrastrando (como un carrusel)

# Cuando cualquiera de las imagenes sea mostrada, queremos que este centrada.

# Lo que queremos del page component es aprovechar todo lo que nos trae "gratis" (sin hacer ningun trabajo)

page = new PageComponent
    width: Screen.width
    height: (Screen.width - 60) / 2 * 3
    scrollVertical: false
    y: 30

# Creemos una primera pagina y agreguemosla al page component. En el page component tambien lo agregamos a un layer llamado content, contenido dentro del layer page (page.content)

# Page (layer padre)
# -> content (layer hijo)

# page.content contiene las paginas

# page
# -> content
# -> -> pageOne
# -> -> pageTwo
# -> -> pageThree

pageOne = new Layer
    width: Screen.width
    height: page.height
    parent: page.content
    backgroundColor: ""
    name: 'page 1'

# La segunda capa queremos que este a la derecha de la primera
# Especificamente, el ancho de la primera pagina

pageTwo = new Layer
    width: Screen.width
    height: page.height
    x: pageOne.width
    backgroundColor: ""
    parent: page.content
    name: 'page 2'

# Hacemos lo mismo para esta tercera pagina

pageThree = new Layer
    width: Screen.width
    height: page.height
    x: (pageOne.width) *2
    backgroundColor: ""
    parent: page.content
    name: 'page 3'

# Cada pagina nos servira de contenedor para las imagenes que queremos mostrar

# Agreguemos ahora las imagenes

img1 = new Layer
  width: 315
  height: 473
  parent: pageOne
  point: Align.center()
  image: 'images/img1.jpg'

# Repitiendo esto para las demas imagenes

img2 = new Layer
  width: 315
  height: 473
  parent: pageTwo
  point: Align.center()
  image: 'images/img2.jpg'

img3 = new Layer
  width: 315
  height: 473
  parent: pageThree
  point: Align.center()
  image: 'images/img3.jpg'

# Agreguemos 3 circulos que serviran de indicadores
# Indicaran que hay 3 imagenes que ver (ya que habran 3 circulos)
# E indicaran en que imagen estas ya que el circulo correspondiente tendra un color mas oscuro

# Para facilitar centrar los circulos creemos un layer que los contendra

circleContainer = new Layer
  backgroundColor: ''
  width: (12 * 3) + (12 * 2)
  y: 473 + 48
  x: Align.center()

circle1 = new Layer
  size: 12
  parent: circleContainer
  backgroundColor: 'black'
  borderRadius: 100

# Ademas, cada circulo necesitara un estado para ambos colores

circle1.states =
  selected:
    backgroundColor: 'black'
  notSelected:
    backgroundColor: '#ccc'

circle2 = new Layer
  size: 12
  parent: circleContainer
  backgroundColor: '#ccc'
  borderRadius: 100
  x: 12 + 12

circle2.states =
  selected:
    backgroundColor: 'black'
  notSelected:
    backgroundColor: '#ccc'

circle3 = new Layer
  size: 12
  parent: circleContainer
  backgroundColor: '#ccc'
  borderRadius: 100
  x: (12 + 12) * 2

circle3.states =
  selected:
    backgroundColor: 'black'
  notSelected:
    backgroundColor: '#ccc'

# Luego, queremos que segun la "pagina" del page component que estemos viendo, los circulos cambien de acuerdo a estemos

# Si te percataste, para cada pagina agregue una propiedad 'name'

# Es con esto que sabremos en que pagina estamos

page.on "change:currentPage", ->
    # print page.currentPage.name
    if page.currentPage.name == 'page 1'
      circle1.animate('selected')
      circle2.animate('notSelected')
      circle3.animate('notSelected')
    if page.currentPage.name == 'page 2'
      circle2.animate('selected')
      circle1.animate('notSelected')
      circle3.animate('notSelected')
    if page.currentPage.name == 'page 3'
      circle3.animate('selected')
      circle1.animate('notSelected')
      circle2.animate('notSelected')

# Y para terminar, un par de botones abajo para hacerlo mas veridico

buttons = new Layer
  image: 'images/buttons.png'
  x: Align.center()
  maxY: Screen.height - 18
  width: 315
  height: 87
