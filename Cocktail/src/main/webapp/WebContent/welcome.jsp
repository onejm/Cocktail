<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Welcome</title>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css"/>
<link rel="stylesheet" href="./resources/css/jumbotron.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap"
	rel="stylesheet">
<!-- 4.0.0 ����ؾ� �׺���̼� �������� ���� -->
</head>
<%!String str1 = "Ĭ����";
	String str2 = "Welcome to Cocktail Market";%>
<body>
	<%@ include file="menu.jsp" %>
		<div class="jumbotron01" style="background-image: url('./resources/background.jpg')">
		<div class="container">

				<b> <%=str1%>

		</div>
	</div>
	<div class="container">
    <div class="text-center">
        <h3>
            <%=str2 %>
        </h3>
 
    </div>
    <hr>
</div>
	<%@ include file="footer.jsp" %>
</body>
</html>