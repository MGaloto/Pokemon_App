


<p align="center">
<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/9/98/International_Pok%C3%A9mon_logo.svg/2560px-International_Pok%C3%A9mon_logo.svg.png" alt="react" width="330" height="150" />
</p>

# Pokemon Shiny App


Proyecto en Curso de un aplicacion Shiny utilizando datos de todos los Pokemons. 

Se busca analizar las cualidades de cada uno de ellos como tambien la diferencia entre los tipos de pokemon. (Rock, Fire, Grass..) mediante visualizaciones hechas en {shiny}.



<p>
<a href="https://pkgs.rstudio.com/flexdashboard/" rel="nofollow"><img src="https://raw.githubusercontent.com/rstudio/hex-stickers/master/PNG/flexdashboard.png" align="right" width="150" style="max-width: 100%;"></a>
<a href="https://shiny.rstudio.com/" rel="nofollow"><img src="https://raw.githubusercontent.com/rstudio/hex-stickers/master/PNG/shiny.png" align="right" width="150" style="max-width: 100%;"></a>
</p>



# Incluye

<ui>
<li>
Graficos Dinamicos y Estaticos.
</li>
<li>
Interactividad con Shiny.
</li>
<li>
Estadistica Descriptiva.
</li>
<li>
Regresion Lineal.
</li>
</ui>




# Paquetes de R

<ui>
<li>
{tidyverse}
</li>
<li>
{highcharter}
</li>
<li>
{Shiny}
</li>
<li>
{flexdashboard}
</li>
</ui>



# Estructura del dashboard

El dashboard incluye la flexibilidad y estructura de un Flexdashboard con la interactividad de Shiny.

```r
---
title: 'Pokemon Analytics'
output: 
  flexdashboard::flex_dashboard:
    logo: pikachu.jpg
    orientation: columns
    css: www/styles.css
    navbar:
       - { title: "Kaggle", href: "https://www.kaggle.com/datasets/rounakbanik/pokemon", align: right}
runtime: shiny
---
```

# Gif

<p align="center">
  <img 
    width="650"
    height="450"
    src="Img/pkm.gif"
  >
</p>



