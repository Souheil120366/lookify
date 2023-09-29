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
        
         <div class="d-flex mt-2 mb-2 justify-content-between align-items-center">
         	<h2>Songs by: ${artistName}</h2>
         	
         </div>
		
		<table class="table">
		    <thead>
		        <tr>
		            <th>Name</th>
		            <th>Rating</th>
		            <th>Actions</th>
		            
		        </tr>
		    </thead>
		    <tbody>
		    	<c:forEach var="oneSong" items="${songsByArtist}">
		    		<tr>
		    			<td><a href="/songs/${oneSong.id}"><c:out value="${oneSong.title}"></c:out></a></td>
		    			<td><c:out value="${oneSong.rating}"></c:out></td>
		    			<td><a href="/delete/song/${oneSong.id}">delete</a></td>
		    		</tr>
		    	</c:forEach>
		    </tbody>
		</table>
		
		<a class="footer larger-text" href="/dashboard">Dashboard</a>  
        
    </div>
    
    
</body>
</html>