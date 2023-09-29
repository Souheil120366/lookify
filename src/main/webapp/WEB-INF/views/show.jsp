<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<title>Book</title>
	
	<!-- for Bootstrap CSS -->
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
	
	<!-- YOUR own local CSS -->
	<link rel="stylesheet" type="text/css" href="/css/style.css">
	
	<!-- For any Bootstrap that uses JS -->
	<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
	
	
</head>
<body>
	
	<div class="container-fluid vh-100 mt-5 custom-width align-items-center">
        
            <h1 class="mt-2 mb-2">Song Details</h1>
            <h3 class="mb-2">Title: <c:out value="${song.title}"/></h3>
            <h3 class="mb-2">Artist: <c:out value="${song.artist}"/></h3>
            <h3 class="mb-2">Rating: <c:out value="${song.rating}"/></h3>
            
    		<a class="footer larger-text" href="/dashboard">Dashboard</a>
    		
    </div>
    
    
</body>
</html>