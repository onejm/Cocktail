<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<link rel="stylesheet" href="resources/css/bootstrap.min.css"%>
<link rel="stylesheet" href="./resources/css/jumbotron.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap"
	rel="stylesheet">
<meta charset="UTF-8">
<title>페이지 오류</title>
</head>
<body>
	<fmt:setLocale value='<%=request.getParameter("language")%>' />
	<fmt:bundle basename="bundle.message">
		<jsp:include page="menu.jsp" />
		<div class="jumbotron01"
			style="background-image: url('./resources/background.jpg')">
			<div class="container">
				<fmt:message key="noPage" />
			</div>
		</div>
		<div class="container">
			<p><%=request.getRequestURL()%></p>
			<p>
				<a href="books.jsp" class="btn btn-secondary"><fmt:message
						key="cocktailList" />&raquo;</a>
			</p>
		</div>
	</fmt:bundle>
</body>
</html>