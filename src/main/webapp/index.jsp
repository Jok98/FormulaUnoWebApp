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

</head>
<body>
	<nav class="navbar navbar-expand-lg fixed-top">
		<div class="container-fluid">
			<a class="navbar-brand" href="index.jsp"><img
				src="https://i.imgur.com/E0yUss8.png" width="120px" height="35px"></a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-controls="navbarNav" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav">
					<li class="nav-item" style="padding-right: 90px"><a
						class="nav-link active" aria-current="page" href="index.jsp">Home</a></li>
					<li class="nav-item" style="padding-right: 90px"><a
						class="nav-link" href="scuderie">Scuderie</a></li>
					<li class="nav-item" style="padding-right: 90px"><a
						class="nav-link" href="piloti">Piloti</a></li>
					<li class="nav-item" style="padding-right: 90px"><a
						class="nav-link " href="circuiti">Circuiti</a></li>
						<li class="nav-item" style="padding-right: 60px"><a
						class="nav-link" href="news.jsp">News</a></li>
					<li>
		<div class="wrapper" style = "padding-top: 8px; font-family: 'Roboto Condensed', sans-serif; font-style: italic; font-size: 22px">
    	  <div class="search-input">
      	  <form action="search" method="get">
      		  <select name="ricerca" id="ricerca" style = "background-color: transparent; color: white; height: 30px; border: 1px solid white; font-family: 'Roboto Condensed', sans-serif; font-style: italic; color:white; font-size: 20px">
				  <option value="piloti" style = "background-color: black">Piloti</option>
				  <option value="circuiti" style = "background-color: black">Circuiti</option>
				  <option value="scuderie" style = "background-color: black">Scuderie</option>
			  </select>
        <input name="search" id="searchText" type="text" placeholder="Type to search.."  style = "background-color: transparent; color: white; margin-left: 5px; margin-right: 20px; border: 1px solid white; height: 30px; font-family: 'Roboto Condensed', sans-serif; font-style: italic; color:white; font-size: 20px">
        <button type="submit" style = "background-color: #E41015; border: none; color: white; font-weight: 500; height: 35px; font-family: 'Roboto Condensed', sans-serif; font-style: italic; color:white; font-size: 20px">Submit</button>
        </form>
      </div>
    </div>
					</li>
				</ul>
			</div>
		</div>
	</nav>

	<main class="container" >
		<aside class="container__item--sidebar" >

			<div id="container">
				<div id="toggleContainer" style="display: none">
					<label>Carousel</label>
					<div id="toggle">
						<div id="outer3">
							<div id="slider3"></div>
						</div>
						<label>Tiles</label>
					</div>
				</div>
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
			<div class="d-grid gap-4 col-10 mx-auto" >
				<h2 style="color: #EF0000;font-family: 'Roboto Condensed', sans-serif; font-style: italic;  font-size: 50px; font-weight: 900; padding-top: 35px">
					I cinque migliori piloti 
					<br>
					della stagione 2022
				</h2>

				<h3 style="color: white; font-family: 'Roboto Condensed', sans-serif; font-style: italic;">
					A soli 6 GP dalla fine della stagione, 
					<br>
					andiamo a vedere chi sono stati i 5 
					<br>
					migliori piloti della stagione.
				</h3>

			</div>
		</div>
	</main>
	<script type="text/javascript" src="script.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8"
		crossorigin="anonymous"></script>
</body>
</html>
