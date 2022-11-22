<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Welcome</title>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css"/>
<!-- 4.0.0 사용해야 네비게이션 검정으로 나옴 -->
</head>
<%!String str1 = "칵테일";
	String str2 = "Welcome to Cocktail Market";%>
<body>
	<%@ include file="menu.jsp" %>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">
				<b> <%=str1%>
				</b>
			</h1>
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