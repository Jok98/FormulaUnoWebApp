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
<link rel="stylesheet" href="stylenewkev.css">
<script src="https://kit.fontawesome.com/2c7fc28a2f.js"></script>
<script type="text/javascript" src="script.js"></script>
</head>
<body>

	<div>
		<nav class="navbar navbar-expand-lg">
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
							class="nav-link" aria-current="page" href="index.jsp">Home</a></li>
						<li class="nav-item" style="padding-right: 60px"><a
							class="nav-link" href="scuderie">Scuderie</a></li>
						<li class="nav-item" style="padding-right: 60px"><a
							class="nav-link" href="piloti">Piloti</a></li>
						<li class="nav-item" style="padding-right: 60px"><a
							class="nav-link active" href="circuiti.jsp">Circuiti</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</div>

	<div class="container-box">
		<div class="col">
			1 of 2

			<div class="row gpBorder" id="gpBorder">
				<h6>
					<img class="flag-small"
						src="https://static.sky.it/images/skysport/configurations/motori/flag/bhr-big.png">
					<span display="inline">GP Bahrein</span>
				</h6>
			</div>
			<div class="row gpBorder" id="gpBorder">
				<h6>
					<img class="flag-small"
						src="https://static.sky.it/images/skysport/configurations/motori/flag/sau-big.png">
					<span display="inline">GP Arabia Saudita</span>
				</h6>
			</div>
			<div class="row gpBorder" id="gpBorder">
				<h6>
					<img class="flag-small"
						src="https://static.sky.it/images/skysport/configurations/motori/flag/aus-big.png">
					<span display="inline">GP Australia</span>
				</h6>
			</div>
			<div class="row gpBorder" id="gpBorder">
				<h6>
					<img class="flag-small"
						src="https://static.sky.it/images/skysport/configurations/motori/flag/ita-big.png">
					<span display="inline">GP Emilia Romagna</span>
				</h6>
			</div>
			<div class="row gpBorder" id="gpBorder">
				<h6>
					<img class="flag-small"
						src="https://static.sky.it/images/skysport/configurations/motori/flag/usa-big.png">
					<span display="inline">GP Miami</span>
				</h6>
			</div>
			<div class="row gpBorder" id="gpBorder">
				<h6>
					<img class="flag-small"
						src="https://static.sky.it/images/skysport/configurations/motori/flag/esp-big.png">
					<span display="inline">GP Spagna</span>
				</h6>
			</div>
			<div class="row gpBorder" id="gpBorder">
				<h6>
					<img class="flag-small"
						src="https://static.sky.it/images/skysport/configurations/motori/flag/mco-big.png">
					<span display="inline">GP Monaco</span>
				</h6>
			</div>
			<div class="row gpBorder" id="gpBorder">
				<h6>
					<img class="flag-small"
						src="https://static.sky.it/images/skysport/configurations/motori/flag/aze-big.png">
					<span display="inline">GP Azerbaijan</span>
				</h6>
			</div>
			<div class="row gpBorder" id="gpBorder">
				<h6>
					<img class="flag-small"
						src="https://static.sky.it/images/skysport/configurations/motori/flag/can-big.png">
					<span display="inline">GP Canada</span>
				</h6>
			</div>
			<div class="row gpBorder" id="gpBorder">
				<h6>
					<img class="flag-small"
						src="https://static.sky.it/images/skysport/configurations/motori/flag/gbr-big.png">
					<span display="inline">GP Gran Bretagna</span>
				</h6>
			</div>
			<div class="row gpBorder" id="gpBorder">
				<h6>
					<img class="flag-small"
						src="https://static.sky.it/images/skysport/configurations/motori/flag/aut-big.png">
					<span display="inline">GP Austria</span>
				</h6>
			</div>



		</div>

		<div class="col">
			<img
				src="https://media.gettyimages.com/photos/drivers-steer-their-cars-during-the-formula-one-bahrain-grand-prix-at-picture-id1134118550?s=612x612" />

		</div>
		<div class="col">
			3 of 3
			<div class="row gpBorder" id="gpBorder">
				<h6>
					<img class="flag-small"
						src="https://static.sky.it/images/skysport/configurations/motori/flag/fra-big.png">
					<span display="inline">GP Francia</span>
				</h6>
			</div>
			<div class="row gpBorder" id="gpBorder">
				<h6>
					<img class="flag-small"
						src="https://static.sky.it/images/skysport/configurations/motori/flag/hun-big.png">
					<span display="inline">GP Ungheria</span>
				</h6>
			</div>
			<div class="row gpBorder" id="gpBorder">
				<h6>
					<img class="flag-small"
						src="https://static.sky.it/images/skysport/configurations/motori/flag/bel-big.png">
					<span display="inline">GP Belgio</span>
				</h6>
			</div>
			<div class="row gpBorder" id="gpBorder">
				<h6>
					<img class="flag-small"
						src="https://static.sky.it/images/skysport/configurations/motori/flag/nld-big.png">
					<span display="inline">GP Olanda</span>
				</h6>
			</div>
			<div class="row gpBorder" id="gpBorder">
				<h6>
					<img class="flag-small"
						src="https://static.sky.it/images/skysport/configurations/motori/flag/ita-big.png">
					<span display="inline">GP Italia</span>
				</h6>
			</div>
			<div class="row gpBorder" id="gpBorder">
				<h6>
					<img class="flag-small"
						src="https://static.sky.it/images/skysport/configurations/motori/flag/sgp-big.png">
					<span display="inline">GP Singapore</span>
				</h6>
			</div>
			<div class="row gpBorder" id="gpBorder">
				<h6>
					<img class="flag-small"
						src="https://static.sky.it/images/skysport/configurations/motori/flag/jpn-big.png">
					<span display="inline">GP Giappone</span>
				</h6>
			</div>
			<div class="row gpBorder" id="gpBorder">
				<h6>
					<img class="flag-small"
						src="https://static.sky.it/images/skysport/configurations/motori/flag/usa-big.png">
					<span display="inline">GP Stati Uniti</span>
				</h6>
			</div>
			<div class="row gpBorder" id="gpBorder">
				<h6>
					<img class="flag-small"
						src="https://static.sky.it/images/skysport/configurations/motori/flag/mex-big.png">
					<span display="inline">GP Messico</span>
				</h6>
			</div>
			<div class="row gpBorder" id="gpBorder">
				<h6>
					<img class="flag-small"
						src="https://static.sky.it/images/skysport/configurations/motori/flag/bra-big.png">
					<span display="inline">GP Brasile</span>
				</h6>
			</div>
			<div class="row gpBorder" id="gpBorder">
				<h6>
					<img class="flag-small"
						src="https://static.sky.it/images/skysport/configurations/motori/flag/are-big.png">
					<span display="inline">GP Abu Dhabi</span>
				</h6>
			</div>
		</div>


		<div class="container-box">
			<div class="col">1 of 2</div>
			<div class="col">2 of 2</div>
			<div class="col">3 of 2</div>
		</div>






		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"
			integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8"
			crossorigin="anonymous"></script>
</body>
</html>