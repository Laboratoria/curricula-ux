var Device, imagen, parrafo, tarjeta, titulo;

Device = new DeviceComponent;

Device.setupContext();

Device.deviceType = "apple-iphone-6s-space-gray";

Screen.backgroundColor = "#00AAFF";

tarjeta = new Layer({
  borderRadius: 10
});

tarjeta.width = Framer.Screen.width - 32;

tarjeta.height = Framer.Screen.height - 32;

tarjeta.point = 16;

tarjeta.backgroundColor = 'white';

imagen = new Layer({
  image: 'images/img.jpg',
  parent: tarjeta,
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
  parent: tarjeta,
  width: tarjeta.width - 120 - 24,
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
  parent: tarjeta,
  width: tarjeta.width - 24,
  height: 100
});

tarjeta.onClick(function() {
  return print('TARJETA!');
});

imagen.onClick(function() {
  return print('IMAGEN!');
});

titulo.onClick(function() {
  return print('TITULO!');
});

parrafo.onClick(function() {
  return print('PARRAFO!');
});
