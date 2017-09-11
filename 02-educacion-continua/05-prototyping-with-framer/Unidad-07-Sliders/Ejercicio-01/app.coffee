################################################
################################################

# Unidad - 07
# Ejercicio - 01
# Conociendo el Slider

################################################
################################################

#Usemos un iPhone para este ejercicio
Device = new DeviceComponent
Device.setupContext()
Device.deviceType = "apple-iphone-7-silver"
Screen.backgroundColor = "#FFF"

# Creemos un TextLayer con un numero dentro (0) que podremos actualizar hasta 100

number = new TextLayer
  text: '0'
  fontSize: 64
  width: Screen.width
  textAlign: 'center'
  fontFamily: 'Helvetica'
  point: Align.center()

slider = new SliderComponent
    x: Align.center
    y: 500

# El slider retornara valores de 0 a 1

slider.on Events.SliderValueChange, ->
    # print slider.value
    number.text = Utils.round(slider.value * 100, 0)
