################################################
################################################

# Unidad - 11
# Ejercicio - 03
# Functions & Classes

################################################
################################################

# Creando la clase
class Button extends Layer
    constructor: (options) ->
        super _.defaults options,
            width: 200
            height: 80
            borderRadius: 8
            point: 20
            backgroundColor: options.buttonColor

        buttonText = new TextLayer
              text: options.buttonText
              fontFamily: 'arial'
              parent: @
              point: Align.center()
              color: 'white'


# Creando un Layer de clase Button, con las opciones text y buttonColor que creamo
buttonArray = ['Home', 'Profile', 'Settings']

for button, i in buttonArray
  print button
  print i
  button = new Button
    y: 20
    x: 20 + (200 + 20) * i
    buttonText: button
    backgroundColor: "blue"
