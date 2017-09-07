var layer;

layer = new Layer;

layer.states.initialState = {
  x: 100,
  backgroundColor: 'red'
};

layer.states = {
  start: {
    x: 200,
    backgroundColor: 'yellow'
  },
  finish: {
    x: 300,
    backgroundColor: 'orange'
  }
};

print(layer.states);

layer.states.initialState = {
  x: 100,
  backgroundColor: 'red'
};

print(layer.states);

layer.onClick(function() {
  return layer.stateCycle();
});
