<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- L'attributo restituito dalla servlet 'FindAllScuderieServlet' è 'scuderie' -->
<!-- Il richiamo al servlet FindScuderiaByNome e' 'scuderia' tipo get-->
<!-- Il nome della variabile da mandare con il form e' 'id' ed e' il nomeScuderia -->
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
	<nav class="navbar navbar-expand-lg">
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
						class="nav-link " aria-current="page" href="index.jsp">Home</a></li>
					<li class="nav-item" style="padding-right: 90px"><a
						class="nav-link active" href="scuderie">Scuderie</a></li>
					<li class="nav-item" style="padding-right: 90px"><a
						class="nav-link" href="piloti">Piloti</a></li>
					<li class="nav-item" style="padding-right: 90px"><a
						class="nav-link " href="circuiti">Circuiti</a></li>
					<li class="nav-item" style="padding-right: 60px"><a
						class="nav-link" href="news.jsp">News</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<main class="container-scuderie">

		<aside class="container__item--sidebar_scuderie">
			<div class="row row-cols-1 row-cols-md-5 g-4"
				style="padding-top:20px; padding-left: 240px">
				<f:forEach items="${scuderie}" var="scuderia">
					<div class="col">
						<div class="card " style="width: 250px; height: 350px;">
							<a href="scuderia?id=${scuderia.nomeScuderia}"> <img
								src="<f:out value="${scuderia.logo}"></f:out>" id="logoScuderia"
								class="card-img-top"><input type="hidden"
								name="id" value="${scuderia.nomeScuderia}"></input></a>

							<!-- 					<div class="card-body" style="background-color: green"> -->
							<%-- 						<h5 class="card-title"> <f:out value="${scuderia.nomeScuderia}"></f:out> </h5> --%>
							<%-- 						<p class="card-text"> <f:out value="${scuderia.sitoWeb}"></f:out> </p> --%>
							<!-- 					</div> -->
						</div>
					</div>
				</f:forEach>
			</div>

		</aside>
	</main>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8"
		crossorigin="anonymous"></script>
</body>
</html>