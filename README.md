# Installing Tool :v:

> Leonardo Rivas

Estos scripts les van a ayudar a instalar su entorno de desarrollo en Angular y un manejador de versiones de Node, además de otras herramientas utiles.

## Cambiando la politica de ejecución

Powershell usa una politica de ejecución de Scripts como medida de seguridad. Pero para poder usar los scritps y otros que se necesiten después, como es el caso de scripts de Angular, vas a tener que cambiar esa politica.

Abre powershell como administrador y ejecuta el siguiente comando:

````powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
````

Ya puedes cerrar esa terminal.

## Instalando el entorno

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

Una vez instalado deberían ver las letras en rojo de Angular y ya pueden iniciar su proyecto normalmente.

## Extra  :tv:

La terminal de la que se habla durante la instalación es Windows Terminal, y es una Terminal que te permite extender tus capacidades en la consola.

![Windows Terminal sin personalizar](/images/image1.png "Windows Terminal sin personalizar")

Y si se personaliza se puede convertir en una herramienta productiva que es mucho mejor que una terminal normal de powershell

![Windows Terminal personalizada](/images/image2.png "Windows Terminal personalizada")
