var cycleLayer, delayLayer, newColor, randomColorLayer, randomImageLayer;

randomImageLayer = new Layer({
  size: 120,
  image: Utils.randomImage(randomImageLayer)
});

randomColorLayer = new Layer({
  size: 120,
  x: 120,
  backgroundColor: Utils.randomColor(0.75)
});

delayLayer = new Layer({
  size: 120,
  x: 240,
  y: -120
});

Utils.delay(3, function() {
  return delayLayer.animate({
    y: 0
  });
});

cycleLayer = new Layer({
  size: 120,
  x: 360,
  backgroundColor: 'blue'
});

newColor = Utils.cycle(["green", "red", "blue"]);

cycleLayer.onClick(function() {
  return this.backgroundColor = newColor();
});
