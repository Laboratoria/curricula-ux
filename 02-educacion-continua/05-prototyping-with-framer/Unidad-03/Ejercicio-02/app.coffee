################################################
################################################

# Unidad - 03
# Ejercicio - 03
# Puesta de sol

################################################
################################################

#Usemos un iPhone para este ejercicio
Device = new DeviceComponent
Device.setupContext()
Device.deviceType = "apple-iphone-7-silver"

Screen.backgroundColor = "#fff"

# Empezemos creando un Layer

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

# Para cada estado podemos definir como se animara un cambio a ella.
# Esto se hace asi:
# layer.state.exampleState =
#   x: 100
#   animationOptions:
#      time: 0.25
#      curve: 'ease-in'

# No es necesario entrar en el detalle, pero animationOptions es en realidad un objeto
# Asi que podemos crear una variable que sea un objeto si vamos a usar una y otra vez estos valores
# Asi podemos cambiar convenientemente los valores para las animaciones de varios estados en un solo lugar

buttonAnimation =
      time: 0.5

# Tambien pudimos haber hecho
# myTime = 0.5
# y luego
# ...
#  animationOptions:
#      time: myTime

# Si ves alguna propiedad que no reconozcas, recuerda que todo esta en https://framer.com/docs
# Igual, la mejor forma de entenderlos y acordartelos va a ser que juegues con ellos aqui cambiandolos.

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

# Luego, creemos una serie de eventos que usaremos para llamar los cambios de estado
# Como cuando mouse esta sobre el boton

button.on Events.MouseOver, ->
  button.animate('hover')

# Cuando sale

button.on Events.MouseOut, ->
  button.animate('rest')

# Cuando se hace click

button.on Events.MouseDown, ->
  button.animate('clicked')

# Cuando se suelta el click

button.on Events.MouseUp, ->
  button.animate('hover')

# Un detalle a resaltar:
# Fijate como escribimos estos eventos diferente al que usamos en la clase pasada:

# button.onClick ->
# VS
# button.on Events.MouseDown, ->

# Hay una ',' despues de 'Events.MouseDown' que siempre hay que colocar
