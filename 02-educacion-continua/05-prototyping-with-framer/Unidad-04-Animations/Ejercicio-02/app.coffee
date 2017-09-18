################################################
################################################

# Unidad - 04
# Ejercicio - 02
# Animaciones Parte 2

################################################
################################################

# Otro caso en el que podriamos querer usar animaciones es para cargar el UI en un app
# ya que esto solo sucedera una vez (cuando se abre el app)

#Usemos un Nexus 5X para este ejercicio
Device = new DeviceComponent
Device.setupContext()
Device.deviceType = "google-nexus-5x"
Screen.backgroundColor = "#FFF"

# Creemos el UI
# Atencion al orden el que creamos los layers. Lo ultimo que creamos va a ir "arriba"
# En este ejemplo, tendremos en la parte superior el status bar asi como un header
# Queremos el status bar **sobre** el header, por lo que primero debemos crear el header

# Mas adelante aprenderemos mas sobre como trabajar mejor con figma para trabajar ahi el diseño, pero te voy dando un tip:
# Si necesitas generar sombras, considera hacerlo en Framer. Si importas una imagen con sombra te causara problemas con el ancho

# Primero, usemos una serie de capas que importe del stickersheet de Material Design de Google

header = new Layer
  image: 'images/header.jpg'
  width: 360
  height: 80
  y: -80

statusBar = new Layer
  image: 'images/status-bar.png'
  width: Framer.Screen.width
  height: 24

content = new Layer
  image: 'images/content.jpg'
  width:220
  height: 504
  x: 16
  y: 92 + 20
  opacity: 0

fab = new Layer
  image: 'images/fab.png'
  size: 56
  x: 289
  y: 520
  opacity: 0
  scale: 0
  shadowY: 2
  borderRadius: 100
  shadowBlur: 8
  shadowColor: "rgba(0,0,0,.56)"

# Importante colocar de ultimo el navBar si queremos que, en el eje z, este lo mas arriba posible

navBar = new Layer
  image: 'images/navbar.jpg'
  width: Framer.Screen.width
  height: 48
  maxY: Framer.Screen.height

# Las animaciones estan con un delay (retraso) de 1 segundo para que sea mas facil verlas (y no corran apenas cargamos el prototipo).

# Nuevamente, muy importante el ',' al final de la primera linea de cada animacion

# Si quisieramos crear las animaciones, lo hariamos asi (pero lo haremos de otra forma)

# fabAppear = new Animation fab,
#   scale: 1
#   opacity: 1
#   options:
#     time: .5
#     delay: .5 + 1
#
# headerSlideDown = new Animation header,
#   y: 0
#   options:
#     time: .4
#     delay: .2 + 1
#
# contentSlideUp = new Animation content,
#   y: 92
#   opacity: 1
#   options:
#     time: .2
#     delay: .2 + 1

# Ahora tendriamos que tener las siguientes lineas para que corran (pero las he comentado para que no corran)
# contentSlideUp.start()
# headerSlideDown.start()
# fabAppear.start()

# En realidad, queremos que esta animacion corra desde el comienzo, asi que no tiene mucho sentido definirla y luego tener que iniciarla

# Mejor, hagamos las dos cosas de golpe

fab.animate
  scale: 1
  opacity: 1
  options:
    time: .5
    delay: .5 + 1

header.animate
  y: 0
  options:
    time: .4
    delay: .2 + 1

content.animate
  y: 92
  opacity: 1
  options:
    time: .2
    delay: .2 + 1
