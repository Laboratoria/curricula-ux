var Device, content, fab, header, navBar, statusBar;

Device = new DeviceComponent;

Device.setupContext();

Device.deviceType = "google-nexus-5x";

Screen.backgroundColor = "#FFF";

header = new Layer({
  image: 'images/header.jpg',
  width: 360,
  height: 80,
  y: -80
});

statusBar = new Layer({
  image: 'images/status-bar.png',
  width: Framer.Screen.width,
  height: 24
});

content = new Layer({
  image: 'images/content.jpg',
  width: 220,
  height: 504,
  x: 16,
  y: 92 + 20,
  opacity: 0
});

fab = new Layer({
  image: 'images/fab.png',
  size: 56,
  x: 289,
  y: 520,
  opacity: 0,
  scale: 0,
  shadowY: 2,
  borderRadius: 100,
  shadowBlur: 8,
  shadowColor: "rgba(0,0,0,.56)"
});

navBar = new Layer({
  image: 'images/navbar.jpg',
  width: Framer.Screen.width,
  height: 48,
  maxY: Framer.Screen.height
});

fab.animate({
  scale: 1,
  opacity: 1,
  options: {
    time: .5,
    delay: .5 + 1
  }
});

header.animate({
  y: 0,
  options: {
    time: .4,
    delay: .2 + 1
  }
});

content.animate({
  y: 92,
  opacity: 1,
  options: {
    time: .2,
    delay: .2 + 1
  }
});
