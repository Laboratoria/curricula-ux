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

# El reto: añade un range slider y configuralo de tal forma que segun los valores que tiene, mueva el layer aqui creado.

# Puedes consultar el diagrama (reto.jpg) para una representacion visual del reto.

layer = new Layer
  x: 0
  width: Screen.width
  height: 320
  backgroundColor: 'blue'
  y: 120

# Algunos tips y algo de ayuda:
# - Te recomiendo trabajar con los valores x y width del 'layer' para lograr los cambios del reto
# - Vas a necesitar un poco de matematica para calcular los valores de x y el width segund mouevas las perillas del range slider:

# x define que tan lejos de la izquierda esta el layer
# para calcular la distancia de la derecha de la pantalla, usa esta formula para definir el nuevo valor del width:
# width = Screen.width - x - {range.maxValue}
