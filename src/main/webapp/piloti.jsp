<%@page import="org.generationitaly.f1.entity.Pilota"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<!-- setAttribute("piloti", piloti) usando jstl ottenete la lista di piloti 
	${piloti}.
	Il richiamo alla servlet FindPilotaByNumeroPilota è 'pilota' di tipo get.
	name form= numeroPilota ; value form= "${pilota.numeroPilota}"
-->
<html>
<head>
<meta charset="ISO-8859-1">
<title>Piloti</title>
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
						class="nav-link" aria-current="page" href="#">Home</a></li>
					<li class="nav-item" style="padding-right: 60px"><a
						class="nav-link" href="scuderie">Scuderie</a></li>
					<li class="nav-item" style="padding-right: 60px"><a
						class="nav-link active" href="piloti">Piloti</a></li>
					<lass ="nav-item"
					style="padding-right: 60px"> <a
						class="nav-link " href="circuiti">Circuiti</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="container-xxl" style="width: 100%">
		<div class="row row-cols-1 row-cols-md-5">
			<%
			List<Pilota> piloti = (List<Pilota>) request.getAttribute("piloti");
			for (int i = 0; i < piloti.size(); i += 2) {
			%>
			<div class="card" style="margin: 5px;">
				<div>
					<img style="width: 50%;" src="<%=piloti.get(i).getFoto()%>"><img
						style="width: 50%" src="<%=piloti.get(i + 1).getFoto()%>">
				</div>
				<form action="scuderia" method="get">
					<input type="hidden" name="id"
						value="<%=piloti.get(i).getScuderia().getNomeScuderia()%>">
					<button type="submit">
						<%=piloti.get(i).getScuderia().getNomeScuderia()%>
					</button>
				</form>
			</div>
			<%
			}
			%>
		</div>
	</div>

	<%-- 	<f:forEach items="${piloti}" var="pilota"> --%>
	<%-- 		<f:out value="${pilota}"> --%>
	<%-- 		</f:out> --%>
	<%-- 		<form action="pilota" method="get"> --%>
	<!-- 			<input type="hidden" name="numeroPilota" -->
	<%-- 				value="${pilota.numeroPilota}"> --%>
	<!-- 			<button type="submit">Info</button> -->
	<%-- 		</form> --%>
	<%-- 	<f:forEach items="${piloti}" var="pilota"> --%>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8"
		crossorigin="anonymous"></script>
</body>
</html>