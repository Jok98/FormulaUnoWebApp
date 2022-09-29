
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- setAttribute("circuiti", circuiti) usando jstl ottente la lista di circuiti
	${circuiti} -->
<!-- Il richiamo al servlet FindCircuitiByNome e' 'circuito' tipo get-->
<!-- Il nome della variabile da mandare con il form e' 'nomeCircuito' ed e' il nomCircuito -->
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Info Circuito</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
	crossorigin="anonymous">
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="stylekev.css">
<script src="https://kit.fontawesome.com/2c7fc28a2f.js"></script>
<script type="text/javascript" src="script.js"></script>
</head>
<body>

	<nav class="navbar navbar-expand-lg fixed-top">
		<div class="container-fluid">
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
						class="nav-link " href="circuiti.jsp">Circuiti</a></li>
				</ul>
			</div>
		</div>
	</nav>


	<div class="container" style="height: 610px; width: 1560px">
		<p id="titolo_circuito" style="padding-top: 75px; text-align: center;">CIRCUITI
			STAGIONE 2022</p>
		<div class="row" style="height: 420px">
			<div class="col-2" style="padding-left: 0px; height: 420px">

				<div class="row;">
					<h1 style="text-align: centre">_______________</h1>
				</div>


				<div class="circuito row" id="gpBorder">
					<h6><img
							src="https://static.sky.it/images/skysport/configurations/motori/flag/bhr-big.png"
							alt="Bahrein" height="13px" width="20px" display="inline"> <span
							display="inline">GP Bahrein</span>
					</h6>
				</div>
				<div class="circuito row" id="gpBorder">
					<h6><img
							src="https://static.sky.it/images/skysport/configurations/motori/flag/sau-big.png"
							alt="Arabia Saudita" height="13px" width="20px" display="inline"> <span
							display="inline">GP Arabia Saudita</span>
					</h6>
				</div>
				<div class="circuito row" id="gpBorder">
					<h6><img
							src="https://static.sky.it/images/skysport/configurations/motori/flag/aus-big.png"
							alt="Australia" height="13px" width="20px" display="inline"> <span
							display="inline">GP Australia</span>
					</h6>
				</div>
				<div class="circuito row" id="gpBorder">
					<h6><img
							src="https://static.sky.it/images/skysport/configurations/motori/flag/ita-big.png"
							alt="Italia" height="13px" width="20px" display="inline"> <span
							display="inline">GP Emilia Romagna</span>
					</h6>
				</div>
				<div class="circuito row" id="gpBorder">
					<h6><img
							src="https://static.sky.it/images/skysport/configurations/motori/flag/usa-big.png"
							alt="Stati Uniti" height="13px" width="20px" display="inline"> <span
							display="inline">GP Miami</span>
					</h6>
				</div>
				<div class="circuito row" id="gpBorder">
					<h6><img
							src="https://static.sky.it/images/skysport/configurations/motori/flag/esp-big.png"
							alt="Spagna" height="13px" width="20px" display="inline"> <span
							display="inline">GP Spagna</span>
					</h6>
				</div>
				<div class="circuito row" id="gpBorder">
					<h6><img
							src="https://static.sky.it/images/skysport/configurations/motori/flag/mco-big.png"
							alt="Monaco" height="13px" width="20px" display="inline"> <span
							display="inline">GP Monaco</span>
					</h6>
				</div>
				<div class="circuito row" id="gpBorder">
					<h6><img
							src="https://static.sky.it/images/skysport/configurations/motori/flag/aze-big.png"
							alt="Azerbaijan" height="13px" width="20px" display="inline"> <span
							display="inline">GP Azerbaijan</span>
					</h6>
				</div>
				<div class="circuito row" id="gpBorder">
					<h6><img
							src="https://static.sky.it/images/skysport/configurations/motori/flag/can-big.png"
							alt="Canada" height="13px" width="20px" display="inline"> <span
							display="inline">GP Canada</span>
					</h6>
				</div>
				<div class="circuito row" id="gpBorder">
					<h6><img
							src="https://static.sky.it/images/skysport/configurations/motori/flag/gbr-big.png"
							alt="Gran Bretagna" height="13px" width="20px" display="inline"> <span
							display="inline">GP Gran Bretagna</span>
					</h6>
				</div>
				<div class="circuito row" id="gpBorder">
					<h6><img
							src="https://static.sky.it/images/skysport/configurations/motori/flag/aut-big.png"
							alt="Austria" height="13px" width="20px" display="inline"> <span
							display="inline">GP Austria</span>
					</h6>
				</div>
			</div>
			<div class="col-8" style="height: 420px; width: 1000px">
				<div class="row">
					<h3 style="text-align: center; color: grey; border: 5px; border-color:white">GP
						di Monza</h3>
				</div>
				<img
					src="https://www.mmo.it/wp-content/uploads/2019/11/TESO-119-tagliato-1.jpg" />

			</div>
			<div class="col-2" style="padding-left: 35px; height: 420px">

				<div class="row">
					<h1 style="text-align: centre">_____________</h1>
				</div>

				<div class="circuito row" id="gpBorder">
					<h6><img
							src="https://static.sky.it/images/skysport/configurations/motori/flag/fra-big.png"
							alt="France" height="13px" width="20px" display="inline"> <span
							display="inline">GP Francia</span>
					</h6>
				</div>
				<div class="circuito row" id="gpBorder">
					<h6><img
							src="https://static.sky.it/images/skysport/configurations/motori/flag/hun-big.png"
							alt="Ungheria" height="13px" width="20px" display="inline"> <span
							display="inline">GP Ungheria</span>
					</h6>
				</div>
				<div class="circuito row" id="gpBorder">
					<h6><img
							src="https://static.sky.it/images/skysport/configurations/motori/flag/bel-big.png"
							alt="Belgio" height="13px" width="20px" display="inline"> <span
							display="inline">GP Belgio</span>
					</h6>
				</div>
				<div class="circuito row" id="gpBorder">
					<h6><img
							src="https://static.sky.it/images/skysport/configurations/motori/flag/nld-big.png"
							alt="Olanda" height="13px" width="20px" display="inline"> <span
							display="inline">GP Olanda</span>
					</h6>
				</div>
				<div class="circuito row" id="gpBorder">
					<h6><img
							src="https://static.sky.it/images/skysport/configurations/motori/flag/ita-big.png"
							alt="Italia" height="13px" width="20px" display="inline"> <span
							display="inline">GP Italia</span>
					</h6>
				</div>
				<div class="circuito row" id="gpBorder">
					<h6><img
							src="https://static.sky.it/images/skysport/configurations/motori/flag/sgp-big.png"
							alt="Singapore" height="13px" width="20px" display="inline"> <span
							display="inline">GP Singapore</span>
					</h6>
				</div>
				<div class="circuito row" id="gpBorder">
					<h6><img
							src="https://static.sky.it/images/skysport/configurations/motori/flag/jpn-big.png"
							alt="Giappone" height="13px" width="20px" display="inline"> <span
							display="inline">GP Giappone</span>
					</h6>
				</div>
				<div class="circuito row" id="gpBorder">
					<h6><img
							src="https://static.sky.it/images/skysport/configurations/motori/flag/usa-big.png"
							alt="Stati Uniti" height="13px" width="20px" display="inline"> <span
							display="inline">GP Stati Uniti</span>
					</h6>
				</div>
				<div class="circuito row" id="gpBorder">
					<h6><img
							src="https://static.sky.it/images/skysport/configurations/motori/flag/mex-big.png"
							alt="Messico" height="13px" width="20px" display="inline"> <span
							display="inline">GP Messico</span>
					</h6>
				</div>
				<div class="circuito row" id="gpBorder">
					<h6><img
							src="https://static.sky.it/images/skysport/configurations/motori/flag/bra-big.png"
							alt="Brasile" height="13px" width="20px" display="inline"> <span
							display="inline">GP Brasile</span>
					</h6>
				</div>
				<div class="circuito row" id="gpBorder">
					<h6><img
							src="https://static.sky.it/images/skysport/configurations/motori/flag/are-big.png"
							alt="Abu Dhabi" height="13px" width="20px" display="inline"> <span
							display="inline">GP Abu Dhabi</span>
					</h6>
				</div>
			</div>
		</div>
	</div>

	<div class="container"
		style="padding-left: 115px; padding-right: 20px; height: 300px">
		<div class="row">
			<div class="col-2">
				<div class="row" id="gpBorder"
					style="border-style: solid; height: 145px; margin: 10px">LUNGHEZZA</div>
				<div class="row" id="gpBorder"
					style="border-style: solid; height: 145px; margin: 10px">NUMERO
					GIRI</div>
			</div>
			<div class="col-3" id="gpBorder"
				style="border-style: solid; height: 300px; margin: 10px">NOTIZIE</div>
			<div class="col-2" id="gpBorder"
				style="border-style: solid; height: 300px; margin: 10px">INFO
				GEOGRAFICHE</div>
			<div class="col-2" id="gpBorder"
				style="border-style: solid; height: 300px; margin: 10px">INDIRIZZO</div>
			<div class="col-2">
				<div class="row" id="gpBorder"
					style="border-style: solid; height: 95px; margin: 10px">VINCITORE</div>
				<div class="row" id="gpBorder"
					style="border-style: solid; height: 190px; margin: 10px">POLE
					POSITION</div>
			</div>
		</div>
	</div>


	<%-- <f:forEach items="${circuiti}" var="circuito">
		<f:out value="${circuito}" />
		<form action="circuito" method="get">
			<input type="hidden" name="nomeCircuito"
				value="${circuito.nomeCircuito}">
			<button type="submit">Info</button>
		</form>
	</f:forEach> --%>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8"
		crossorigin="anonymous"></script>
</body>
</html>