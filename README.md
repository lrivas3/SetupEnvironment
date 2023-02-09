# Installing Tool :v:

> Leonardo Rivas

Estos scripts les van a ayudar a instalar su entorno de desarrollo en Angular y un manejador de versiones de Node, además de otras herramientas utiles.

## Requerimientos de sistema :shipit:

### Winget :cyclone:

El script depende principalmente de "Winget", esta es la interfaz para el sistema manejador de paquetes de Windows.

- Si tienes windows 11: you're good
- Si tienes windows 10: you're good, en la mayoría de los casos. Pero si no es una versión reciente,[  puedes instalar winget facilmente desde aquí](https://apps.microsoft.com/store/detail/app-installer/9NBLGGH4NNS1?hl=es-sv&gl=sv&rtc=1) como cualquier otro programa.

### Cambiar la política de ejecución :wrench:

Powershell usa una política de ejecución de Scripts como medida de seguridad. Pero para poder usar los scritps y otros que se necesiten después, como es el caso de scripts de Angular, vas a tener que cambiar esa política.

Abre powershell como administrador y ejecuta el siguiente comando:

````powershell
Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope LocalMachine
````

Ya puedes cerrar esa terminal.

## Instalando el entorno

### Descargar

En caso de que no tengas descargados los scripts, puedes clonar este repositorio usando Git.

`````
git clone https://github.com/lrivas3/SetupEnvironment.git
`````

Si no sabes usar Git (quierete 3 pesos) puedes descargarlo desde aquí en Github.

En la sección de Releases:

![Seccion de releases](/images/image3.png "First ever release")

Descargas la primera opción y ya puedes seguir con el setup

![Releases](/images/image4.png "First ever release")


### Setup 

En la misma carpeta donde está este README, vas a encontrar un archivo que se llama "install.ps1", es un script en powershell, necesitas correrlo desde la terminal de la siguiente manera:

1. **Abre una terminal y navega hasta esta carpeta.**

Ejemplo:

si me encuentro en el home de mi usuario y esta carpeta está en descargas:

````powershell
cd Downloads\SetEnvironment
````

2. **Estando en esa carpeta, corre el script.**

````powershell
.\install.ps1
````

El Script te va a preguntar si querés instalar ciertas herramientas, para instalar escribe la letra "Y" en mayuscula, mi recomendación es que instales todas, porque son utiles. No aparece para instalar Visual Studio Code porque no creo que no lo tengan.

El Script les va a instalar:

- las cosas que ustedes hayan elegido (Powershell 7, Windows Terminal, Git)
- NVM (Node Version Manager), que les va a ayudar a cambiar de version de node cuando lo necesiten. Les va a instalar 3 versiones de node. y va a configurar uno como la versión actual
- Angular, después de haber instalado Node y npm

- Además va a crear un directorio de trabajo en el directorio $HOME\Dev\ANP0 

Una vez instalado deberían ver las letras en rojo de Angular y ya pueden iniciar su proyecto normalmente.

## Extra  :tv:

La terminal de la que se habla durante la instalación es Windows Terminal, y es una Terminal que te permite extender tus capacidades en la consola.

![Windows Terminal sin personalizar](/images/image1.png "Windows Terminal sin personalizar")

Y si se personaliza se puede convertir en una herramienta productiva que es mucho mejor que una terminal normal de powershell

![Windows Terminal personalizada](/images/image2.png "Windows Terminal personalizada")
