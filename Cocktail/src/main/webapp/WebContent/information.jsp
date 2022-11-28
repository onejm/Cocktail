<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome</title>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<link rel="stylesheet" href="./resources/css/jumbotron.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap"
	rel="stylesheet">
<script type="text/javascript" src="./resources/js/game.js"></script>
</head>
<body>

	<fmt:setLocale value='<%=request.getParameter("language")%>' />
	<fmt:bundle basename="bundle.message">
		<%@ include file="menu.jsp"%>
		<div class="jumbotron01"
			style="background-image: url('./resources/background.jpg')">
			<div class="container">

				<b> Mixing You
					<p>
					<h2>πÕΩÃ¿Ø</h2>
			</div>
		</div>
		<div class="container">
		
		
		
		</div>
		<%@ include file="footer.jsp"%>
	</fmt:bundle>
</body>
</html>