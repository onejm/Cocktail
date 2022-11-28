<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<link rel="stylesheet" href="./resources/css/jumbotron.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap"
	rel="stylesheet">
<title>회원 정보</title>
</head>
<body>
	<jsp:include page="menu2.jsp" />
	<div class="jumbotron01" style="background-image: url('./resources/background.jpg')">
		<div class="container">
			회원 정보 관리
		</div>
	</div>

	<div class="container" align="center">
		<%
			String msg = request.getParameter("msg");
			if (msg != null) {
				if (msg.equals("0"))
					out.println(" <h2 class='alert alert-info'>회원정보가 수정되었습니다.</h2>");
				else if (msg.equals("1"))
					out.println(" <h2 class='alert alert-info'>회원가입을 축하드립니다.</h2>");
				else if (msg.equals("2")) {
					String loginId = (String) session.getAttribute("sessionId");
					out.println(" <h2 class='alert alert-info'>" + loginId + "님 환영합니다</h2>");
				}				
			} else {
				out.println("<h2 class='alert alert-info'>회원정보가 삭제되었습니다.</h2>");
			}
		%>
	</div>	
</body>
</html>