<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="./resources/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="./resources/css/jumbotron.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap"
	rel="stylesheet">
    <title>상품 아이디 오류</title>
</head>
<body>
    <jsp:include page="menu.jsp"/>
        	<div class="jumbotron01" style="background-image: url('./resources/background.jpg')">
            <div class="container">
               class="alert alert-danger">해당 상품이 존재하지 않습니다.
            </div>
        </div>
        <div class="container">
            <p><%=request.getRequestURL()%>?<%=request.getQueryString()%></p>
            <p><a href="products.jsp" class="btn btn-secondary">상품 목록&raquo;</a></p>
        </div>
</body>
</html>