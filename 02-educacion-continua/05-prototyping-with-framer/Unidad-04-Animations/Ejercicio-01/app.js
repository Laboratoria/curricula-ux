var Device, circulo1, circulo2, circulo3, circulo4, circulo5, mover1, mover2, mover3, mover4, mover5;

Device = new DeviceComponent;

Device.setupContext();

Device.deviceType = "google-nexus-5x";

Screen.backgroundColor = "#FFF";

circulo1 = new Layer({
  borderRadius: 100,
  backgroundColor: "black",
  size: 15,
  x: 120,
  y: 360
});

mover1 = new Animation(circulo1, {
  x: 240,
  opacity: 0,
  options: {
    time: 2,
    delay: 1
  }
});

mover1.start();

circulo2 = new Layer({
  borderRadius: 100,
  backgroundColor: "black",
  size: 15,
  x: 120,
  y: 360,
  opacity: 0
});

mover2 = new Animation(circulo2, {
  x: 240,
  opacity: 0,
  options: {
    time: 2,
    delay: 1
  }
});

circulo3 = new Layer({
  borderRadius: 100,
  backgroundColor: "black",
  size: 15,
  x: 120,
  y: 360,
  opacity: 0
});

mover3 = new Animation(circulo3, {
  x: 240,
  opacity: 0,
  options: {
    time: 2,
    delay: 1
  }
});

circulo4 = new Layer({
  borderRadius: 100,
  backgroundColor: "black",
  size: 15,
  x: 120,
  y: 360,
  opacity: 0
});

mover4 = new Animation(circulo4, {
  x: 240,
  opacity: 0,
  options: {
    time: 2,
    delay: 1
  }
});

circulo5 = new Layer({
  borderRadius: 100,
  backgroundColor: "black",
  size: 15,
  x: 120,
  y: 360,
  opacity: 0
});

mover5 = new Animation(circulo5, {
  x: 240,
  opacity: 0,
  options: {
    time: 2,
    delay: 1
  }
});

mover1.on(Events.AnimationEnd, function() {
  print("Finalizo la animacion del primer circulo");
  circulo2.opacity = 1;
  return mover2.start();
});

mover2.on(Events.AnimationEnd, function() {
  print("Finalizo la animacion del segundo circulo");
  circulo3.opacity = 1;
  return mover3.start();
});

mover3.on(Events.AnimationEnd, function() {
  print("Finalizo la animacion del tercer circulo");
  circulo4.opacity = 1;
  return mover4.start();
});

mover4.on(Events.AnimationEnd, function() {
  print("Finalizo la animacion del cuarto circulo");
  circulo5.opacity = 1;
  return mover5.start();
});

mover5.on(Events.AnimationEnd, function() {
  return print("Finalizo la animacion del quinto circulo");
});
