# Semana 2 - Unidad 06: Usando los componentes de Framer: Page

TBD min

## Antes de empezar

Lee sobre el componente de “páginas” de Framer.JS en este genial post en Medium.

[Framer Cheat Sheet: Page Components](https://blog.framer.com/framer-cheat-sheet-page-components-df5a1e8332a?source=user_profile---------3----------------), Tess Gadd


## El Page Component

## Ejercicio 01

Los page components son muy versatiles. De lo más poderoso que tienen son los gestos para telefonos y tablets con los que vienen incluidos.

Usa este ejercicio para familiarizarte con cómo se interactua con ellos. Intenta arrastrar hacia los lados las páginas y mira como sin tener que arrastrarlas del todo, hay un punto en que la siguiente pagina toma el centro del iPhone.

Creemos el Page Component. **(linea 18)**

Creemos una primera pagina y agreguémosla al page component. Aqui tambien lo agregamos a un layer content (page.content) que es el que contiene las paginas. **(linea 24)**

Para una segunda página, aunque podemos agregarla al page component como la primera (con las propiedades comentadas), hagamoslo con esta funcion que es parte del page component. **(linea 30)** + **(linea 37)**


## Ejercicio 02

Un uso interesante, por ejemplo, es para prototipar el onboarding de un app. Recuerda que el Page Component es un componente hecho por el equipo de Framer. Tiene funcionalidades que ya vienen por defecto. Esto es bueno porque te ahorra mucho trabajo. Funciones como el gesto de no tener que arrastrar completamente hacia derecha o izquierda un layer para terminar de cambiar a la siguiente o anterior pagina del page component.

Sin embargo, esto quiere decir que a veces tenemos que 'hackearlo' un poco para que funcione como queremos. A medida que vas probando y usando los componentes de Framer esto te sera más facil.

Por ejemplo, en este caso, queremos simular el onboarding de un app, con 3 imagenes que la persona puede revisar. El producto final que queremos son 3 imagenes que podemos explorar arrastrando (como un carrusel). Cuando cualquiera de las imagenes sea mostrada, queremos que esté centrada. Lo que queremos del page component es aprovechar todo lo que nos trae "gratis" (sin hacer ningun trabajo).

Luego de crear el Page Component, creemos una primera pagina y agreguemosla al page component. **(linea 18)** +

Al usar el page component recuerda que lo sus paginas las agregamos a un layer llamado content, contenido dentro del layer page (page.content). El orden es asi:

```
Page (layer padre)
-> content (layer hijo)
```

Y luego es el `page.content` el que contiene las paginas que agregamos:

```
page
-> content
-> -> pageOne
-> -> pageTwo
-> -> pageThree
```

La segunda pagina queremos que este a la derecha de la primera. Especificamente, a un valor en el eje X igual al ancho de la primera página. Haremos lo mismo para la tercera pagina. **(linea 32)**

Cada pagina nos servira de contenedor para las imagenes que queremos mostrar, asi que agreguemos ahora las imagenes. **(linea 48)**

Creemos un indicador de la pagina en la que estás con 3 circulos. Indicaran que hay 3 imagenes que ver (ya que habran 3 círculos). Para facilitar centrar los circulos creemos un layer que los contenga. Ademas, cada circulo necesitara un estado para ambos colores. **(linea 70)**

Luego, queremos que según la "pagina" del page component que estemos viendo, los circulos cambien de acuerdo a estemos. Lograremos esto con un evento que tienen los Page Components: saber cuando se la página actual cambia. Si te percataste, para cada pagina agregue una propiedad 'name'. Es con esto que sabremos en que pagina estamos. **(linea 115)**

Y para terminar, un par de botones abajo para que el prototipo se vea mas real. **(linea 131)**

## Ejercicio 03

El reto: Abre la imagen reto.jpg y replicalo. Es basicamente: un page component donde cada pagina puede luego ocupar toda la pantalla tras una interaccion (que tu podras definir). Al entrar en modo fullscreen, debera aparecer un TextLayer que te permita salir de este modo y volver a navegar por las todas las paginas.

Recuerda, no hay una sola manera de hacerlo.