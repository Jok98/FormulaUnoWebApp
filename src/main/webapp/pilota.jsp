<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>INFO PILOTA</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
	crossorigin="anonymous">
<link rel="stylesheet" href="style.css">
<style>
.center-col {
	margin-bottom: 2em;
	margin-left: auto;
	margin-right: auto;
	max-width: fit-content;
	margin-top: var(- -bs-gutter-y);
}

.container-pilota {
	margin-left: 2em;
	margin-right: 2em;
	color: white;
	font-family: Roboto Condensed, sans-serif;
	font-style: italic;
}

.immagineScuderia {
	margin-left: auto;
	margin-right: auto;
	border-radius: 2em;
	padding-left: auto;
	padding-right: auto;
	display: block;
}

#divImmaginePilota {
	width: 100%;
	height: 100%;
	max-width: fit-content;
	margin-left: auto;
	margin-right: auto;
}

h4 {
	text-align: center;
}

.p-col-1 {
	text-align: center;
	font-size: 1.5em;
}

.colonna-1 {
	margin-left: 2vw;
	margin-right: 2vw;
}

h2 {
	text-align: center;
}
#divImmaginePilota {
    width: 100%;
    height: 100%;
    max-width: fit-content;
    margin-right: auto;
    margin-left: 0px;
}
</style>
<script src="https://kit.fontawesome.com/2c7fc28a2f.js"></script>
<script type="text/javascript" src="script.js"></script>
</head>
<body>
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
						class="nav-link active" href="piloti">Piloti</a></li>
					<li class="nav-item" style="padding-right: 60px"><a
						class="nav-link " href="circuiti">Circuiti</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="container-pilota">
		<div class="row">
			<div class="col-4">
				<div class="center-col" style="margin-top: 4vh">
					<h2 style="background-color: #E41015; transform: skew(-15deg); margin-bottom: 1em; text-align: center; padding-left: 10px">Scuderia</h2>
					<img class="immagineScuderia" src="${ pilota.scuderia.logo}">
				</div>
				<div class="center-col">
					<h2	style="background-color: white; color: #E41015; transform: skew(-15deg); font-weight: 600; padding-right: 0.5em; padding-left: 0.5em;">
						Titoli Mondiali : ${pilota.titoliMondiali}</h2>
				</div>
				<div style="word-break: break-all" class="center-col">
					<p style="padding-right: 6em; padding-left: 6em; font-size: 1em">Lorem
						ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo
						ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et
						magnis dis parturient montes, nascetur ridiculus mus. Donec quam
						felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla
						consequat massa quis enim. Donec pede justo, fringilla vel,
						aliquet nec, vulputate</p>
				</div>
			</div>
			<div class="col-4">
				<div id="divImmaginePilota" class="row">
					<img style="border-radius: 50px 50px 50px 50px; max-width: 135%; width: auto; height: 100%; " src="${pilota.fotoGrande }" /> 
<!-- 					<img style="border-radius: 50px 50px 50px 50px; max-width: 135%; width: auto; height: 100%; " src="https://i.imgur.com/NSl3035.jpg" /> -->
				</div>
			</div>
			<div class="col-4">
				<div class="center-col" style="margin-top: 19vh; margin-left: 100px">
					<h2
						style="padding-left: 1em; font-size: 3em; margin-bottom: 1px; padding-right: 1em; background-color: #E41015; transform: skew(-15deg) translateX(-25%); text-align: center; max-width: fit-content;">
						${pilota.nome }</h2>
					<h2
						style="padding-right: 1em; padding-left: 1em; font-weight: 600; font-size: 3em; color: #E41015; background-color: white; transform: skew(-15deg) translateX(-5%); text-align: center; max-width: fit-content;">
						${pilota.cognome }</h2>
				</div>
				<div class="center-col" style="margin-left: 205px; margin-top: 0vh">
					<h4 style="text-align: start">${pilota.dataNascita },
						${pilota.luogoNascita }</h4>
					<br>
					<h4 style="text-align: start">${pilota.nazionalita }</h4>
					<img style="width: 30%; height: 30%; padding-bottom: 0px" src="${pilota.bandiera }">
				</div>
				<div class="row" style="margin-left: 195px; margin-right: auto; width: fit-content; margin-top: 1vh">
					<a 	target="_blank" href="${pilota.profiloSocial }"><img style="width: 8%; height: 100%;padding-bottom: 10px;" src="https://i.imgur.com/A4G0agc.png"></a>
					<br>
					<a	target="_blank" href="${pilota.biografia }"><img style="width: 8%; height: 100%;" src="https://i.imgur.com/UuGfhzB.png"></a>
				</div>
			</div>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8"
		crossorigin="anonymous"></script>

</body>
</html>