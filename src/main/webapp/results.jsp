<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Ricerca</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
	crossorigin="anonymous">
<link rel="stylesheet" href="style.css">
<script src="https://kit.fontawesome.com/2c7fc28a2f.js"></script>

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
						class="nav-link active" aria-current="page" href="index.jsp">Home</a></li>
					<li class="nav-item" style="padding-right: 90px"><a
						class="nav-link" href="scuderie">Scuderie</a></li>
					<li class="nav-item" style="padding-right: 90px"><a
						class="nav-link" href="piloti">Piloti</a></li>
					<li class="nav-item" style="padding-right: 90px"><a
						class="nav-link " href="circuiti">Circuiti</a></li>
					<li>
					<div class="wrapper" style = "padding-top: 8px; font-family: 'Roboto Condensed', sans-serif; font-style: italic; font-size: 22px">
    	  <div class="search-input">
      	  <form action="search" method="get">
      		  <select name="ricerca" id="ricerca" style = "background-color: transparent; color: white; height: 30px; border: 1px solid white">
				  <option value="piloti" style = "background-color: black">Piloti</option>
				  <option value="circuiti" style = "background-color: black">Circuiti</option>
				  <option value="scuderie" style = "background-color: black">Scuderie</option>
			  </select>
        <input name="search" id="searchText" type="text" placeholder="Type to search.."  style = "background-color: transparent; color: white;
        margin-left: 5px; margin-right: 20px; border: 1px solid white; height: 30px">
        <button type="submit" style = "background-color: #E41015; border: none; color: white; font-weight: 600; height: 35px">Submit</button>
        </form>
      </div>
    </div>
					</li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="container-fluid">
	<div class="row d-flex justify-content-center">
		<div class="col-4">
		<table class="table" style = "border: 5px solid #E41015; text-align: center">
 			 <thead>
 			  <tr>
    			  <th scope="col" style = "color:white; background-color: #E41015; font-weight: 900">Risultati</th>
    		</tr>
    		</thead>
    		<tbody>		  
		<%-- 	<f:out value="${searchType }"/> --%>
		   	<f:if test="${searchType == 'piloti'}">
		   		<f:forEach items="${result}" var="risultato"> 
		   			<tr>
		    		<td style = "background-color: white"><a style = "color: black; text-decoration: none" href="pilota?numeroPilota=${risultato.numeroPilota}">${risultato.nome} ${risultato.cognome}</a></td>
		    		<tr>
		    	</f:forEach>
		   	</f:if>
		   	<f:if test="${searchType == 'scuderie'}">
		   		<f:forEach items="${result}" var="risultato"> 
		   			<tr>
		    		<td style = "background-color: white"><a style = "color: black; text-decoration: none" href="scuderia?id=${risultato.nomeScuderia }">${risultato.nomeScuderia}</a></td>
		    		</tr>
		    	</f:forEach>
		   	</f:if>
		   	<f:if test="${searchType == 'circuiti'}">
		   		<f:forEach items="${result}" var="risultato"> 
		   			<tr>
		    		<td style = "background-color: white"><a style = "color: black; text-decoration: none" href="circuito?nomeCircuito=${risultato.nomeCircuito }">${risultato.nomeCircuito}</a></td>
		    		</tr>
		    	</f:forEach>
		   	</f:if>
		   	</tbody>	
		 </table> 	
		 </div>
		 </div>
	</div>	
</body>
</html>