<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="wrapper">
      <div class="search-input">
        <form action="search" method="get">
        <select name="ricerca" id="ricerca">
		  <option value="piloti">Piloti</option>
		  <option value="circuiti">Circuiti</option>
		  <option value="scuderie">Scuderie</option>
		</select>
        <input name="search" id="searchText" type="text" placeholder="Type to search..">
        <button type="submit">Submit</button>
        </form>
        <label></label>
        <div class="icon"><i class="fas fa-search"></i></div>
      </div>
    </div>
    <f:forEach items="${risultati }" var="risultato">
    	<f:out value="${risultato.toString() }"/>
    </f:forEach>
    <script type="text/javascript">
    	function form() {
			
		}
    </script>
</body>
</html>