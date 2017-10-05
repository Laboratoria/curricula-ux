################################################
################################################

# Unidad - 03
# Ejercicio - 01
# Que son los estados y como usarlos

################################################
################################################

# Empezemos creando un Layer

layer = new Layer

# Creando el state initialState

layer.states.initialState =
    x: 100
    backgroundColor: 'red'

# Otra forma de crear estados, incluso mas de uno a la vez:

layer.states =
  start:
    x: 200
    backgroundColor: 'yellow'
  finish:
    x: 300
    backgroundColor: 'orange'

# Print para verificar que estados tiene layer

print layer.states

# Agregando el estado initialState nuevamente, y usando otro print para verificar que estados tiene layer

layer.states.initialState =
    x: 100
    backgroundColor: 'red'

# print layer.states

# Usando un stateCycle al hacer click en layer

layer.onClick ->
 layer.stateCycle()


