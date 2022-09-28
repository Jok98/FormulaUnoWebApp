<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- scuderie richiamo a servlet per andare a pagina scuderie -->
<!-- piloti richiamo a servlet per andare a pagina piloti -->
<!-- circuiti richiamo a servlet per andare a pagina circuiti -->

<!-- 'search' e' il nome del servlet per cercare pilota tramite nome+cognome-->
<!-- method="get" tipo servlet, name="search" nome variabile da mandare dal form-->
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>F1 Home</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
	crossorigin="anonymous">
</head>
<body>
	<a href="scuderie">scuderie</a>
	<a href="piloti">piloti</a>
	<a href="circuiti">circuiti</a>
	<form action="search" method="get">
		<select name="ricerca" id="ricerca">
			<option value="piloti">Piloti</option>
			<option value="circuiti">Circuiti</option>
			<option value="scuderie">Scuderie</option>
		</select> 
			<input type="text" name="search">
			<button type="submit">Search</button>
	</form>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8"
		crossorigin="anonymous"></script>
</body>
</html>