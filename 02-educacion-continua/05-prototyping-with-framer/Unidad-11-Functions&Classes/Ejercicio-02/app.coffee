################################################
################################################

# Unidad - 11
# Ejercicio - 01
# Functions & Classes

################################################
################################################

# Creando la funcion
createAButton = (color, text) ->
  button = new Layer
    width: 200
    height: 80
    borderRadius: 8
    point: 20
    backgroundColor: color

  buttonText = new TextLayer
    parent: button
    color: 'white'
    text: text
    fontFamily: 'Arial'
    point: Align.center()

# Corriendo la funcion
createAButton("blue","Hey!")
