<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- L'attributo che arriva da FindScuderiaByNomeServlet e' 'scuderia' per i dettagli di una singola scuderia cliccata -->
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Scuderie</title>
</head>
<body>
	<f:out value="${scuderia}"></f:out>
</body>
</html>