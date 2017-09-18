################################################
################################################

# Unidad - 04
# Ejercicio - 01
# Animaciones Parte 1

################################################
################################################

# Las animaciones y los estados son similares.
# Lo diferente es como se usan y como funcionan.

# Por ejemplo, las animaciones animaran la capa que indiques de forma unidireccional, pero no te sirven para luego devolverlo a donde estaba.
# Con estados podriamos definir posiciones, formas, colores (y mas propiedades) y facilmente mover un layer entre estas propiedades.

# Pero a veces solo necesitamos hacer algo una vez y no preocuparnos mas de ello.

# Creemos por ejemplo una animacion simple que podriamos usar para indicar que estamos cargando algo.

#Usemos un Nexus 5X para este ejercicio
Device = new DeviceComponent
Device.setupContext()
Device.deviceType = "google-nexus-5x"
Screen.backgroundColor = "#FFF"

# Creemos un simple circulo que se movera a la derecha y desaparecera

circulo1 = new Layer
  borderRadius: 100
  backgroundColor: "black"
  size: 15
  x: 120
  y: 360

# Definimos aqui la animacion, indicando que es una animacion y a que capa corresponde
# Fijate en como lo escribimos

# {nombre de animacion} = new Animation {capa que sera animada},

mover1 = new Animation circulo1,
    x: 240
    opacity: 0
    options:
        time: 2
        delay: 1

# Muy importante (y facil olvidar) la "," (linea 39)

#Y luego lo llamamos asi

mover1.start()

# Las animaciones tienen sus propios eventos.
# Por ejemplo, podemos saber cuando una animacion empezo o termino

# Creemos mas circulos (en total 5), para simular un tiempo de carga "real", asi como sus animaciones
# Cada circulo adicional que vamos a crear tendran una opacidad de 0 para ser "inivisibles"
# Solo queremos que se vean cuando es su turno de animarse
# (Hay otra propiedad que es "visible" que puede ser true/false (boolean) que podriamos usar tambien)
# (Tomar en cuenta con "visible": no se puede animar de true a false, como si podemos animar la opacidad)

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

# Ahora con los eventos. Queremos que cuando el circulo1 termine de moverse (finalice su animacion), empiece a hacer lo mismo el circulo2
# Para ello primero cambiamos su opacidad de 0 a 1
# Y luego iniciamos su animacion
# Un truco que se usa mucho con los eventos: print
# A veces no sabemos si hay un problema con el evento (es decir, si lo estamos detectando) o si el problema es con la capa o lo que estamos invocando/haciendo
# Usando print podemos verificar que un evento esta siendo llamado

mover1.on Events.AnimationEnd, ->
  print "Finalizo la animacion del primer circulo"
  circulo2.opacity = 1
  mover2.start()

# Ahora, repitamos lo anterior para todos los circulos

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
