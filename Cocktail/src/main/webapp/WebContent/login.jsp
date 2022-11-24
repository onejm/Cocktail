<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html>
<head>
    <link rel="stylesheet" href="./resources/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="./resources/css/jumbotron.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap"
	rel="stylesheet">
    <meta charset="UTF-8">
    <title>Login</title>
</head>
<body>
<jsp:include page="menu.jsp"/>
	<div class="jumbotron01" style="background-image: url('./resources/background.jpg')">
    <div class="container">
        로그인
    </div>
</div>
<div class="container" align="center">
    <div class="col-md-4 col-md-offset-4">
        <h3 class="form-signin-heading">Please sign in</h3>
        <%
            String error = request.getParameter("error");
            if(error != null){
                out.println("<div class='alert alert-danger'>");
                out.println("아이디와 비밀번호를 확인해주세요");
                out.println("</div>");
            }
        %>
        <form class="form-signin" action="j_security_check" method="post">
            <div class="form-group">
                <label for="inputUserName" class="sr-only">User Name</label>
                <input type="text" class="form-control" placeholder="ID" name='j_username' required autofocus>
            </div>
            <div class="form-group">
                <label for="inputPassword" class="sr-only">Password</label>
                <input type="password" class="form-control" placeholder="Password" name="j_password" required>
            </div>
            <button class="btn btn btn-lg btn-success btn-block" type="submit">로그인</button>
        </form>
    </div>
</div>
</body>
</html>