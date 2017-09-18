var Device, button, buttonAnimation;

Device = new DeviceComponent;

Device.setupContext();

Device.deviceType = "apple-iphone-7-silver";

Screen.backgroundColor = "#fff";

button = new Layer({
  borderRadius: 4,
  backgroundColor: "#50E3C2",
  shadowColor: '#525252',
  shadowBlur: 8,
  width: 320,
  point: Align.center,
  html: "Hazme click",
  style: {
    'display': 'flex',
    'align-items': 'center',
    'justify-content': 'center',
    'color': 'rgba(0,0,0,.8)'
  }
});

buttonAnimation = {
  time: 0.5
};

button.states = {
  rest: {
    backgroundColor: "#50E3C2",
    shadowColor: '#525252',
    shadowBlur: 8,
    shadowSpread: 0,
    scale: 1,
    animationOptions: buttonAnimation
  },
  hover: {
    backgroundColor: "#57F7D5",
    shadowColor: '#B8B8B8',
    shadowBlur: 8,
    shadowSpread: 4,
    scale: 1.02,
    animationOptions: buttonAnimation
  },
  clicked: {
    shadowBlur: 1,
    shadowSpread: 1,
    scale: .98,
    animationOptions: buttonAnimation
  }
};

button.on(Events.MouseOver, function() {
  return button.animate('hover');
});

button.on(Events.MouseOut, function() {
  return button.animate('rest');
});

button.on(Events.MouseDown, function() {
  return button.animate('clicked');
});

button.on(Events.MouseUp, function() {
  return button.animate('hover');
});
