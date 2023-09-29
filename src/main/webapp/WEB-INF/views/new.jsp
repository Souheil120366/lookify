<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>

<!DOCTYPE html>
<html>
<head>
	<title>New Book</title>
	
	<!-- for Bootstrap CSS -->
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
	
	<!-- YOUR own local CSS -->
	<link rel="stylesheet" type="text/css" href="/css/style.css">
	
	<!-- For any Bootstrap that uses JS -->
	<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
	
	
</head>
<body>
	
<div class="text-center mt-2">
<h1>Add Song</h1>
</div>

<div class="container mt-2 p-3 custom-width" style="border: 3px solid #ccc;">
<form:form action="/new/song" method="POST" modelAttribute="song">
	<div class="row">
		<div class="form-group">
			<form:label path="title">Title </form:label>
			<form:errors path="title"/>
			<form:input type="text" class="form-control" id="title" path="title"/>
		</div>
		<br>
		<div class="form-group">
			<form:label path="artist">Artist</form:label>
			<form:errors path="artist"/>
			<form:input type="text" class="form-control" id="artist" path="artist"/>
		</div>
		<br>
		<div class="form-group">
			<form:label path="rating">Rating (1-10)</form:label>
			<form:errors path="rating"/>
			<form:input type="number" class="form-control" id="rating" path="rating" min="1" max="10"/>
		</div>
		<br>
		
		
		
  </div>
  <div class="row mt-2">
    
    
  	<div class="d-flex mt-2 justify-content-end">
  		
  		<button type="submit" class="btn btn-primary">Add</button>
    </div>
  </div>
  
</form:form>
</div>
    
<a class="mt-2" href="/dashboard">Dashboard</a>   
</body>
</html>