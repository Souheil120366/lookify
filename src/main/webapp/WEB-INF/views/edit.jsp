<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>

<!DOCTYPE html>
<html>
<head>
	<title>Edit Book</title>
	
	<!-- for Bootstrap CSS -->
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
	
	<!-- YOUR own local CSS -->
	<link rel="stylesheet" type="text/css" href="/css/style.css">
	
	<!-- For any Bootstrap that uses JS -->
	<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
	
	
</head>
<body>
	
<div class="text-center mt-2">
<h1>Edit Book</h1>
</div>

<div class="container mt-2 p-3 custom-width" style="border: 3px solid #ccc;">
<form:form action="/books/edit/${book.id}" method="POST" modelAttribute="book">
	<input type="hidden" name="_method" value="PUT">
	<div class="row">
		<div class="form-group">
			<form:label path="title">Title </form:label>
			<form:errors path="title"/>
			<form:input type="text" class="form-control" id="title" path="title"/>
		</div>
		<br>
		<div class="form-group">
			<form:label path="description">Description</form:label>
			<form:errors path="description"/>
			<form:textarea type="text" class="form-control" id="description" path="description" rows="3"/>
		</div>
		<br>
		<div class="form-group">
			<form:label path="language">Language</form:label>
			<form:errors path="language"/>
			<form:input type="text" class="form-control" id="language" path="language"/>
		</div>
		<br>
		<div class="form-group">
			<form:label path="numberOfPages">Number of Pages</form:label>
			<form:errors path="numberOfPages"/>
			<form:input type="number" class="form-control" id="numberOfPages" path="numberOfPages"/>
		</div>
		<br>
		
		
  </div>
  <div class="row mt-2">
    
    
  	<div class="d-flex mt-2 justify-content-end">
  		
  		<button type="submit" class="btn btn-primary">Submit</button>
    </div>
  </div>
  
</form:form>
</div>
    
    
</body>
</html>