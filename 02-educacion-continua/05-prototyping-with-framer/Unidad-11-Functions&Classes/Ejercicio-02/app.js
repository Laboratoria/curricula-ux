var createAButton;

createAButton = function(color, text) {
  var button, buttonText;
  button = new Layer({
    width: 200,
    height: 80,
    borderRadius: 8,
    point: 20,
    backgroundColor: color
  });
  return buttonText = new TextLayer({
    parent: button,
    color: 'white',
    text: text,
    fontFamily: 'Arial',
    point: Align.center()
  });
};

createAButton("blue", "Hey!");
