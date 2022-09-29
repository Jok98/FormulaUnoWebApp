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
			<div class="col-2 col-sm-6 col-md-4 col-lg-2">
				<div class="row row-col-1">
					<f:out value="${pilota.biografia}" />
				</div>
				<div class="row row-col-1">
					<f:out value="${pilota.titoliMondiali}" />
				</div>
				<div class="row row-col-1">
					<f:out value="${pilota.numeroPilota}" />
				</div>
				<div class="row row-col-1">
					<img id="imaggineScuderia" src="${ pilota.scuderia.logo}">
				</div>
			</div>

			<div class="col-5">
				<div id="divImmaginePilota" class="row">
					<img src="${pilota.foto}" />
				</div>
			</div>
			<div class="col-5">col 3</div>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8"
		crossorigin="anonymous"></script>
	<style>
.row-col-1 {
	margin-left: auto;
	margin-right: auto;
	margin-bottom: 10vh;
	margin-top: 10vh;
}

.container-pilota {
	margin-left: 5vw;
	margin-right: 5vw;
	margin-bottom: 5vh;
	margin-top: 5vh;
	background-color: white;
}

div {
	border: 1px solid #000000;
}

#immagineScuderia {
	margin: auto;
}

#divImmaginPilota {
	width: 60%;
	height: 60%;
	margin-left: auto;
	margin-right: auto;
	margin-top: 10vh;
	margin-bottom: 10vh;
}
</style>
</body>
</html>