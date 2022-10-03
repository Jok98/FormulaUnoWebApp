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
            style="padding-top: 120px;padding-left: 150px; text-align: center; color: white; font-size: 50px; margin: 0px">CIRCUITI
            STAGIONE 2022</p>
        <div class="row"
            style="padding-left: 20vw; padding-right: 0px; width: 30vw">
            <div class="col-3" style="border: 5px; text-align: center">
                <f:forEach items="${circuiti }" var="circuito" begin="0" end="10">
                    <div id="blur" class="row" style="maring-top: 0px">
                        <p> <a class="nomi-circuiti" href="circuito?nomeCircuito=${circuito.nomeCircuito }">${circuito.nomeCircuito }</a> </p>
                    </div>
                </f:forEach>
            </div>
            <div class="col-3"
                style="border: 2vw; text-align: center; content-align: center">
                <f:forEach items="${circuiti }" var="circuito" begin="11" end="21">
                    <div id="blur" class="row" style="maring-top: 0px">
                        <p><a class="nomi-circuiti" href="circuito?nomeCircuito=${circuito.nomeCircuito }">${circuito.nomeCircuito }</a></p>
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