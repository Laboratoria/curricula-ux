################################################
################################################

# Unidad - 02
# Ejercicio - 01
# Conociendo Layers, TextLayers y eventos

################################################
################################################

# Para usar dispositivos (moviles, laptops, TVs, relojes, etc), necesitamos este codigo:
Device = new DeviceComponent
Device.setupContext()
Device.deviceType = "apple-iphone-6s-space-gray"

# Podemos cambiar facilmente el color de fondo de la pantalla
Screen.backgroundColor = "#00AAFF"

# Como primer paso, aprendamos a crear un Layer
# En Framer, lo que hacemos es crear objetos (de JavaScript)
# Este curso sera muy practico, asi que no entraremos aqui en detalle

# Creemos entonces un Layer (capa) llamado tarjeta
# Y cambiemos el borderRadius, una de sus propiedades, a 10

tarjeta = new Layer
  borderRadius: 10

# Cuando creamos un objeto, como viste, podemos editar sus propiedades.
# Todos los objetos vienen con valores por defecto en todas sus propiedades
# Una vez que hemos creado un objeto, si queremos editar una de sus propiedades, se hace de esta forma
# (En este caso, editaremos el ancho(width), alto(height), x,y y color de fondo)

tarjeta.width = Framer.Screen.width - 32

# Ojo que aqui usamos '=' en vez de ':' para las propiedades

tarjeta.height = Framer.Screen.height - 32
tarjeta.point = 16
tarjeta.backgroundColor = 'white'


# Coloquemos ahora una imagen
# Las imagenes son tambien capas, simplemente definimos la imagen que vamos a usar.
# Framer viene con un folder llamado 'images'.
# En realidad podriamos poner la imagen en cualquier folder,
# pero por orden y para respetar como se suelen organizar los proyectos en Framer,
# recomiendo ponerlos alli

imagen = new Layer
  image: 'images/img.jpg'
  parent: tarjeta
  borderRadius: 10
  size: 120
  point: 12

# Un detalle importante a resaltar es la propiedad 'parent'
# Las coordenadas (x, y) seran calculadas en base al padre
# Ademas, en esta segunda capa usamos la propiedad 'point' en vez de x e y.
# Point: 12 === x: 12, y: 12
# Size hace lo mismo, donde size: 120 === height: 120, width: 120

# Luego, creemos un titulo con un TextLayer
# El TextLayer es una capa que permite anadir texto
# tiene algunas propiedades adicionales, como manejo inteligente de las dimensiones del objeto y mas

titulo = new TextLayer
  x: 12 + 120 + 12
  maxY: 12 + 120
  text: "Maria Apellido"
  fontFamily: 'arial'
  color: 'black'
  parent: tarjeta
  width: tarjeta.width - 120 - 24
  height: 100


# A continuacion, un parrafo (usando un TextLayer nuevamente)

parrafo = new TextLayer
  x: 12
  y: 120 + 24
  text: '''
  Hola, mi nombre es Maria Apellido, y estoy aprendiendo Framer de forma divertida y concisa.
  '''
  lineHeight: 1.4
  fontSize: 20
  fontFamily: 'arial'
  color: 'black'
  parent: tarjeta
  width: tarjeta.width - 24
  height: 100

# Si se percataron, esta vez usamos ''' para poder escribir texto en multiples lineas

# Ahora aprendamos un poco sobre eventos, creando un click event para cada elemento
# Click event para el 'Card'

tarjeta.onClick ->
  print 'TARJETA!'

# Click event para el 'image'

imagen.onClick ->
  print 'IMAGEN!'

# Click event para el 'titulo'

titulo.onClick ->
  print 'TITULO!'

# Click event para el 'parrafo'

parrafo.onClick ->
  print 'PARRAFO!'

# Hay muchos otros tipos de eventos, revisalos y exploralos
