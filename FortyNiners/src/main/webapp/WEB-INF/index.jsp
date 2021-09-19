<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Forty Niners</title>
	
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous"></link>
	<link rel="stylesheet" href="css/style.css"></link>
	
</head>
<body>
	<h3>San Francisco 49ers</h3>
	<form class="form" action="getPlayer.do" method="GET">
		Player ID: <input type="text" name="pid" /> <input class="btn-btn-primary" type="submit"
			value="Show Player" />

	<div>
		<c:forEach var="p" items="${players }">
			<%-- <h5>${p}</h5> --%>
<%-- 			<h5>${p.firstName} ${p.lastName }</h5> --%>		
			<div>
				<h5>${player.number}	${player.position}	${player.firstName}	${player.lastName}</h5>
				<p>Age: ${player.age}	Height: ${player.height}	Weight: ${player.weight}	Years of Experience: ${player.experience}	College: ${player.college}</p>
			</div>
		</c:forEach>
	</div>






<%-- <div class="container-fluid">

	<form class="form" action="getFilm.do" method="GET">
		Film ID: <input type="text" name="fid" /> <input class="btn-btn-primary" type="submit"
			value="Show Film" />
	</form>
	
	<table class="table thead-dark table-striped table-hover">
	
	
		<thead>
			<tr>
				<th>Id</th>
				<th>First Name</th>
			</tr>
		</thead>
		
		<tbody>
			<c:forEach var="p" items="${player }">
				<tr>
					<td>${p.id }</td>
					<td><a href="getFilm.do?fid=${p.id}">${p.firstName }</a></td>
				</tr>
			</c:forEach>		
		</tbody>
		
		
	</table>
	
</div> --%>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>
</body>
</html>