Device = new DeviceComponent
Device.setupContext()
Device.deviceType = "apple-iphone-6s-space-gray"

# Primero, crear un Layer

card = new Layer
  borderRadius: 10
  width: Framer.Screen.width - 32
  height: Framer.Screen.height - 32
  point: 16
  backgroundColor: 'white'

# Colocamos una imagen arriba

image = new Layer
  image: Utils.randomImage()
  parent: card
  borderRadius: 10
  size: 120
  point: 12

# Luego, crear un titulo con un TextLayer

titulo = new TextLayer
  x: 12 + 120 + 12
  maxY: 12 + 120
  text: "Maria Apellido"
  fontFamily: 'arial'
  color: 'black'
  parent: card
  width: card.width - 120 - 24
  height: 100

# A continuacion, un parrafo

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
  parent: card
  width: card.width - 24
  height: 100

# Aprendamos un poco sobre eventos, creando un click event para cada elemento
# Click event para el 'Card'

card.onClick ->
  print 'CARD!'

# Click event para el 'image'

image.onClick ->
  print 'IMAGE!'

# Click event para el 'titulo'

titulo.onClick ->
  print 'TITULO!'

# Click event para el 'parrafo'

parrafo.onClick ->
  print 'PARRAFO!'
