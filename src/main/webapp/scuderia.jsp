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
						class="nav-link active" href="scuderie">Scuderie</a></li>
					<li class="nav-item" style="padding-right: 60px"><a
						class="nav-link" href="piloti">Piloti</a></li>
					<li class="nav-item" style="padding-right: 60px"><a
						class="nav-link " href="circuiti">Circuiti</a></li>
				</ul>
			</div>
		</div>
	</nav>
	
		<div>
			 <p class="h2" style= "margin-left:4vw"><font color=white>${scuderia.nomeScuderia}</font></p>
		</div>
	
	<div class="containerScuderie px-4 text-center">
 			 <div class="row gx-5">
   				 <div class="col-3"> 
     				<div class="text-center">
  						<div style="height:50%; width:50%; margin-left:auto; margin-right:auto">
  						<img src="${scuderia.piloti.get(0).foto}" class="img-fluid" alt="...">
					</div>
  						 <div>
   							 <p class="h5"><font color=white>La nostra storia</font></p>
   							 <p><font color=white>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et 
   							 	 dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
   							 	  Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</font></p> 
						</div>
						
						<div>
								 <p class="h3"><font color=white>I Nostri Numeri</font></p>
							</div>
						
						<table class="table">
 							 <thead>
   								 <tr>
     								 <th scope="col"><font color=white>Gran Premi Vinti</font></th>
    								 <th scope="col"><font color=white>Pole Positions</font></th>
     								 <th scope="col"><font color=white>Partecipazioni</font></th>
   								 </tr>
  							</thead>
  							<tbody>
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
    				  <div>
								 <p class="h3"><font color=white>Team Principale</font></p>
							</div>
					  <div></div>	
					  <div></div>
					  
					   <div class="card">
  							<img src="${scuderia.monoposto.fotoMonoposto}" class="card-img-top" alt="...">
 							 <div class="card-body">
   							 <h5 class="card-title">Info Monoposto</h5>
   							 <p class="card-text">${scuderia.monoposto.idVettura}, ${scuderia.monoposto.motore}, ${scuderia.monoposto.annoProduzione} </p>
 							 </div>
						 </div>
					  
			 </div>  					
   			 <div class="col-3">
   					   <div class="center">
   					   <div class="card" style="margin-bottom:20px;background-color: transparent; height:70%; width:100%; margin-left:auto; margin-right:auto">
  							<div class="card-body">
  							 	 <h5 class="card-title"><font color=white>Motore</font></h5>
   							 	 <p class="card-text"><font color=white>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et 
   							 	 dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
   							 	  Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat 
   							 	  cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</font></p>
 							 </div>
 								 <img src="${scuderia.monoposto.fotoMotore}" class="card-img-bottom" alt="...">
						</div>
						</div>
						<div style="height:50%; width:50%; margin-left:auto; margin-right:auto">
  						<img src="${scuderia.piloti.get(1).foto}" class="img-fluid" alt="...">
					</div>
  			  </div>
		</div>
	</div>
	
	<style>
div {
    border: 1px solid white;
}
</style>
</body>
</html>