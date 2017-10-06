################################################
################################################

# Unidad - 04
# Ejercicio - 01
# Animaciones Parte 1

################################################
################################################

#Usemos un Nexus 5X para este ejercicio
Device = new DeviceComponent
Device.setupContext()
Device.deviceType = "google-nexus-5x"
Screen.backgroundColor = "#FFF"

# Creando un circulo

circulo1 = new Layer
  borderRadius: 100
  backgroundColor: "black"
  size: 15
  x: 120
  y: 360

# Definiendo animacion

mover1 = new Animation circulo1,
    x: 240
    opacity: 0
    options:
        time: 2
        delay: 1

# iniciando animacion mover1

mover1.start()

# Creando 4 circulos mas (para tener 5 en total)

# El segundo (2)
circulo2 = new Layer
  borderRadius: 100
  backgroundColor: "black"
  size: 15
  x: 120
  y: 360
  opacity: 0

mover2 = new Animation circulo2,
    x: 240
    opacity: 0
    options:
        time: 2
        delay: 1

# El tercero (3)
circulo3 = new Layer
  borderRadius: 100
  backgroundColor: "black"
  size: 15
  x: 120
  y: 360
  opacity: 0

mover3 = new Animation circulo3,
    x: 240
    opacity: 0
    options:
        time: 2
        delay: 1

# El cuarto (4)
circulo4 = new Layer
  borderRadius: 100
  backgroundColor: "black"
  size: 15
  x: 120
  y: 360
  opacity: 0

mover4 = new Animation circulo4,
    x: 240
    opacity: 0
    options:
        time: 2
        delay: 1

# El quinto (5)
circulo5 = new Layer
  borderRadius: 100
  backgroundColor: "black"
  size: 15
  x: 120
  y: 360
  opacity: 0

mover5 = new Animation circulo5,
    x: 240
    opacity: 0
    options:
        time: 2
        delay: 1

# Iniciando animaciones en base al fin de la anterior con eventos

mover1.on Events.AnimationEnd, ->
  print "Finalizo la animacion del primer circulo"
  circulo2.opacity = 1
  mover2.start()

mover2.on Events.AnimationEnd, ->
  print "Finalizo la animacion del segundo circulo"
  circulo3.opacity = 1
  mover3.start()

mover3.on Events.AnimationEnd, ->
  print "Finalizo la animacion del tercer circulo"
  circulo4.opacity = 1
  mover4.start()

mover4.on Events.AnimationEnd, ->
  print "Finalizo la animacion del cuarto circulo"
  circulo5.opacity = 1
  mover5.start()

mover5.on Events.AnimationEnd, ->
  print "Finalizo la animacion del quinto circulo"
