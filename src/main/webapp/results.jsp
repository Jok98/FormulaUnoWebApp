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
<%-- 	<f:out value="${searchType }"/> --%>
   	<f:if test="${searchType == 'piloti'}">
   		<f:forEach items="${result}" var="risultato"> 
    		<a href="pilota?numeroPilota=${risultato.numeroPilota }">${risultato}</a>
    	</f:forEach>
   	</f:if>
   	<f:if test="${searchType == 'scuderie'}">
   		<f:forEach items="${result}" var="risultato"> 
    		<a href="scuderia?id=${risultato.nomeScuderia }">${risultato}</a>
    	</f:forEach>
   	</f:if>
   	<f:if test="${searchType == 'circuiti'}">
   		<f:forEach items="${result}" var="risultato"> 
    		<a href="circuito?nomeCircuito=${risultato.nomeCircuito }">${risultato}</a>
    	</f:forEach>
   	</f:if>
    	
</body>
</html>