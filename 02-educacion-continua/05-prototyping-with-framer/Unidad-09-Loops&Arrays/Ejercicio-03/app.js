var LayerContainer, aLayer, i, j, turnBlueButton;

LayerContainer = [];

for (i = j = 0; j < 3; i = ++j) {
  aLayer = LayerContainer[i] = new Layer({
    x: Align.center(),
    y: 60 + (120 + 30) * i,
    size: 120,
    backgroundColor: 'red',
    custom: {
      name: "layer" + i
    }
  });
  aLayer.states = {
    blue: {
      backgroundColor: 'blue'
    },
    red: {
      backgroundColor: 'red'
    }
  };
  aLayer.onClick(function() {
    print(this.custom.name);
    return this.animate('red');
  });
}

turnBlueButton = new Layer({
  width: 220,
  height: 60,
  point: 30,
  html: "Turn them blue",
  backgroundColor: 'blue',
  style: {
    'display': 'flex',
    'align-items': 'center',
    'justify-content': 'center',
    'font-size': '28px'
  }
});

turnBlueButton.onClick(function() {
  var k, ref, results;
  results = [];
  for (i = k = 0, ref = LayerContainer.length; 0 <= ref ? k < ref : k > ref; i = 0 <= ref ? ++k : --k) {
    results.push(LayerContainer[i].animate('blue'));
  }
  return results;
});
