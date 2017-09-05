var Device, card, image, parrafo, titulo;

Device = new DeviceComponent;

Device.setupContext();

Device.deviceType = "apple-iphone-6s-space-gray";

card = new Layer({
  borderRadius: 10,
  width: Framer.Screen.width - 32,
  height: Framer.Screen.height - 32,
  point: 16,
  backgroundColor: 'white'
});

image = new Layer({
  image: Utils.randomImage(),
  parent: card,
  borderRadius: 10,
  size: 120,
  point: 12
});

titulo = new TextLayer({
  x: 12 + 120 + 12,
  maxY: 12 + 120,
  text: "Maria Apellido",
  fontFamily: 'arial',
  color: 'black',
  parent: card,
  width: card.width - 120 - 24,
  height: 100
});

parrafo = new TextLayer({
  x: 12,
  y: 120 + 24,
  text: 'Hola, mi nombre es Maria Apellido, y estoy aprendiendo Framer de forma divertida y concisa.',
  lineHeight: 1.4,
  fontSize: 20,
  fontFamily: 'arial',
  color: 'black',
  parent: card,
  width: card.width - 24,
  height: 100
});

card.onClick(function() {
  return print('CARD!');
});

image.onClick(function() {
  return print('IMAGE!');
});

titulo.onClick(function() {
  return print('TITULO!');
});

parrafo.onClick(function() {
  return print('PARRAFO!');
});
