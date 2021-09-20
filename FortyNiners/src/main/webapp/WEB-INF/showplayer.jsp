<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>

	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous"></link>
	<link rel="stylesheet" href="css/style.css"></link> 
	<meta charset="UTF-8">
	<title>${player.firstName} ${player.lastName}</title>
</head>
<body>

	<div>
		<h2>${player.number}	${player.position}	${player.firstName}	${player.lastName}</h5>
		<p>Age: ${player.age}	Weight: ${player.weight}	Years of Experience: ${player.experience}	College: ${player.college}</p>
	</div>

</body>
</html>