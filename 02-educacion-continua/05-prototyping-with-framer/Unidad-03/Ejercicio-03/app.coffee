################################################
################################################

# Unidad - 03
# Ejercicio - 02
# Mas sobre estados

################################################
################################################

#Usemos un iPhone para este ejercicio
Device = new DeviceComponent
Device.setupContext()
Device.deviceType = "apple-iphone-7-silver"
Device.orientationName = "landscape"

Screen.backgroundColor = "#fff"

# El reto, crea los estados y eventos para simular un sunset

sol = new Layer
  borderRadius: 100
  backgroundColor: 'orange'
  size: 100

cielo = new Layer
  height: Framer.Screen.height - 180
  width: Framer.Screen.width
  backgroundColor: 'blue'

tierra = new Layer
  width: Framer.Screen.width
  maxY: Framer.Screen.height
  height: 180
  backgroundColor: 'green'

sol.bringToFront()

nubes = []

for i in [0..2]
  nube = nubes[i] = new Layer
    x: 120 + i * 160
    backgroundColor: ''
  for x in [0..2]
    parteNube = new Layer
      width: 40
      height: 20
      x:(x*10)
      y:60 + (x % 2) * - 10
      borderRadius: 25
      parent: nube
      backgroundColor: 'white'
