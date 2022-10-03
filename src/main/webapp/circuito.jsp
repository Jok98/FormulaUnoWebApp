
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

	<div class="container-fluid">
	<!-- style="height: 610px; width: 1560px" -->
	
		<!-- <p id="titolo_circuito" style="padding-top: 75px; text-align: center;">CIRCUITI
			STAGIONE 2022</p> -->
		<div class="row">
		<!-- style="height: 420px" -->
		<h3	style="text-align: center; color: grey; border: 10px; border-color: white">${circuito.nomeCircuito}</h3>
			<div class="col-sx" style="width:10vw"> 
		</div>
		</div>
		</div>
		<div class="row" style = "margin-bottom: -20vh">
   			 <div class="col-2" style = "padding-left: 5%">
    			  <div class="row" id="gpBorder"
					style="border-style: solid; height: 145px; margin: 10px">LUNGHEZZA: ${circuito.lunghezza}</div>
					
					<div class="row" id="gpBorder"
					style="border-style: solid; height: 145px; margin: 10px">NUMERO
					GIRI: ${circuito.numeroGiri}</div>
					
					
   			</div>
   			 <div class="col-8">
   				  <img src="${circuito.fotoCircuito}" class="center" style = "display: block; margin-left: auto; margin-right: auto;
   				   height:60%; width: 80%">
   				   <p style = "text-align:center; color: white"><small>Miglior tempo del circuito: ${circuito.migliorTempo}</small></p>
  			  </div>
   			 <div class="col-2" style = "padding-right: 5%">
    			  <div class="row" id="gpBorder"
					style="border-style: solid; height: 145px; margin: 10px;">VINCITORE: ${circuito.vincitore}</div>
				<div class="row" id="gpBorder"
					style="border-style: solid; height: 145px; margin: 10px">POLE
					POSITION: ${circuito.polePosition }</div>
   			 </div>
		  </div>
		  <div class="row">
		   <div class="col-7">
		 	  <div class="col col-notizie" id="gpBorder"
					style="border-style: solid; height: 190px; margin: 10px">NOTIZIE</div>
		   </div>
		    <div class="col-5">
			     <div class="col col-info" id="gpBorder"
					style="border-style: solid; height: 190px; margin: 10px">
					<ul>
					<li>Nazione: ${circuito.nazione}</li>
					<li>Città: ${circuito.citta}</li>
					<li>Indirizzo: ${circuito.indirizzo}</li>
					</ul>
					</div>
		   </div>
		  </div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8"
		crossorigin="anonymous"></script>
</body>
</html>