<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
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
    <jsp:include page="menu.jsp"/>
    	<div class="jumbotron01" style="background-image: url('./resources/background.jpg')">
        <div class="container">
            요청하신 페이지를 찾을 수 없습니다.
        </div>
    </div>
    <div class="container">
        <p><%=request.getRequestURL()%></p>
        <p><a href="books.jsp" class="btn btn-secondary">상품목록&raquo;</a></p>
    </div>

</body>
</html>