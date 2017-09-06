################################################
################################################

# Unidad - 03
# Ejercicio - 01
# Que son los estados y como usarlos

################################################
################################################

# Empezemos creando un Layers

# layer = new Layer



# A veces puede ser util destruir el state 'default'

# delete layer.states.default

layer = new Layer
layer.states =
 active:
  backgroundColor: "#00aeff"
 inactive:
  backgroundColor:"#000000"

delete layer.states.default
layer.stateSwitch("active")

layer.onClick ->
 layer.stateCycle()
