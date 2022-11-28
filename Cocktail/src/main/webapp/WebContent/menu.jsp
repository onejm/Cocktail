<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String sessionId = (String) session.getAttribute("sessionId");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<fmt:setLocale value='<%=request.getParameter("language")%>' />
	<fmt:bundle basename="bundle.message">
		<nav class="navbar navbar-default navbar-fixed-top">
			<div class="container-fluid">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="welcome.jsp">Mixing You</a>
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li><a href="products.jsp"><fmt:message key="productList" /></a></li>
						<li><a href="cocktails.jsp"><fmt:message
									key="cocktailList" /></a></li>
						<li><a> || </a></li>
						<li><a href="?language=ko">한국어</a></li>
						<li><a href="?language=en">English</a></li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<%
						if (request.isUserInRole("admin")) {
						%>
						<jsp:include page="correction.jsp" />
						<%
						}
						%>
						<c:choose>
							<c:when test="${empty sessionId}">
								<li class="nav-item"><a class="nav-link"
									href="loginMember.jsp">로그인</a></li>
								<li class="nav-item"><a class="nav-link"
									href="addMember.jsp">회원가입</a></li>
							</c:when>
							<c:otherwise>
								<li style="padding-top: 15px;">[<%=sessionId%>님]
								</li>
								<li class="nav-item"><a class="nav-link"
									href="<c:url value="logoutMember.jsp"/>">로그아웃</a></li>
								<li class="nav-item"><a class="nav-link"
									href="<c:url value="updateMember.jsp"/>">회원수정</a></li>
							</c:otherwise>
						</c:choose>
						<li><a href="./cart.jsp"> <fmt:message
									key="shoppingBasket" /></a></li>
					</ul>
				</div>
				<!-- /.navbar-collapse -->
			</div>
		</nav>
	</fmt:bundle>
</body>
</html>