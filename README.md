# Biblia Reina Valera 1909 (normalizada)
> Base de datos en formato SQL (para utilizar en páginas web, aplicaciones móviles...)

## Introducción

La Reina Valera de 1909 es una versión más que notable. Tiene el honor de ser la versión que se encuentra en el punto medio entre las versiones antiguas y modernas, por un lado manteniendo la esencia del excelente trabajo de Casiodoro de Reina y por otro conteniendo un lenguaje entendible por el público moderno.

A pesar de que el lenguaje pueda resultar algo obsoleto a simple vista, se trata de una obra de gran belleza, así como una herramienta de gran utilidad para los que buscan comparar y entender los textos originales, y por supuesto para los estudiosos. Además, el hecho de que el texto sea de dominio público ofrece múltiples posibilidades para su libre difusión.

## Normalización

La presente edición es el resultado de una revisión y edición del texto digital de dominio público disponible en la red, con los siguientes objetivos:

#### 1. Corrección de erratas
Las versiones digitales disponibles de esta versión de 1909, tanto en webs de lectura de la biblia como en descarga, contienen numerosos errores en el texto. Estos han sido corregidos.
```
hjo => hijo
espíirtu => espíritu
```

#### 2. Actualización de la acentuación
Las normas ortográficas han cambiado desde la edición original (principios del siglo XX), principalmente las reglas que afectan a la acentuación de las palabras. La actualización ha consistido en la supresión de las tildes en las palabras que han dejado de estar acentuadas ortográficamente. El resultado es un texto igual al original pero válido de acuerdo a la normativa actual.
```
á => a
dió => dio
```

El texto normalizado es **100% fiel al original**, sin haberse alterado palabras, letras o signos de puntuación.

## Instalación

El proyecto consiste en dos archivos en formato SQL, que contienen la estructura (tablas) y los datos (libros y versículos) de la Biblia Reina Valera de 1909. Basta con ejecutar las consultas SQL en una base de datos:
1. tables.sql
2. data.sql

Los archivos han sido exportados desde MySQL, por lo que se podría requerir un mínimo ajuste para ejecutar las consultas en otros gestores de bases de datos.
