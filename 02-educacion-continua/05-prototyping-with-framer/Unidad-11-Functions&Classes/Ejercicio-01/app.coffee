################################################
################################################

# Unidad - 11
# Ejercicio - 01
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
button = new Button
    buttonText: "Hey!"
    buttonColor: 'blue'
