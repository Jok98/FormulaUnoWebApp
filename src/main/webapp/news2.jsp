
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- setAttribute("circuiti", circuiti) usando jstl ottente la lista di circuiti
	${circuiti} -->
<!-- Il richiamo al servlet FindCircuitiByNome e' 'circuito' tipo get-->
<!-- Il nome della variabile da mandare con il form e' 'nomeCircuito' ed e' il nomCircuito -->
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Info Circuito</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
	crossorigin="anonymous">
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="stylekev.css">
<link rel="stylesheet" href="newsstyle.css">
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

	<div class="container-fluid">

		
		<div class="row">
			<div class="col-5" style="backgroud-color: red">ciao</div>
			<div class="col-2" style="margin-left: 3vw">
				<h1
					style="max-width: 55%; text-align: center; color: white; background-color: #E41015; transform: skew(-15deg); font-weight: 600">
					NEWS</h1>
			</div>
			<div class="col" style="backgroud-color: red">ciao</div>
		</div>


		
		
		<div class="row" id="containerForEach" style=" margin-top:5vh">
		
		<div class="col"></div>
			<ul class="news-list">
				
			</ul>
<!-- 			<div  class=" col-5 " style="width:40vw ; weigth: 10vh "  > -->
<!-- 				<div class="row" style="border: 8px inset #D30000 "> -->
<!-- 					<div class="col-4" style=" "> -->
<!-- 						<img -->
<!-- 							src="https://images.unsplash.com/photo-1619591489746-0e19d75ecb9f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aGlnaCUyMG1lZ2FwaXhlbHxlbnwwfHwwfHw%3D&w=1000&q=80" -->
<!-- 							class="card" style="width: 18rem; "> -->
<!-- 					</div> -->
<!-- 					<div class="col-8"  -->
<!-- 						style="padding-rigth: 3vw; padding-top: 2vh; padding-left: 3vw; color:white"> -->
<!-- 						<h3> Titolo notizia</h3> -->
<!-- 						Leclerc took his second-straight Singapore Grand Prix pole -->
<!-- 						position on Saturday but ended up losing out to Sergio Perez at -->
<!-- 						the start of the race, with the Red Bull man going on to win -->
<!-- 						despite taking a five-second post-race penalty for a Safety Car -->
<!-- 						infringement.bsg bgsf s fgfgdsrea ef adsf de wf efw aewf effae awe fawe f ewaf ea</div> -->
<!-- 				</div> -->
<!-- 			</div> -->
			
			<div class="col-1"></div>

			
			<div class="col"></div>
	</div>
	</div>
	
	<script type="text/javascript">
		const newsList = document.querySelector('.news-list');
		var containerForEach = document.getElementById("containerForEach");
		
		function retrieve(e) {
			const API = '1100c2b22c154be9bd95b202a739eb82';
			
			let url = 'https://newsapi.org/v2/everything?q=F1&language=it&apiKey='+API;
			fetch(url).then((res)=>{
				return res.json()
			}).then((data)=>{
				console.log(data)
				data.articles.forEach(article=>{
					let li = document.createElement('li');
					
					let divCol5 = document.createElement('div');
					divCol5.setAttribute('class', 'col-5');
					divCol5.setAttribute('style', 'width:40vw ; weigth: 10vh');
					
					let divRow = document.createElement('div');
					divRow.setAttribute('class', 'row');
					divRow.setAttribute('style', 'border: 8px inset #D30000');
					
					let divCol4 = document.createElement('div');
					divCol4.setAttribute('class', 'col-4');
					
					let img = document.createElement('img');
					img.setAttribute('src', article.urlToImage);
					img.setAttribute('style', 'width:10%; height:auto');
					
					let divCol8 = document.createElement('div');
					divCol8.setAttribute('class', 'col-8');
					divCol8.setAttribute('style', 'padding-rigth: 3vw; padding-top: 2vh; padding-left: 3vw; color:white');
					
					let h3 = document.createElement('h3');
					h3.setAttribute('href', article.url);
					
					h3.textContent = article.title;
					
					li.appendChild(divCol5);
					divCol5.appendChild(divRow);
					divRow.appendChild(divCol4);
					divCol4.appendChild(img);
					divCol4.appendChild(divCol8);
					divCol8.appendChild(h3);
					
					newsList.appendChild(li);
				})
			})
		}
		
		retrieve();
	</script>
</body>
</html>