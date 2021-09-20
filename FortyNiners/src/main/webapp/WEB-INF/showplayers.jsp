<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>San Francisco 49ers</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous"></link>

</head>
<body>
	<h5>Number of Results: ${players.size() }</h5>
	<div>
		<table class="table table-hover table-md thead-dark tbody-grey table-striped">
		  <thead>
		    <tr>
		      <th scope="col"/>
		      <th scope="col">Number</th>
		      <th scope="col">First Name</th>
		      <th scope="col">Last Name</th>         	            	
		      <th scope="col">Position</th>
		    </tr>
		  </thead>
		
		<c:forEach var="p" items="${players }">
		  <tbody>
		    <tr>
		      <th scope="row">${p.id}</th>
		      <td>${p.number}</td>
		      <td>${p.firstName}</td>
		      <td>${p.lastName}</td>
		      <td>${p.position}</td>
		    </tr>
		  </tbody>
		</c:forEach>
		
		</table>
	</div>
	
	
	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>
</body>
</html>