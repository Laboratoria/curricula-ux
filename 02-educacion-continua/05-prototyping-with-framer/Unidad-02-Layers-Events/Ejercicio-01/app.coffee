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

# Cambiando el color de fondo de la pantalla
Screen.backgroundColor = "#00AAFF"

# Creando un Layer con border radius de 10

tarjeta = new Layer
  borderRadius: 10

# Editando el width de tarjeta luego de crearlo

tarjeta.width = Framer.Screen.width - 32

# Ojo que aqui usamos '=' en vez de ':' para editar los valores de las propiedades

tarjeta.height = Framer.Screen.height - 32
tarjeta.point = 16
tarjeta.backgroundColor = 'white'

# Creando una imagen

imagen = new Layer
  image: 'images/img.jpg'
  parent: tarjeta
  borderRadius: 10
  size: 120
  point: 12

# Creando un TextLayer

titulo = new TextLayer
  x: 12 + 120 + 12
  maxY: 12 + 120
  text: "Maria Apellido"
  fontFamily: 'arial'
  color: 'black'
  parent: tarjeta
  width: tarjeta.width - 120 - 24
  height: 100

############# !!!!!!

# Actualmente hay un bug donde si no defines un fontFamily, saltara un error.
# Tener esto muy en cuenta.

############# !!!!!!

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

# Hay muchos otros tipos de eventos, revisalos y exploralos en los Docs de Framer.
