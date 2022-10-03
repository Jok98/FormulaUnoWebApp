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

	<div class="container-fluid"
		style="padding-left: 5vw; padding-right: 5vw;">
		<div class="row" style="padding-left: 29vw;">
			<h1
				style="max-width: 55%; text-align: center; color: white; background-color: #E41015; transform: skew(-15deg); font-weight: 600">CIRCUITI
				STAGIONE 2022</h1>
		</div>
		<div class="row" style="content-align: center;">
			<div class="col-4" style="border: 2vw; text-align: center">
				<f:forEach items="${circuiti }" var="circuito" begin="0" end="10">
					<div class="row blur" style="maring-top: 0px">
						<a class="nomi-circuiti"
							href="circuito?nomeCircuito=${circuito.nomeCircuito }">${circuito.nomeCircuito }</a>
					</div>
				</f:forEach>
			</div>
			<div
				style="margin-top: 2vh; margin-bottom: 2vh; background-color: #E41015; display: flex; justify-content: center; align-items: center;"
				class="col-4">
				<div id="carouselExampleControls" class="carousel slide"
					data-bs-ride="carousel">
					<div class="carousel-inner">
						<div class="carousel-item active">
							<img
								src="https://www.autodromoimola.it/wp-content/uploads/2021/10/245670714_2260104744146495_4447027275948681958_n-819x1024.png"
								class="d-block w-100">
						</div>
						<f:forEach items="${circuiti }" var="circuito">
							<div class="carousel-item">
								<a href="circuito?nomeCircuito=${circuito.nomeCircuito }"><img
									src="${circuito.fotoCircuito }" class="d-block w-100"> </a>
							</div>
						</f:forEach>
					</div>
					<button class="carousel-control-prev" type="button"
						data-bs-target="#carouselExampleControls" data-bs-slide="prev">
						<span class="carousel-control-prev-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Previous</span>
					</button>
					<button class="carousel-control-next" type="button"
						data-bs-target="#carouselExampleControls" data-bs-slide="next">
						<span class="carousel-control-next-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Next</span>
					</button>
				</div>
			</div>
			<div class="col-4" style="border: 2vw; text-align: center;">
				<f:forEach items="${circuiti }" var="circuito" begin="11" end="21">
					<div class="row blur" style="maring-top: 0px">
						<a class="nomi-circuiti"
							href="circuito?nomeCircuito=${circuito.nomeCircuito }">${circuito.nomeCircuito }
						</a>
					</div>
				</f:forEach>
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