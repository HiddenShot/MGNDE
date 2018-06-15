# MG New Division Edition

MG New Division Edition is an open source pentesting tool to generate payloads to perform HID attacks on Windows systems, MG allows you to perform from small jokes, disable a firewall to generate a backdoor.

Currently MG New Division Edition is in development, so we consider this version an beta and is an update with improvements to the MG Community Edition tool.
--------------------

## Updates

In this version you can generate payloads for keyboards in English and Latin American Spanish.

Add a new payload to disable the firewall on windows 10 and 8.1 systems.

Expects the development of more payloads.

It is now possible to load payloads directly from the tool to avoid opening the Arduino IDE. To make that feature possible we implemented Platformio ( https://platformio.org/). It is possible to upload payloads directly to the Digispark, Arduino (with ATmega 32u4 microcontroller), and the board developed by our team; Kb04rd. For licensing reasons it is not possible to load the payloads automatically for the Rubber Ducky, so it is necessary that the user manually generate the payloads with the tool developed by Hak5 for this platform.
The Platformio library manager is used to install the Keyboard.h library for Arduino and Kb04rd, and Digikeyboard.h for Digispark.

**This is the beta version of MG New Division Edition.**
--------------------

## About possible errors within MG New Division Edition

As it integrates a platform other than MG it is not possible to know all the errors that can happen with Platformio.

Compatible Arduinos must have an ATmega32u4 microcontroller and it is necessary to mention that this type of microcontroller has a problem that sometimes makes it impossible to upload programs. Here are a couple of forums where they talk about that topic:
https://forum.arduino.cc/index.php?topic=331508.0
https://www.avrfreaks.net/forum/programmer-not-responding-avrdudebutterfly
http://www.nerdkits.com/forum/thread/186/

There is no reliable solution to this problem and the following are the possible steps to solve it:
+ Open the Arduino IDE.
+ Connect the Arduino to the problem.
+ Select the corresponding board and port.
+ Upload a blank program or any other program
+ Immediately when charging starts, press the "reset" button on the board, if your board does not have a reset button, you must make a connection with a cable between the "Reset" and "GND" pins.
+ If all goes well, you will be able to reload the programs on your board again.
+ If the problem persists, try this procedure several times and connect and disconnect the board from your computer.

To avoid using the Arduino IDE we implemented an option called "Clean Arduino" and "Clean DigiSpark", this allows us to load a blank program to clean the boards and avoid errors when saturating the processor.
We recommend that you connect your board and then select the appropriate option to clean it.

The file mg.py must be run with root permissions:
```shell
sudo ./mg.py
```

If you detect any errors please contact the team through social networks and we will try to give you a solution as soon as possible.
--------------------

## Supported Platforms

MG Community Edition has payloads for:
+ Rubber Ducky (by Hak5)
+ Arduino
+ Digispark
+ Kb04rd (board developed by HiddenShot)

More platforms and payloads for different operating systems (Windows 10, Linux, MacOS) will be included in future versions, wait for them!
--------------------

## About Reverse Shell and Download File Payloads

The Reverse Shell payload requires that you configure the parameters "YOUR_IP", "YOUR_PORT" with their corresponding information, these parameters are found on line 170 of the core/rubber_ducky_payloads.txt file (for Rubber Ducky) and on line 426 of the core/arduino_payloads_en.txt file (for Arduino with English keyboard).

The payload Download File allows you to download a file from powershell and run it (as expected the file should be.exe). It is necessary to configure two parameters previously, "YOUR_SERVER/FILE" and "FILE.exe", in the case of Rubber Ducky you can find them on line 190 of the core/rubber_ducky_payloads.txt file, and for Arduino with English keyboard on line 611 of the core/arduino_payloads_en.txt file.

--------------------

## Acknowledgements:

DeepL https://www.deepl.com/
HiddenShot Team
Platformio
Arduino

--------------------

## Installation

```shell
git clone https://github.com/HiddenShot/MGNDE.git
```
```shell
cd MGNDE
```
```shell
sudo chmod +x install.sh
```
```shell
./install.sh
```
```shell
sudo ./mg.py
```

--------------------

## References

https://www.arduino.cc/
https://platformio.org/
https://github.com/hak5darren/USB-Rubber-Ducky
http://www.microchip.com/

--------------------

## MG New Division Edition

MG New Division Edition es una herramienta de pentesting de código abierto para generar payloads para realizar ataques HID en sistemas Windows, MG le permite realizar desde pequeñas bromas hasta desactivar un firewall para generar una puerta trasera.

Actualmente MG New Division Edition está en desarrollo, por lo que consideramos que esta versión es una versión beta y es una actualización con mejoras a la herramienta MG Community Edition.
--------------------

## Actualizaciones

En esta versión se pueden generar payloads para teclados en inglés y español latinoamericano.

Se agrego un nuevo payload para deshabilitar el firewall en sistemas Windows 10 y 8.1.

Espera el desarrollo de más payloads.

Ahora es posible cargar payloads directamente desde la herramienta para evitar abrir el IDE de Arduino. Para hacer posible esta característica hemos implementado Platformio ( https://platformio.org/). Es posible cargar payloads directamente al Digispark, Arduino (con microcontrolador ATmega 32u4), y la placa desarrollada por nuestro equipo; Kb04rd. Por razones de licencia no es posible cargar payloads automáticamente para el Rubber Ducky, por lo que es necesario que el usuario genere manualmente los genere con la herramienta desarrollada por Hak5 para esta plataforma.
El gestor de librerías de Platformio se utiliza para instalar la librería Keyboard.h para Arduino y Kb04rd, y Digikeyboard.h para Digispark.

Esta es la versión beta de MG New Division Edition.
--------------------

## Acerca de posibles errores en MG New Division Edition

Al integrar una plataforma distinta a MG no es posible conocer todos los errores que pueden ocurrir con Platformio.

Los Arduinos compatibles deben tener un microcontrolador ATmega32u4 y es necesario mencionar que este tipo de microcontrolador tiene un problema que a veces hace imposible cargar programas. Aquí hay un par de foros donde se habla de ese tema:
https://forum.arduino.cc/index.php?topic=331508.0
https://www.avrfreaks.net/forum/programmer-not-responding-avrdudebutterfly
http://www.nerdkits.com/forum/thread/186/

No hay una solución confiable para este problema y los siguientes son los pasos posibles para resolverlo:
+ Abra el IDE de Arduino.
+ Conecta el Arduino con el problema.
+ Seleccione la tarjeta y el puerto correspondientes.
+ Cargar un programa en blanco o cualquier otro programa
+ Inmediatamente después del inicio de la carga, pulse el botón "reset" de la placa, si su placa no dispone de un botón de reset, deberá conectarse con un cable entre las clavijas "Reset" y "GND".
+ Si todo va bien, podrás recargar de nuevo los programas a tu placa.
+ Si el problema persiste, pruebe este procedimiento varias veces y conecte y desconecte la tarjeta del ordenador.

Para evitar usar el Arduino IDE implementamos una opción llamada "Clean Arduino" y "Clean DigiSpark", esto permite cargar un programa en blanco para limpiar las placas y evitar que existan errores al saturar el procesador.
Recomendamos que conecte su placa y luego seleccione la opcion correspondiente para limpiarla.

Se debe ejecutar con permisos root el archivo mg.py:
```shell
sudo ./mg.py
```

Si detecta algún error, póngase en contacto con el equipo a través de las redes sociales e intentaremos darle una solución lo antes posible.
--------------------

## Plataformas compatibles

MG Community Edition tiene payloads para:
+ Rubber Ducky (por Hak5)
+ Arduino
+ Digispark
+ Kb04rd (placa desarrollada por HiddenShot)

Más plataformas y payloads para diferentes sistemas operativos (Windows 10, Linux, MacOS) serán incluidas en futuras versiones, ¡espéralas!
--------------------

## Sobre los Payloads "Reverse Shell" y "Download File"

El payload Reverse Shell requiere que previamente se configure los parametros "YOUR_IP", "YOUR_PORT" con su información correspondiente, estos parametros los encuentra en la linea 170 del archivo core/rubber_ducky_payloads.txt (para el caso de Rubber Ducky) y en la linea 426 del archivo core/arduino_payloads_en.txt (para el caso de Arduino con teclado en ingles).

El payload Download File permite descargar un archivo desde powershell y ejecutarlo (como es de esperarse el archivo deberá de ser .exe). Es necesario configurar dos parametros previamente, "YOUR_SERVER/FILE" y "FILE.exe", en el caso de Rubber Ducky los encuentra en la linea 190 del archivo core/rubber_ducky_payloads.txt, y para Arduino con teclado en ingles en la linea 611 del archivo core/arduino_payloads_en.txt

--------------------

## Instalación

```shell
git clone https://github.com/HiddenShot/MGNDE.git
```
```shell
cd MGNDE
```
```shell
sudo chmod +x install.sh
```
```shell
./install.sh
```
```shell
sudo ./mg.py
```
--------------------

## Agradecimientos:

DeepL
Equipo de HiddenShot
Plataformio
Arduino

--------------------

## Referencias

https://www.arduino.cc/
https://platformio.org/
https://github.com/hak5darren/USB-Rubber-Ducky
http://www.microchip.com/
--------------------

Traducción realizada con el traductor www.DeepL.com/Translator

--------------------
Follow us on twitter for new updates of MG and other tools: @H11d3nSh0t
Thanks :)
