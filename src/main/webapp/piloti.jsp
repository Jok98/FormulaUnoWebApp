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
</head>
<body>
	<f:forEach items="${piloti}" var="pilota">
		<f:out value="${pilota}"></f:out>
		<form action="pilota" method="get">
			<input type="hidden" name="numeroPilota"
				value="${pilota.numeroPilota}">
			<button type="submit">Info</button>
		</form>
	</f:forEach>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8"
		crossorigin="anonymous"></script>
</body>
</html>