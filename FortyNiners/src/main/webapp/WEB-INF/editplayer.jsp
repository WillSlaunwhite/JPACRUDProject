<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
Edit Player: ${player.firstName} ${player.lastName}
<form class="form" action="updatePlayer.do" method="GET">
	Player First Name*: <input type="text" name="firstName"/>	
	Player Last Name*: <input type="text" name="lastName"/>
	Player Position*: <input type="text" name="position"/><br>	
	Player Number*: <input type="number" name="number"/>
	<!-- Player Age: <input type="number" name="age"/>
	Player Weight: <input type="number" name="weight"/><br>
	Player Experience: <input type="number" name="experience"/>
	Player College: <input type="text" name="college"/> -->
	<input class="btn-btn-primary" type="submit" value="Edit Player"/>
	</form>
</body>
</html>