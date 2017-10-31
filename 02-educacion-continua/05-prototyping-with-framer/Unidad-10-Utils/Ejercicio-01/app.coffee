################################################
################################################

# Unidad - 10
# Ejercicio - 02
# Utils

################################################
################################################

# Utils:
# randomImage

randomImageLayer = new Layer
  size: 120
  image: Utils.randomImage(randomImageLayer)

# randomColor

randomColorLayer = new Layer
  size: 120, x: 120
  backgroundColor: Utils.randomColor(0.75)

# delay

delayLayer = new Layer
  size: 120
  x: 240
  y: -120

Utils.delay 3, ->
    delayLayer.animate
      y: 0

# cycle

cycleLayer = new Layer
  size: 120
  x: 360
  backgroundColor: 'blue'

newColor = Utils.cycle(["green", "red", "blue"])

cycleLayer.onClick ->
  @.backgroundColor = newColor()
