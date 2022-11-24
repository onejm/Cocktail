<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<link rel="stylesheet" href="./resources/css/jumbotron.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap"
	rel="stylesheet">
<meta charset="UTF-8">
<title>주문 취소</title>
</head>
<body>
	<fmt:setLocale value='<%=request.getParameter("language")%>' />
	<fmt:bundle basename="bundle.message">
		<jsp:include page="menu.jsp" />
		<div class="jumbotron01" style="background-image: url('./resources/background.jpg')">
			<div class="container">
				<h1 class="display-3"><fmt:message key="withdrawOrder" /></h1>
			</div>
		</div>
		<div class="container">
			<h2 class="alert alert-danger"><fmt:message key="withdrawOrderM" /></h2>
		</div>
		<div class="container">
			<p>
				<a href="./products.jsp" class="btn btn-secondary">&laquo; 상품목록</a>
			</p>
		</div>
	</fmt:bundle>
</body>
</html>