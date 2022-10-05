<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- L'attributo che arriva da FindScuderiaByNomeServlet e' 'scuderia' per i dettagli di una singola scuderia cliccata -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Scuderia</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
	crossorigin="anonymous">
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="scuderia.css">
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
						class="nav-link" aria-current="page" href="index.jsp">Home</a></li>
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


	<div class="skewX transform" style="padding-left: 130px;padding-bottom: 10px">
		<div style="background-color: #E41015; width: 550px;">
			<p class="h2" style="margin-left: 4vw;font-family: 'Roboto Condensed', sans-serif;font-style: italic; margin-left: 1vw">
				<font color="white" >${scuderia.nomeScuderia}</font>
			</p>
		</div>
	</div>

	<div class="containerScuderie px-4 text-center" >
		<div class="row gx-5">
			<div class="col-3" style="padding-left: 100px; align-content: center;">
				
				
				<div class="text-center">
					
					<div class="pilota1" style="text-align: -webkit-center;">
					<div class="card text-bg-dark" style="width: 290px; height: 380px">
						<a href="pilota?numeroPilota=${scuderia.piloti.get(0).numeroPilota}">
							<img src="${scuderia.piloti.get(0).fotoCard}" class="img-fluid" alt="..." style="border-radius: 1.5rem">
						</a>
					</div>
					</div>
					<div class="nostra-historia" style="padding-top: 20px">
						<div class="nostra-historia-titolo" style="padding-left: 35px;">
						<div class="skewX transform" style=" background-color: #E41015; width: 140px;">
						<p class="h5" style="text-align: left; padding-left: 10px">
							<font style="font-family: 'Roboto Condensed', sans-serif; font-style: italic; color:white;">  La nostra storia</font>
						</p>
						</div>
						</div>
						<p style="text-align: left; padding: 10px">
							<font style="font-family: 'Roboto Condensed', sans-serif; font-style: italic; color:white; ">
								${scuderia.info }</font>
						</p>
					</div>

					
					
						<div class="nostra-historia-titolo" style="padding-left: 35px;">
						<div class="skewX transform" style=" background-color: #E41015; width: 140px;">
						<p class="h5" class="h5" style="text-align: left; padding-left: 10px">
							<font style="font-family: 'Roboto Condensed', sans-serif; font-style: italic; color:white;">I nostri vittorie</font>
						</p>
						</div>
						</div>
						
					<table class="table table-striped" >
					
						<thead style="font-family: 'Roboto Condensed', sans-serif; font-style: italic; color:white;">
							<tr>
								<th scope="col"><font color=white>Gran Premi Vinti</font></th>
								<th scope="col"><font color=white>Pole Positions</font></th>
								<th scope="col"><font color=white>Partecipazioni</font></th>
							</tr>
						</thead>
						<tbody style="font-family: 'Roboto Condensed', sans-serif; font-style: italic; color:white;">
							<tr>
								<td><font color=white>${scuderia.numeroVittorie}</font></td>
								<td><font color=white>numPole</font></td>
								<td><font color=white>numPart</font></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<div class="col-6">
				
				
				<div class="text-start mb-3 ">
					
					
					<div class="nostra-historia-titolo" style="padding-left: 35px;">
						<div class="skewX transform" style=" background-color: #E41015; width: 200px;">
						<p class="h3" style="text-align: left; padding-left: 10px">
							<font style="font-family: 'Roboto Condensed', sans-serif; font-style: italic; color:white;">Team principal</font>
						</p>
						</div>
						</div>
					
					
					<div class="row justify-content-evenly" style="padding-top: 10px">
						<img style="width: 7%; height: 7%;"
							src="https://i.imgur.com/LP5HIYc.png">
						<div class="col-4" class="text-center">
							<p>
								<font style="font-family: 'Roboto Condensed', sans-serif; font-style: italic; color:white;"> ${scuderia.teamPrincipal} </font>
							</p>
						</div>
						<img style="width: 7%; height: 7%;"
							src="https://i.imgur.com/LP5HIYc.png">
						<div class="col-4" class="text-center">
							<p>
								<font style="font-family: 'Roboto Condensed', sans-serif; font-style: italic; color:white;"> ${scuderia.direttoreTecnico } </font>
							<p>
						</div>
					</div>
				</div>

				<div class="card" >
 						<img src="${scuderia.monoposto.fotoMonoposto}" class="card-img-top"	alt="..."> 

					<div class="card-body">
					
					
						<div class="nostra-historia-titolo" style="padding-left: 35px;">
						<div class="skewX transform" style=" background-color: #E41015; width: 150px;">
						<p class="h5" class="h5" style="text-align: left; padding-left: 10px">
							<font style="font-family: 'Roboto Condensed', sans-serif; font-style: italic; color:white;">Info monoposto</font>
						</p>
						</div>
						</div>
						
						
						<p class="card-text" style="font-family: 'Roboto Condensed', sans-serif; font-style: italic; color:white;text-align: left; padding-left: 10px ">${scuderia.monoposto.idVettura},
							${scuderia.monoposto.motore},
							${scuderia.monoposto.annoProduzione}</p>
					</div>
				</div>
				<div class="row justify-content-evenly mt-3" style="padding-top: 25px">
					<img style="width: 11%; height: 11%;"
						src="https://i.imgur.com/UuvL2Y7.png">
					<div class="col-4">
						<div class="text-center">
							<h5 style="text-align: left">
								<font style="font-family: 'Roboto Condensed', sans-serif; font-style: italic; color:white;"> DEBUTTO </font>
							</h5>
							<p style="text-align: left">
								<font style="font-family: 'Roboto Condensed', sans-serif; font-style: italic; color:white;"> ${scuderia.annoEsordio} </font>
							</p>
						</div>
					</div>
					<img style="width: 10%; height: 10%;"
						src="https://i.imgur.com/8lEIihy.png">
					<div class="col-4">
						<div class="text-center" >
							<h5 style="text-align: left">
								<font style="font-family: 'Roboto Condensed', sans-serif; font-style: italic; color:white;">PRIMA VITTORIA</font>
							</h5>
							<p style="text-align: left">
								<font style="font-family: 'Roboto Condensed', sans-serif; font-style: italic; color:white;"> ${scuderia.primoMondiale } </font>
							</p>
						</div>
					</div>
				</div>
			</div>
			
			<div class="col-3"  style="padding-right: 100px">
				<div class="center">
					
					
					<div class="card" style="margin-bottom: 20px; margin-left: auto; margin-right: auto">
						<div class="card-body">
						
							<div class="card-title" style="padding-left: 35px;">
						<div class="skewX transform" style=" background-color: #E41015; width: 80px;">
						<p class="h5" class="h5" style="text-align: left; padding-left: 10px">
							<font style="font-family: 'Roboto Condensed', sans-serif; font-style: italic; color:white;">Motore</font>
						</p>
						</div>
						</div>
							
							<p class="card-text" style="text-align: left; padding: 10px">
								<font style="font-family: 'Roboto Condensed', sans-serif; font-style: italic; color:white">
									${scuderia.bioVettura }</font>
							</p>
						</div>
						<img src="${scuderia.monoposto.fotoMotore}"
							class="card-img-bottom" alt="..."  height="210px" width="200px">
					</div>
				</div>
				<div class="text-center">
					
					<div class="pilota2" style="text-align: -webkit-center;">
					<div class="card text-bg-dark" style="width: 290px; height: 380px">
					<a
						href="pilota?numeroPilota=${scuderia.piloti.get(1).numeroPilota}">
						<img src="${scuderia.piloti.get(1).fotoCard}" class="img-fluid"	alt="..." style="border-radius: 1.5rem">
					</a>
					</div>
					</div>
					
				</div>
			</div>
		</div>
	</div>
</body>
</html>