<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="../resources/css/style.css"/>
<link href="https://fonts.googleapis.com/css?family=Exo:800|Oswald:600" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Category</title>
</head>

<body>
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
		<li> <a style="color: black" href="/">Volver</a>
    </ul>
  </div>
</nav>
<br>
	
<div class="container">
	<H2 class="text-center">Lista de productos</H2>
	<br>
	
	<div class="table-responsive">
  	<table class="table table-hover table-bordered table table-striped table-dark">
    <c:forEach var="producto" items="${category}">
        <tr>
            <td align="center">		
            	<a href=${producto.get("permalink")} target="_blank" class="list-group-item list-group-item-action">
            	    <img src=${producto.get("thumbnail")}>	
            	</a>
			</td>
            <td>${producto.get("title")}</td>
            <td style="text-align: right"><B>$ ${producto.get("price")}</B></td>
        </tr>
    </c:forEach>
	</table>
	</div>
</div>
</body>
</html>