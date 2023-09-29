<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<title>Lookify</title>
	
	<!-- for Bootstrap CSS -->
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
	
	<!-- YOUR own local CSS -->
	<link rel="stylesheet" type="text/css" href="/css/style.css">
	
	<!-- For any Bootstrap that uses JS -->
	<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
	
	
</head>
<body>
	
	<div class="container-fluid vh-100 mt-5 custom-width align-items-center">
        
         	
		<table class="table">
		    <thead>
		        
		    </thead>
		    <tbody>
		    	<c:forEach var="oneSong" items="${topTenSongs.content}">
		    		<tr>
		    			<td><c:out value="${oneSong.rating}"></c:out></td>
		    			<td><a href="/songs/${oneSong.id}"><c:out value="${oneSong.title}"></c:out></a></td>
		    			<td><c:out value="${oneSong.artist}"></c:out></td>
		    		</tr>
		    	</c:forEach>
		    </tbody>
		</table>
		
		<a class="footer larger-text" href="/dashboard">Dashboard</a>      
        
    </div>
    
    
</body>
</html>