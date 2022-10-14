


<p align="center">
<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/9/98/International_Pok%C3%A9mon_logo.svg/2560px-International_Pok%C3%A9mon_logo.svg.png" alt="react" width="330" height="150" />
</p>

# Pokemon Shiny App


<p>
<a href="https://pkgs.rstudio.com/flexdashboard/" rel="nofollow"><img src="https://raw.githubusercontent.com/rstudio/hex-stickers/master/PNG/flexdashboard.png" align="right" width="150" style="max-width: 100%;"></a>
<a href="https://shiny.rstudio.com/" rel="nofollow"><img src="https://raw.githubusercontent.com/rstudio/hex-stickers/master/PNG/shiny.png" align="right" width="150" style="max-width: 100%;"></a>
</p>



### Contenido:
<br>
</br>

- [**Introduccion**](https://github.com/MGaloto/Pokemon_App#introduccion)
- [**Motivacion**](https://github.com/MGaloto/Pokemon_App#motivacion)
- [**Librerias**](https://github.com/MGaloto/Pokemon_App#librerias)
- [**Flexdash**](https://github.com/MGaloto/Pokemon_App#flexdash)


## Introduccion
<br>
</br>

<div style="text-align: right" class="toc-box">
 <a href="#top">Volver al Inicio</a>
</div>


Proyecto sobre un aplicacion [flexdashboard](https://pkgs.rstudio.com/flexdashboard/) utilizando datos de todos los Pokemons. 

Se busca analizar las cualidades de cada uno de ellos como tambien la diferencia entre los tipos de pokemon. (Rock, Fire, Grass..) mediante visualizaciones hechas en {highcharter}, usando la estructura de {flexdashboard} y la dinamica de {shiny}.

Por ultimo, se va a utilizar [Docker](https://www.docker.com/) para crear una imagen en base a una existente sumandole las dependencias que necesita este proyecto y se va a compartir un tutorial de todos los pasos que se siguieron para crear la aplicacion y luego la imagen.

<p align="center">
  <img width="650" height="450" src="images/pkm.gif">
</p>

### Docker

Docker es una herramienta de CI/CD que permite la implementación de código sin problemas desde los entornos de desarrollo hasta los de producción. Al crear virtualización a nivel de sistema operativo, puede empaquetar una aplicación y sus dependencias en un contenedor virtual. Docker puede ejecutarse de forma nativa en sistemas Linux y con Docker Desktop (o equivalente) en macOS y Windows OS.

### Incluye

- Graficos Dinamicos y Estaticos. ✅ 
- Interactividad con Shiny. ✅ 
- Estadistica Descriptiva. ✅ 

## Motivacion
<br>
</br>

<div style="text-align: right" class="toc-box">
 <a href="#top">Volver al Inicio</a>
</div>
...

Todo comenzo cuando me encontre con el Data Set de [Pokemon](https://www.kaggle.com/datasets/rounakbanik/pokemon) y pense en desarrollar un dashboard en {flexdashboard} usando la estetica de los graficos que provee {highcharter}. Me encontre con que queria relacionar los distintos tipos de Pokemons y ver sus cualidades, para ello le agregue graficos dinamicos en donde se pueden seleccionar distintos tipos de Pokemons y sus habilidades para poder ver similitudes y diferencias entre ellos:

```r
---
title: 'Dashboard'
output: 
  flexdashboard::flex_dashboard:
    logo: www/logo.svg.png
    theme : spacelab
runtime: shiny_prerendered
---
```

El uso de Shiny con flexdashboard convierte un informe R Markdown estático en un documento interactivo. 

Al agregar Shiny a un flexdashboard, se pueden crear tableros que permitan cambiar los parámetros subyacentes y ver los resultados de inmediato o que se actualicen de forma incremental a medida que cambian los datos subyacentes. 


## Librerias
<br>
</br>

<div style="text-align: right" class="toc-box">
 <a href="#top">Volver al Inicio</a>
</div>

La imagen contiene las librerias necesarias para ejecutar la App en un contenedor Docker y ademas poder probar distintas funcionalidades que tienen las librerias {shiny}, {flexdashboard} y {highcharter}. Tambien contiene librerias como {dplyr} y {tidyverse} para manipular la data.

Las siguientes librerias son las que se van a configurar para compilar las capas de la imagen desde el archivo Dockerfile:

``` json
{
  [
    {
        "package": "cpp11",
        "version":"0.4.2"
    },
    {
        "package": "flexdashboard",
        "version":"0.5.2"
    },
    {
        "package": "dplyr",
        "version":"1.0.9"
    },
    {
        "package": "highcharter",
        "version":"0.9.4"
    },
    {
        "package": "readr",
        "version":"2.1.2"
    },
    {
        "package": "lubridate",
        "version":"1.8.0"
    },
    {
        "package": "languageserver",
        "version":"0.3.13"
    },
    {
        "package": "httpgd",
        "version":"1.3.0"
    },
    {
        "package": "markdown",
        "version":"1.1"
    },
    {
        "package": "tidyverse",
        "version":"1.3.1"
    },
    {
        "package": "readxl",
        "version":"1.4.0"
    }
  ]
}
```



## Flexdash
<br>
</br>

<div style="text-align: right" class="toc-box">
 <a href="#top">Volver al Inicio</a>
</div>

El dashboard incluye la flexibilidad y estructura de un Flexdashboard con la interactividad de Shiny.




