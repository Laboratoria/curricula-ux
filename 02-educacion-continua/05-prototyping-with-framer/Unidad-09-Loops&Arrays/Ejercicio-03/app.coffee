################################################
################################################

# Unidad - 10
# Ejercicio - 03
# Mas sobre loops y arrays

################################################
################################################

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
