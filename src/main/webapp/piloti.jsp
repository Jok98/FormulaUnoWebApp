<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
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
	<table>
		<thead>
			<tr>
				<th>Nome</th>
				<th>Img</th>
				<th>Scuderia</th>
			</tr>
		</thead>
		<tbody>
			<f:forEach items="${piloti}" var="pilota">
				<tr>
					<td><f:out value="${pilota.nome}"></f:out></td>
					<td><img src="${pilota.foto}"></td>
					<td><f:out value="${pilota.scuderia.nomeScuderia}"></f:out></td>
				</tr>
			</f:forEach>
		</tbody>
	</table>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8"
		crossorigin="anonymous"></script>
</body>
</html>