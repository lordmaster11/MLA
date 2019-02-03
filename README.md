## Objetivos del Challenger de Mercado Libre
  Dada la Api de MercadoLibre (http://developers.mercadolibre.com/api-directory), desarrollar una aplicación que realice 2
  búsquedas:

1. Una búsqueda de todas las categorías disponibles para alguno de los sites de mercado libre (por ejemplo mercado libre argentina "MLA")
2. Elegir una de esas categorias y presentar los resultados obtenidos

 BONUS: hacer una interfaz en la que el usuario vea todas las categorías disponibles y elija la categoria que desea listar.

### Tecnologías que se usaran

1. Java
2. Srpring MVC
3. Para gestionar las dependencias se creo el proyecto en Maven
4. Servidor Tomcat 8.5


### Metodología

1.  Programación orientada a objetos
2.  Patrón de diseño MVC


### Integrante

   Di Costanzo Juan Marcelo


# Apache Server Setup

1.	descargar el server tomcat desde http://tomcat.apache.org/
2.	abrir eclipse 
3.	botón derecho del mouse sobre el proyecto 
4.	seleccionar propiedades
5.	seleccionar la opcion project facets
6.	click en runtime
7.	click new
8.	seleccionar version del server apache
9.	click next
10.	click en browse
11. seleccionar el home folder del tomcat server
12.	click apply
13.	click apply and close
14.	click en window
15.	show view
16.	select server
17.	botón derecho del mouse sobre el server
18.	click add and remove
19.	select proyecto en available 
20.	add 
21.	botón derecho del mouse en proyecto
22. run on serve.


## Configuración de ruta del server Toncat

1. Dentro del archivo server.xml
2. Borrar path="/MLAChallenger"
3. Colocar path="/"

![server-xml](https://user-images.githubusercontent.com/19752180/52183909-6eba1f00-27eb-11e9-82ff-68f916210dc7.png)


## Visualización de los templates

1. categories.jsp

![categories](https://user-images.githubusercontent.com/19752180/52184010-a7a6c380-27ec-11e9-9558-898e20a07d26.png)

2. category.jsp

![category](https://user-images.githubusercontent.com/19752180/52184014-ad9ca480-27ec-11e9-96b1-0315556e9df8.png)
