<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="../resources/css/style.css"/>
<link rel="stylesheet" type="text/css" href="../resources/css/bootstrap.css"/>
<link href="https://fonts.googleapis.com/css?family=Exo:800|Oswald:600" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
<script src="resources/js/bootstrap.js"></script>
<script src="resources/js/myjs.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Categories</title>
</head>

<body style="background: #ebebeb">
<nav class="navbar navbar-default" style="background-color: #FFF059">
  <a class="navbar-brand" href="https://www.mercadolibre.com.ar" target="_blank">
    <img src="https://http2.mlstatic.com/ui/navigation/4.1.4/mercadolibre/logo__small.png" alt="logo">
  </a>
  
  <ul class="navbar-nav">
    <li>Mercado Libre Argentina - Donde comprar y vender de todo</li>
  </ul>
  
  <div>
    <ul class="nav navbar-nav navbar-right">
		<li style="color: #FFF059">Volver</li>
    </ul>
  </div>
</nav>
<br>

<div class="container">
	<H2 class="text-center">Categorias de Mercado Libre Argentino</H2>
	<br>
	
  	<div class="list-group">
	<c:forEach var="category" items="${categories}">
		<a href="/category/${category.get('id')}" class="list-group-item list-group-item-action">${category.get("name")}</a>
	</c:forEach>		
  	</div>
</div>
	
</body>
</html>