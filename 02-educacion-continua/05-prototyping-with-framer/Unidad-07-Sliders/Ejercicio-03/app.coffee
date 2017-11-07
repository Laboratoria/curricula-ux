################################################
################################################

# Unidad - 07
# Ejercicio - 03
# El reto

################################################
################################################

#Usemos un iPhone para este ejercicio
Device = new DeviceComponent
Device.setupContext()
Device.deviceType = "apple-iphone-7-silver"
Screen.backgroundColor = "#FFF"

layer = new Layer
  x: 0
  width: Screen.width
  height: 320
  backgroundColor: 'blue'
  y: 120