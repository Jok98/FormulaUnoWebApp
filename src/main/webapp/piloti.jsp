<%@page import="org.generationitaly.f1.entity.Pilota"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<!-- setAttribute("piloti", piloti) usando jstl ottenete la lista di piloti 
	${piloti}.
	Il richiamo alla servlet FindPilotaByNumeroPilota � 'pilota' di tipo get.
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
<link rel="stylesheet" href="piloti-style.css">
<script src="https://kit.fontawesome.com/2c7fc28a2f.js"></script>
<script type="text/javascript" src="script.js"></script>
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
						class="nav-link " href="scuderie">Scuderie</a></li>
					<li class="nav-item" style="padding-right: 90px"><a
						class="nav-link active" href="piloti">Piloti</a></li>
					<li class="nav-item" style="padding-right: 90px"><a
						class="nav-link " href="circuiti">Circuiti</a></li>
					<li class="nav-item" style="padding-right: 60px"><a
						class="nav-link" href="news.jsp">News</a></li>
				</ul>
			</div>
		</div>
	</nav>


	<div class="container-piloti" style="padding-top: 40px;">
		<div class="row">
			<%
			List<Pilota> piloti = (List<Pilota>) request.getAttribute("piloti");
			for (int i = 0; i < piloti.size(); i += 2) {
			%>
			<div class="mb-5" style="width: 20%">

				<div class="card-group">

					<div class="card ">

						<a href="pilota?numeroPilota=<%=piloti.get(i).getNumeroPilota()%>">
							<img class="card-img-top" style="width: 100%;"
							src="<%=piloti.get(i).getFoto()%>">
						</a>


						<div class="card-img-overlay">
							<a href="scuderia?id=<%=piloti.get(i).getScuderia().getNomeScuderia() %>">
							<img alt="" src="<%=piloti.get(i).getScuderia().getIcona() %>" width="40px"
								height="40px"></a>

						</div>


						<div class="card-body">
							<p class="card-text"><%=piloti.get(i).getNome()%>
								<%=piloti.get(i).getCognome()%></p>
						</div>

					</div>

					<div class="card">
						<a
							href="pilota?numeroPilota=<%=piloti.get(i + 1).getNumeroPilota()%>">
							<img class="card-img-top" style="width: 100%;"
							src="<%=piloti.get(i + 1).getFoto()%>">
						</a>
						<div class="card-body">
							<p class="card-text"><%=piloti.get(i + 1).getNome()%>
								<%=piloti.get(i + 1).getCognome()%></p>
						</div>
					</div>


					<!-- 					<p>sdsdsdsdsd</p> -->
				</div>
				<%-- 				<a class="card-link" style="text-align:center;display:block;" href="scuderia?id=<%=piloti.get(i).getScuderia().getNomeScuderia()%>"> --%>
				<%-- 					<%=piloti.get(i).getScuderia().getNomeScuderia()%> --%>
				<!-- 				</a> -->
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