################################################
################################################

# Unidad - 03
# Ejercicio - 03
# Creando un boton con states

################################################
################################################

#Usemos un iPhone para este ejercicio
Device = new DeviceComponent
Device.setupContext()
Device.deviceType = "apple-iphone-7-silver"

Screen.backgroundColor = "#fff"

# Empezemos creando un el boton

button = new Layer
  borderRadius: 4
  backgroundColor: "#50E3C2"
  shadowColor: '#525252'
  shadowBlur: 8
  width: 320
  point: Align.center
  html: "Hazme click"
  style:
    'display' : 'flex'
    'align-items' : 'center'
    'justify-content' : 'center'
    'color' : 'rgba(0,0,0,.8)'

# Creando el objeto buttonAnimation que tendra el tiempo de nuestras animaciones

buttonAnimation =
      time: 0.5

# Creando los estados del boton

button.states =
  rest:
    backgroundColor: "#50E3C2"
    shadowColor: '#525252'
    shadowBlur: 8
    shadowSpread: 0
    scale: 1
    animationOptions: buttonAnimation
  hover:
    backgroundColor: "#57F7D5"
    shadowColor: '#B8B8B8'
    shadowBlur: 8
    shadowSpread: 4
    scale: 1.02
    animationOptions: buttonAnimation
  clicked:
    shadowBlur: 1
    shadowSpread: 1
    scale: .98
    animationOptions: buttonAnimation

# Cuando hacemo hover

button.on Events.MouseOver, ->
  button.animate('hover')

# Cuando dejamos de hacer hover

button.on Events.MouseOut, ->
  button.animate('rest')

# Cuando se hace click

button.on Events.MouseDown, ->
  button.animate('clicked')

# Cuando se suelta el click

button.on Events.MouseUp, ->
  button.animate('hover')
