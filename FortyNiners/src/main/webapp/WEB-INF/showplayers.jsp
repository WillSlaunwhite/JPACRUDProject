<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>San Francisco 49ers</title>
</head>
<body>
	<h4>Number of Results: ${players.size() }</h4>
	<div>
		<c:forEach var="p" items="${players }">
		
		<table class="table">
		  <thead>
		    <tr>
		      <th scope="col">Number</th>
		      <th scope="col">Position</th>
		      <th scope="col">Name</th>
		    </tr>
		  </thead>
		  <tbody>
		    <tr>
		      <th scope="row">${p.number}</th>
		      <td>${p.position}</td>
		      <td>${p.firstName} ${p.lastName}</td>
		    </tr>
		  </tbody>
		</table>
		</c:forEach>
	</div>
</body>
</html>