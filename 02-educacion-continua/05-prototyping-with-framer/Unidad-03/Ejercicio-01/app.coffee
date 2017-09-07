################################################
################################################

# Unidad - 03
# Ejercicio - 01
# Que son los estados y como usarlos

################################################
################################################

# Empezemos creando un Layer

layer = new Layer

# Los states (o estados), son una forma de crear "versiones" de un objeto de Framer
# Los usamos cuando un objeto necesita tener mas de una version, como un boton que cambia si le hacemos Click
# O un dropdown, una tarjeta que se expande, etc
# Creemos un state llamado 'initialState'

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

# Ojo que cada vez que usamos la notacion 'layer.states =' estamos sobreescribiendo todos los estados de la capa
# Fijate en el print que saldra, no estara el initialState que definimos inicialmente

print layer.states

# Si lo agregamos nuevamente (ahora luego del 'layer.states ='), si aparecera:

layer.states.initialState =
    x: 100
    backgroundColor: 'red'

# Esto es porque no estamos definiendo **todos los estados**, estamos definiendo solo un nuevo estado

print layer.states

# Podemos usar stateCycle para transversar todos los estados (en orden).
# Usemos un evento, en este caso un click, para llamar la funcion stateCycle

layer.onClick ->
 layer.stateCycle()

# Lo que esta pasando es que empieza del estado 'default', luego pasa al estado 'middle', 'end' y luego 'initialState'
