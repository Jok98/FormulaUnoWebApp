<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- L'attributo restituito dalla servlet 'FindAllScuderieServlet' è 'scuderie' -->
<!-- Il richiamo al servlet FindScuderiaByNome e' 'scuderia' tipo get-->
<!-- Il nome della variabile da mandare con il form e' 'id' ed e' il nomeScuderia -->
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="style.css">
<title>Scuderie</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
	crossorigin="anonymous">
</head>
<body>
	<div class="row row-cols-1 row-cols-md-5 g-4">
		<f:forEach items="${scuderie}" var="scuderia">
			<div class="col">
				<div class="card">
					<img src="<f:out value="${scuderia.logo}"></f:out>" id="logoScuderia" class="card-img-top">
					<div class="card-body">
						<h5 class="card-title"> <f:out value="${scuderia.nomeScuderia}"></f:out> </h5>
						<p class="card-text"> <f:out value="${scuderia.sitoWeb}"></f:out> </p>
					</div>
				</div>
			</div>
		</f:forEach>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8"
		crossorigin="anonymous"></script>
</body>
</html>