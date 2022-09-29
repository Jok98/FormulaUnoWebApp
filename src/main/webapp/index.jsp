<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- scuderie richiamo a servlet per andare a pagina scuderie -->
<!-- piloti richiamo a servlet per andare a pagina piloti -->
<!-- circuiti richiamo a servlet per andare a pagina circuiti -->
<!doctype html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>f1</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
	crossorigin="anonymous">
<link rel="stylesheet" href="style.css">
<script src="https://kit.fontawesome.com/2c7fc28a2f.js"></script>
<script type="text/javascript" src="script.js"></script>
</head>
<body>
	<div class="container-fluid">
		<nav class="navbar navbar-expand-lg fixed-top">
			<a class="navbar-brand" href="#"><img
				src="https://i.imgur.com/E0yUss8.png" width="95px" height="25px"></a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-controls="navbarNav" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav">
					<li class="nav-item" style="padding-right: 30px"><a
						class="nav-link active" aria-current="page" href="#">Home</a></li>
					<li class="nav-item" style="padding-right: 60px"><a
						class="nav-link" href="scuderie">Scuderie</a></li>
					<li class="nav-item" style="padding-right: 60px"><a
						class="nav-link" href="piloti">Piloti</a></li>
					<li class="nav-item" style="padding-right: 60px"><a
						class="nav-link " href="circuiti">Circuiti</a></li>
				</ul>
			</div>
		</nav>
	</div>

	<main class="container">
		<aside class="container__item--sidebar">
			<div id="container">
				<div id="galleryView">
					<div id="galleryContainer">
						<div id="leftView"></div>
						<button id="navLeft" class="navBtns">
							<i class="fas fa-arrow-left fa-3x"></i>
						</button>
						<a id="linkTag">
							<div id="mainView"></div>
						</a>
						<div id="rightView"></div>
						<button id="navRight" class="navBtns">
							<i class="fas fa-arrow-right fa-3x"></i>
						</button>
					</div>
				</div>
				<div id="tilesView">
					<div id="tilesContainer"></div>
				</div>
			</div>


		</aside>
		<div class="container__item--content">
			<div class="d-grid gap-4 col-10 mx-auto" style="">
				<h2
					style="color: #EF0000; text-align: left; font-weight: bold; font-style: italic; font-size: 50px;">
					I cinque migliori piloti<br> della stagione 2022
				</h2>

				<h4 style="color: grey; padding-bottom: 50px;">
					--------------------------------------------------<br>
					--------------------------------------------------
				</h4>

			</div>
		</div>
	</main>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8"
		crossorigin="anonymous"></script>
</body>
</html>
<!-- 'search' e' il nome del servlet per cercare pilota tramite nome+cognome-->
<!-- method="get" tipo servlet, name="search" nome variabile da mandare dal form-->
<!-- <!DOCTYPE html> -->
<!-- <html> -->
<!-- <head> -->
<!-- <meta charset="ISO-8859-1"> -->
<!-- <title>F1 Home</title> -->
<!-- <meta name="viewport" content="width=device-width, initial-scale=1"> -->
<!-- <link -->
<!-- 	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" -->
<!-- 	rel="stylesheet" -->
<!-- 	integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" -->
<!-- 	crossorigin="anonymous"> -->
<!-- </head> -->
<!-- <body> -->
<!-- 	<a href="scuderie">scuderie</a> -->
<!-- 	<a href="piloti">piloti</a> -->
<!-- 	<a href="circuiti">circuiti</a> -->
<%-- 	<form action="search" method="get"> --%>
<!-- 		<select name="ricerca" id="ricerca"> -->
<!-- 			<option value="piloti">Piloti</option> -->
<!-- 			<option value="circuiti">Circuiti</option> -->
<!-- 			<option value="scuderie">Scuderie</option> -->
<!-- 		</select>  -->
<!-- 			<input type="text" name="search"> -->
<!-- 			<button type="submit">Search</button> -->
<%-- 	</form> --%>
<!-- 	<script -->
<!-- 		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" -->
<!-- 		integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" -->
<!-- 		crossorigin="anonymous"></script> -->
<!-- </body> -->
<!-- </html> -->