# Tecnología

- Tipo: `lectura`
- Formato: `self-paced`
- Duración: `2h`

***

## Tecnología

### La web vs apps nativas

Si mencionamos estos términos:

- `Website`
- `Web app`
- `Mobile web`

¿Qué tienen en común?

Todas se consumen desde el navegador. Y utilizan las herramientas que ya
conociste en el plan común `html`, `css` y `javascript` como lenguajes de
front-end y muchas otras como back-end. La clave aquí es entender que este tipo
de apps funcionan en el navegador: `Google Chrome`, `Firefox`, `Safari`, `Opera`
, `Internet Explorer`, etc. Es decir el usuario tiene que abrir uno de estos
o se vale de alguno los navegadores para poder consumir una web. Además, tiene
mucha relevancia que tenga una conexión a internet. En la gran mayoría de los
casos, una web o un web app no funcionará sin conexión a internet.

Por otro lado, tenemos las `aplicaciones nativas` como las que tienes instaladas
en tu celular, o en tu computador. Son aplicaciones que están instaladas en el
sistema operativo de nuestro dispositivo y las consumimos desde ahí. Incluso, en
Windows o Mac OS hay una carpeta especial para `aplicaciones` o `programas`.
Este tipo de aplicaciones no necesitan necesariamente de una conexión a
internet. Hay de todo. Por ejemplo, puedes usar Microsoft Word o Sublime o Atom,
sin tener una conexión a internet. Pero, también, hay otras apps, que están
pensadas para usarse con conexión como Slack, Uber, Whatsapp, Instagram, entre
otras.

Las aplicaciones nativas dependen del sistema operativo del dispositivo donde
serán consumidas, así una aplicación para iOS tiene que estar construida, o al
menos ser compilada a [Swift](https://developer.apple.com/swift/) u
[Objective C](https://developer.apple.com/library/content/documentation/Cocoa/Conceptual/ProgrammingWithObjectiveC/Introduction/Introduction.html);
y en el caso de una aplicación para Android se usa [Java](https://www.java.com/en/download/faq/java_mobile.xml).

Hasta aquí tenemos dos principales diferencias:

- Cómo se consumen: navegador o sistema operativo
- Cómo están construidas: dependiendo del lenguaje del sistema operativo

Ahora, _¿cómo afecta eso a la experiencia de usuario y a nuestro trabajo como
diseñadoras?_.

En mucho, primero que tienes que entender bien cómo es que funcionan estos dos
tipos de aplicaciones al momento de proponer una solución. También, debes saber
cuál es el tipo de solución que mejor se adapta a las necesidades de tus
usuarios, del producto que estás diseñando, de la capacidad técnica del equipo y
de las necesidades del negocio.

#### Costos y tiempos de implementación

En general hacer una web app es más económico que hacer un app nativa. Si bien
es cierto cada vez los costos se equiparan más, por un tema de mercado, es más
complicado conseguir desarrolladores móviles que desarrolladores web. Por lo
cual, también, es probable que en el equipo donde trabajes no haya muchos
desarrolladores móviles disponibles.

El tiempo también es una variable a tener en cuenta. Por ejemplo, al hacer una
aplicación web solo tienes que desarrollar una vez. Y con las capacidades del
responsive y el adaptative design esta aplicación va a poder correr en distintos
tipos y tamaños de dispositivos. Sin embargo, si decides hacer una aplicación
móvil nativa, tienes que hacer un desarrollo para iOS y otro para Android.

#### Posibilidades técnicas

Cuando hacemos aplicaciones nativas aprovechamos todas las capacidades que nos
da el dispositivo y su sistema operativo. Por ejemplo:

- Biometría: en muchos dispositivos y sistemas operativos, puedes usar la huella
  dactilar o el iris o hasta la cara para poder hacer operaciones que involucran
  seguridad.
- [Giroscopio y acelerómetro](https://hipertextual.com/2016/08/acelerometro-giroscopio)
  : se utilizan para saber los movimientos que hace el celular y ayudan por
  ejemplo a detectar cuando la pantalla se ha rotado (vertical/horizontal) o
  cuántos pasos has dado.
- GPS: nos ayuda a detectar la ubicación
- Forcetouch: es una capacidad de algunos iphones, que permite añadir nuevas
  opciones a las interacciones cuando presionas la pantalla con un poco más de
  fuerza
- Cámara, bluetooth, etc.: otro tipo de capacidades que podemos utilizar para
  crear mejores productos.

Con el paso de los años `HTML5` ha permitido incorporar muchas de estas
posibilidades también a los navegadores como por ejemplo el acceso a la cámara
y al micrófono de un celular o computadora. Pero igual hay cosas que no logran
funcionar con la misma fluidez que un app nativa.

Finalmente, recuerda siempre que tienes que pensar en qué dispositivos son los
que más usa y prefiere tu usuario, y cómo es que prefiere que sea la interacción
con nuestro producto. Por ejemplo, muchos usuarios evitan descargar apps por
temas de memoria o porque no quieren descargar apps para operaciones que van a
realizar una sola vez como comprar un pasaje en una aerolínea de la que no soy
viajero frecuente o leer un blog. De hecho, hace un par de años hubo una
explosión de aplicaciones, todas las empresas querían tener sus aplicaciones,
pero esto terminó costándoles mucho dinero y terminaron siendo apps que las
personas no descargaban o no usaban. Por otro lado lado, hay productos que
terminan afectando a una base grande de usuarios y que terminan estando
disponibles en todas las plataformas como Spotify o Slack o Netflix, que
funcionan tan bien o igual de bien tanto en el navegador como en sus
aplicaciones nativas.

#### Mobile first / mobile only / mobile friendly

Últimamente se habla mucho de términos cómo estos. Pero a qué se refieren.

- Mobile first: son aplcaciones que están pensadas para hacerse primero en el
  móvil y que su foco principal es ese. Instagram o Whatsapp por ejemplo son
  aplicaciones que están o estuvieron pensadas en ser 100% en mobile, que
  también tienen versión web, pero siempre su aplicación de mayor relevancia
  será la mobile.

- Mobile only: Son aplicaciones que están pensadas a usarse únicamente en el
  móvil, de hecho nacieron móviles pero no han migrado de plataforma. En este
  caso piensa en Snapchat, Foursquare, Waze, Shazam y Uber. Plataformas que
  están pensadas para usar todas las capacidades de los móviles.

- Mobile friendly: si bien los dos primeros términos están ligados más a
  aplicaciones móviles, este término va más ligado a aplicaciones web. Websites
  / Aplicaciones que están pensadas para escritorio pero que gracias a las
  posibilidades del responsive design funcionan también, amigablemente, en los
  móviles.

#### La forma de interactuar

Por último, te diríamos que tengas en cuenta siempre la forma en la que el
usuario interactuará con el dispositivo. Será con un mouse, con un screenreader,
con el teclado o con el dedo. Dependiendo de esto, los diseños de las interfaces
serán distintos. Incluso ahora que hablamos cada vez más de interfaces de voz,
será algo que tendrás que tener en cuenta.

## Referencias

- [The mobile question](https://youtu.be/Xi4CfgQEYuc)