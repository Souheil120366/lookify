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
         	<h2 class="col-md-3"><a href="/songs/new">Add New</a></h2>
         	<h2 class="col-md-3"><a href="/topten">Top Songs</a></h2>
         	<form action="/search" method="POST" class="d-flex justify-content-between align-items-center  col-md-3">
        
        		<input type="text" class="form-control" id="searchSong" name="searchSong"/>		
        		
        	    <button type="submit" class="btn btn-primary">Search</button>
        		    
        	</form>
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
		    	<c:forEach var="oneSong" items="${songs}">
		    		<tr>
		    			<td><a href="/songs/${oneSong.id}"><c:out value="${oneSong.title}"></c:out></a></td>
		    			<td><c:out value="${oneSong.rating}"></c:out></td>
		    			<td><a href="/delete/song/${oneSong.id}">delete</a></td>
		    		</tr>
		    	</c:forEach>
		    </tbody>
		</table>
		
             
        
    </div>
    
    
</body>
</html>