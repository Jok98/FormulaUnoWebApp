
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
					<li class="nav-item" style="padding-right: 90px"><a
						class="nav-link" aria-current="page" href="index.jsp">Home</a></li>
					<li class="nav-item" style="padding-right: 90px"><a
						class="nav-link" href="scuderie">Scuderie</a></li>
					<li class="nav-item" style="padding-right: 90px"><a
						class="nav-link" href="piloti">Piloti</a></li>
					<li class="nav-item" style="padding-right: 90px"><a
						class="nav-link active" href="circuiti">Circuiti</a></li>
					<li class="nav-item" style="padding-right: 60px"><a
						class="nav-link" href="news.jsp">News</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="container-fluid">
	<!-- style="height: 610px; width: 1560px" -->
	
		<!-- <p id="titolo_circuito" style="padding-top: 75px; text-align: center;">CIRCUITI
			STAGIONE 2022</p> -->
		<div class="row">
		<div class="skewX transform" style="padding-left: 95px;padding-bottom: 10px">
		<div style="background-color: #E41015; width: 550px;">
			<p class="h2" style="margin-left: 0vw;font-family: 'Roboto Condensed', sans-serif;font-style: italic; margin-left: 1vw">
				<font color="white" >${circuito.nomeCircuito}</font>
			</p>
		</div>
		</div>
		
			<div class="col-sx" style="width:10vw"> 
		</div>
		</div>
		</div>
		<div class="row" style = "margin-bottom: -20vh">
   			 <div class="col-2" style = "font-family:Roboto Condensed, sans-serif;
    					font-style: italic; padding-left: 5%">
    			  <div class="row" id="gpBorder"style=" height: 145px; margin: 10px; padding-top: 50px">
					
					<div class="skewX transform" style="padding-left: 20px;">
						<div style="background-color: #E41015; width: 150px;">
							<p class="h4" style="font-family: 'Roboto Condensed', sans-serif;font-style: italic; margin-left: 1vw">
								<font color="white" >Lunghezza</font>
							</p>
						</div>
					</div>
					
					<br>
					<h4 style="color:white; text-align: left; text-transform: lowercase; padding-top: 0px"> ${circuito.lunghezza} metri </h4>
					</div>
					<div class="row" id="gpBorder" style=" height: 145px; margin: 10px; padding-top: 170px">
					
					<div class="skewX transform" style="padding-left: 20px;">
						<div style="background-color: #E41015; width: 150px;">
							<p class="h4" style="font-family: 'Roboto Condensed', sans-serif;font-style: italic; margin-left: 1vw">
								<font color="white" >Numero Giri</font>
							</p>
						</div>
					</div>
					
					<br>
					<h4 style="color:white; text-align: left; padding-top: 10px">${circuito.numeroGiri}</h4>				
					</div>
   			</div>
   			
   			 <div class="col-8">
   				  <img src="${circuito.fotoOrizzontale}" class="center" style = "background-color: transparent; display: block; margin-left: auto; margin-right: auto; height:500px; width: 1200px;">
   				  <p style = "text-align:center; color: white; font-family:Roboto Condensed, sans-serif; font-style: italic; padding-top: 10px">Miglior tempo del circuito: ${circuito.migliorTempo}</p>
  			  </div>
  			  
  			  
   			 <div class="col-2" style = "padding-right: 5%; font-family:Roboto Condensed, sans-serif;
    					font-style: italic">
    			  <div class="row" id="gpBorder" style=" height: 145px; margin: 10px;  padding-top: 50px">
					<div class="skewX transform" style="padding-left: 20px;">
						<div style="background-color: #E41015; width: 150px;">
							<p class="h4" style="font-family: 'Roboto Condensed', sans-serif;font-style: italic; margin-left: 1vw">
								<font color="white" >Vincitore</font>
							</p>
						</div>
					</div>
					<br>
					<h4 style="color:white; text-align: Left;"> ${circuito.vincitore}</h4>
					</div>
				<div class="row" id="gpBorder" style="height: 145px; margin: 10px; padding-top: 170px">
					<div class="skewX transform" style="padding-left: 20px;">
						<div style="background-color: #E41015; width: 170px;">
							<p class="h4" style="font-family: 'Roboto Condensed', sans-serif;font-style: italic; margin-left: 1vw">
								<font color="white" >Pole Position</font>
							</p>
						</div>
					</div>
					<br>
					<h4 style="color:white; text-align: left;padding-top: 10px">${circuito.polePosition }</h4>
					</div>
   			 </div>
   			 
		  </div>
		  <div class="row" style="padding-top: 200px">
		   <div class="col-7">
		 	  <div class="col col-notizie" id="gpBorder" style="font-family:Roboto Condensed, sans-serif; font-style: italic; height: 190px; margin: 10px">
						<div class="skewX transform" style="padding-left: 20px;">
						<div style="background-color: #E41015; width: 150px;">
							<p class="h4" style="font-family: 'Roboto Condensed', sans-serif;font-style: italic; margin-left: 1vw">
								<font color="white" >Notizie</font>
							</p>
						</div>
					</div>
						<h5 style = "text-align:start; color: white; padding-right: 15px">${circuito.notizie } </h5>

				</div>
		   </div>
		    <div class="col-5">
			     <div class="col col-info" id="gpBorder" style=" height: 190px; margin: 10px; color: white; font-family:Roboto Condensed, sans-serif; font-style: italic; padding-top: 1vh ">
    					<div class="skewX transform" style="padding-left: 20px;">
						<div style="background-color: #E41015; width: 100px;">
							<p class="h4" style="font-family: 'Roboto Condensed', sans-serif;font-style: italic; margin-left: 1vw">
								<font color="white" >Info</font>
							</p>
						</div>
					</div>
					<ul>
					<li><h5>Nazione: ${circuito.nazione}</h5></li>
					<li><h5>Città: ${circuito.citta}</h5></li>
					<li><h5>Indirizzo: ${circuito.indirizzo}</h5></li>
					<li><h5><a style="color:#E41015" href="tel:${circuito.contatti }">${circuito.contatti }</a></h5></li>
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