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
    				  <div class="text-start mb-3 " >
						 <p class="h3"><font color=white>Team Principal</font></p>
							<div class="row justify-content-evenly">
								<img style="width:10%; height:10%;" src="https://e7.pngegg.com/pngimages/657/594/png-clipart-computer-icons-social-media-user-person-my-account-icon-service-monochrome-thumbnail.png">
								 <div class="col-4" class="text-center">
										<p><font color=white> ${scuderia.teamPrincipal} </font></p>
								</div>
								<img style="width:10%; height:10%;" src="https://e7.pngegg.com/pngimages/657/594/png-clipart-computer-icons-social-media-user-person-my-account-icon-service-monochrome-thumbnail.png">
								<div class="col-4" class="text-center">
									<p><font color=white> Aggiungere direttore tecnico </font><p>
								</div>
							</div>
						</div>
					  
					   <div class="card">
					   		<img src="${scuderia.logo}" style="margin-left:auto; margin-right:auto;" alt="..." width="50%" height="50%">
  							<img src="${scuderia.monoposto.fotoMonoposto}" class="card-img-top" alt="...">
 							 <div class="card-body">
   							 <h5 class="card-title">Info Monoposto</h5>
   							 <p class="card-text">${scuderia.monoposto.idVettura}, ${scuderia.monoposto.motore}, ${scuderia.monoposto.annoProduzione} </p>
 							 </div>
						 </div>
						 <div class="row justify-content-evenly mt-3">
						 <img style="width:15%; height:15%;" src="https://banner2.cleanpng.com/20180316/ogq/kisspng-star-white-clip-art-pictures-of-white-stars-5aabcf74b16dc7.2961767315212092047268.jpg">
						 	<div class="col-4"> 
						 		<div class="text-center">
						 			<h5> <font color=white> DEBUTTO </font> </h5>
						 			<p><font color=white> ${scuderia.annoEsordio} </font></p>
						 		</div>
						 	</div>
						 	 <img style="width:15%; height:15%;" src="data:image/png;base64,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">
						 	<div class="col-4"> 
						 		<div class="text-center">
						 			<h5 ><font color=white>PRIMA VITTORIA</font></h5>
						 			<p><font color=white> --(da inserire )-- </font></p>
						 		</div>
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
</body>
</html>