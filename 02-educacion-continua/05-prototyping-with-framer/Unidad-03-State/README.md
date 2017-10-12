# Lección 03: Dando vida al prototipo: Estados

## Trabajando con estados en Framer.JS

Explora qué son los estados (state) en Framer.JS que puedes crear para cada capa, cómo se usan, y piensa para qué podrían servirte. Miremos el [Framer Cheat Sheets: States](https://blog.framer.com/framer-cheat-sheets-states-9b4c96b89674?source=user_profile---------5----------------), Tess Gadd


## Ejercicio 01: Que son los estados y como usarlos

Los states (o estados) son una forma de crear "versiones" de un objeto de Framer. Los usamos cuando un objeto necesita tener mas de una version, como un boton que cambia si le hacemos Click, un dropdown que abrimos y cerramos, o una tarjeta que se expande cuando hacemos hover con el mouse, etc.

Creemos un state llamado `initialState` **(Linea 17)** para el layer llamado `Layer` creada al inicio. Ojo que el nombre `initialState` es totalmente arbitrario. Podria llamarse `elefante` o `espresso`.

Lo que hicimos aqui es definir que este layer tiene un estado conde su `x: 100` y su `backgroundColor: 'red'`. Esto no quiere decir que va a cambiar, solo que existe ese estado.

Existe otra forma de crear estados, que permite que crees mas de uno a la vez:

```
layer.states =
  start:
    x: 200
    backgroundColor: 'yellow'
  finish:
    x: 300
    backgroundColor: 'orange'
```

Ojo que cada vez que usamos la notacion 'layer.states =' estamos sobreescribiendo todos los estados de la capa. Es decir, estamos diciendo: estos son TODOS los estados de la capa, lo que no este aqui, no debe estar. Fijate en el print que saldra de los estados de layer **(Linea 33)**

Lo que podemos hacer es poner el mismo codigo nuevamente. La notacion que usamos (`layer.states.initialState =`) define un solo estado al especificar a cual nos referimos. **(Linea 37)**

Puedes verificarlo borrando el `#` del print que esta luego de volver a declarar este estado **(Linea 41)**

Ahora, empecemos a ver para que sirven los estados. Podemos usar stateCycle para transversar todos los estados (en orden). Usemos un evento, en este caso un click, para llamar la funcion stateCycle.**(Linea 45)**

Lo que esta pasando es que, empieza en el estado 'default', luego pasa al estado 'middle', 'end' y luego 'initialState', y luego regresa al default. Y empieza de nuevo, como un ciclo.

Algo que puedes probar es destruir el estado default:

```
delete layer.states.default
```

No lo tienes que hacer, es solo una posibilidad, todo dependera de como armes tu prototipo.


## Ejercicio 02: Creando un boton con states

En este ejercicio crearemos un boton. **(Linea 20)**

Este boton tendra estados para cuando hacemos hover con el mouse, y para cuando  hacemos click. Para cada estado podemos definir como se animara el cambio de estado.

Esto se hace asi:

```
layer.state.exampleState =
   x: 100
   animationOptions:
      time: 0.25
      curve: 'ease-in'
```
Un truco que usaremos es crear un objeto buttonAnimtion que contenga todo lo que podria ir dentro de la propiedad animationOptions. **(Linea 36)**

Esta es una forma de crear una variable con la que podemos a usar una y otra vez estos valores en los cambios de estado que querramos. Asi podemos cambiar convenientemente los valores para las animaciones de varios estados en un solo lugar

Tambien pudimos haber hecho:

```
myTime = 0.5

layer.state.exampleState =
    x: 100
    animationOptions:
        time: myTime
```

Pero esto solo nos hubera servido para el tiempo de la animacion (hay tambien curve, delay por ejemplo que pudimos hacer especificado).

Creemos entonces los estados. **(Linea 41)**

Si ves alguna propiedad que no reconozcas, recuerda que todo esta en los [docs]()https://framer.com/docs). Igual, la mejor forma de entenderlos y acordartelos va a ser que juegues con ellos aqui cambiandolos.

Luego, creemos una serie de eventos que usaremos para llamar los cambios de estado.

Crearemos eventos que llamaran el estado correcto para:

* Cuando el mouse hace hover
* Cuando el mouse deja de hacer hover
* Cuando hacemos click
* Cuando soltamos el click

**(Linea 62)**

Un detalle a resaltar: fijate como escribimos estos eventos diferente al que usamos en la clase pasada: `button.onClick ->` VS `button.on Events.MouseDown, ->`

Hay una ',' despues de 'Events.MouseDown' que siempre hay que colocar.

## Ejercicio 03: Crea un atardecer

Ahora, tu reto es: usando estados crea un atardecer. Los layers ya estan todos creados, asi que solo tienes que agregar los estados y crear un evento para que todo empiece a funcionar.