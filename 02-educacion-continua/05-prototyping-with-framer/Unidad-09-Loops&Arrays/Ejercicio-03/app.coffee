################################################
################################################

# Unidad - 10
# Ejercicio - 03
# Mas sobre loops y arrays

################################################
################################################

# Ahora, usemos un loop, esta vez agregando eventos de click a cada Layer que creamos.
# Tambien tendremos una forma de saber a que le hicimos click

LayerContainer = []

for i in [0...3]
  aLayer = LayerContainer[i] = new Layer
    x: Align.center()
    y: 60 + (120 + 30) * i
    size: 120
    backgroundColor:'red'
    custom:
      name: "layer" + i

  aLayer.states =
    blue:
      backgroundColor: 'blue'
    red:
      backgroundColor: 'red'

  aLayer.onClick ->
    print @.custom.name
    @.animate('red')
    # print aLayer.custom.name
    # aLayer.animate('red')

# A cada layer en este loop, ademas, le creamos un nombre unico usando el valor de i
# Ademas, cuando le agregamos el evento onClick, usamos @custom.name y @animate
# '@' es lo mismo que 'this'
# Si hubieramos usado 'aLayer' en vez de '@', al hacer click en cualquiera de las capas, habria cambiado solo la ultima.
# intentalo

turnBlueButton = new Layer
  width: 220
  height: 60
  point: 30
  html: "Turn them blue"
  backgroundColor: 'blue'
  style:
    'display' : 'flex'
    'align-items' : 'center'
    'justify-content' : 'center'
    'font-size' : '28px'

turnBlueButton.onClick ->
  for i in [0...LayerContainer.length]
    LayerContainer[i].animate('blue')
