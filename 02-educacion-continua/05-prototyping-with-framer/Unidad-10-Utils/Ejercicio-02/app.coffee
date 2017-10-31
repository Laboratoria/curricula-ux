################################################
################################################

# Unidad - 10
# Ejercicio - 01
# Utils

################################################
################################################

# Utils:
# modulate

joyStickArea = new ScrollComponent
  borderRadius: 1000
  backgroundColor: "ccc"
  size: 240
  y: 440
  x: Align.center()
  clip: true

joystick = new Layer
  parent: joyStickArea.content
  borderRadius: 100
  size: 100
  point: Align.center()

square = new Layer
  size: 240
  scale: .5
  y: 160
  x: Align.center()

joyStickArea.content.on "change:x", ->
  square.opacity = Utils.modulate(joyStickArea.content.x,[-100,100],[0,1])

joyStickArea.content.on "change:y", ->
    square.scale = Utils.modulate(joyStickArea.content.y,[-100,100],[0,1])
