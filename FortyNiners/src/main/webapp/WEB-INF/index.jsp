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
	<form class="form" action="showAll.do" method="GET">
	Show All: <input class="btn-btn-primary" type="submit" value="Show All"/>
	</form>
	<form class="form" action="findPlayerById.do" method="GET">
		Player ID: <input type="text" name="pid" /> <input class="btn-btn-primary" type="submit"
			value="Show Player" />
	</form>
	
	<br>
	
<!-- 
	Right now, we're going to add a form for every different search method. 
	Eventually, we should make a drop town tab combined with a search bar.
 -->
	<form class="form" action="getPlayerByFirstName.do" method="GET">
	Player First Name: <input type="text" name="name"/><input class="btn-btn-primary" type="submit" value="Search by First Name"/>
	</form>
	
	<br>
	
	<form class="form" action="getPlayerByLastName.do" method="GET">
	Player Last Name: <input type="text" name="name"/><input class="btn-btn-primary" type="submit" value="Search by Last Name"/>
	</form>
	
	<br><br>
	----- Add a player -----
	
	<form class="form" action="addPlayer.do" method="GET">
	Player First Name*: <input type="text" name="firstName"/>	
	Player Last Name*: <input type="text" name="lastName"/>
	Player Position*: <input type="text" name="position"/><br>	
	Player Number*: <input type="number" name="number"/>
	Player Age: <input type="number" name="age"/>
	Player Weight: <input type="number" name="weight"/><br>
	Player Experience: <input type="number" name="experience"/>
	Player College: <input type="text" name="college"/>
	<input class="btn-btn-primary" type="submit" value="Add Player"/>
	</form>
	
	<br><br>
	----- Update a player -----
	
	<form class="form" action="updatePlayerPage.do" method="GET">
	ID of player you want to edit: <input type="text" name="id"/>
	<input class="btn-btn-primary" type="submit" value="Edit Player"/>
	</form>
	
	
	
	<!-- <form class="form" action="updatePlayer.do" method="GET">
	Player First Name*: <input type="text" name="firstName"/>	
	Player Last Name*: <input type="text" name="lastName"/>
	Player Position*: <input type="text" name="position"/><br>	
	Player Number*: <input type="number" name="number"/>
	Player Age: <input type="number" name="age"/>
	Player Weight: <input type="number" name="weight"/><br>
	Player Experience: <input type="number" name="experience"/>
	Player College: <input type="text" name="college"/>
	<input class="btn-btn-primary" type="submit" value="Add Player"/>
	</form> -->
	
	<br><br>
	----- Remove a player -----

	<form class="form" action="removePlayerByLastName.do" method="GET">
	Player Last Name: <input type="text" name="lastName"/>
	<input class="btn-btn-primary" type="submit" value="Remove Player"/>
	</form>





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