<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Valore ricevuto da FindCircuitoByNome e' 'circuito' -->
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Circuiti</title>
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
						class="nav-link active" href="circuiti">Circuiti</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="container" style="">
		<p id="titolo_circuiti"
			style="padding-top: 70px; text-align: center; color: white; font-size: 50px; margin: 0px">CIRCUITI
			STAGIONE 2022</p>
		<div class="row"
			style="padding-left: 510px; padding-right: 0px; width: 1761px">
			<div class="col-5" style="border: 5px; text-align: center">
				<div id="blur" class="row" style="maring-top: 0px;">
					<h3>18-20 marzo GP Bahrain</h3>
				</div>
				<div id="blur" class="row">
					<h3>25-27 marzo GP Arabia Saudita</h3>
				</div>
				<div id="blur" class="row">
					<h3>8-10 aprile GP Australia</h3>
				</div>
				<div id="blur" class="row">
					<h3>22-24 aprile GP Emilia Romagna</h3>
				</div>
				<div id="blur" class="row">
					<h3>6-8 maggio GP Miami</h3>
				</div>
				<div id="blur" class="row">
					<h3>20-22 maggio GP Spagna</h3>
				</div>
				<div id="blur" class="row">
					<h3>27-29 maggio GP Monaco</h3>
				</div>
				<div id="blur" class="row">
					<h3>10-12 giugno GP Azerbaijan</h3>
				</div>
				<div id="blur" class="row">
					<h3>17-19 giugno GP Canada</h3>
				</div>
				<div id="blur" class="row">
					<h3>1-3 luglio GP Gran Bretagna</h3>
				</div>
				<div id="blur" class="row">
					<h3>8-10 luglio GP Austria</h3>
				</div>
			</div>
			<div class="col-5"
				style="border: 5px; text-align: center; content-align: center">
				<div id="blur" class="row" style="maring-top: 0px">
					<h3>22-24 luglio GP Francia</h3>
				</div>
				<div id="blur" class="row">
					<h3>29-31 luglio GP Ungheria</h3>
				</div>
				<div id="blur" class="row">
					<h3>26-28 agosto GP Belgio</h3>
				</div>
				<div id="blur" class="row">
					<h3>2-4 settembre GP Olanda</h3>
				</div>
				<div id="blur" class="row">
					<h3>9-11 settembre GP Italia</h3>
				</div>
				<div id="blur" class="row">
					<h3>30 set-2 ottobre GP Singapore</h3>
				</div>
				<div id="blur" class="row">
					<h3>7-9 ottbre GP Giappone</h3>
				</div>
				<div id="blur" class="row">
					<h3>21-23 ottobre GP Stati Uniti</h3>
				</div>
				<div id="blur" class="row">
					<h3>28-30 ottobre GP Messico</h3>
				</div>
				<div id="blur" class="row">
					<h3>11-13 novembre GP Brasile</h3>
				</div>
				<div id="blur" class="row">
					<h3>18-20 novembre GP Abu Dhabi</h3>
				</div>
			</div>
		</div>
	</div>




	<%-- 	<f:out value="${circuito}"></f:out>
 --%>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8"
		crossorigin="anonymous"></script>
</body>
</html>