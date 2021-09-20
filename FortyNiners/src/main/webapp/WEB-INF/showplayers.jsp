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
			<div>
				<h2>${p.number}	${p.position}	${p.firstName}	${p.lastName}</h5>
				<p>Age: ${p.age}	Height: ${p.height}	Weight: ${p.weight}	Years of Experience: ${p.experience}	College: ${p.college}</p>
			</div>
		</c:forEach>
	</div>
</body>
</html>