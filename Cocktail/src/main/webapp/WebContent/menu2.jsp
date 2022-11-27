<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
					</ul>
					<ul class="nav navbar-nav navbar-right">
					<% 
						if(request.isUserInRole("admin")) {
							%>
							<jsp:include page="correction.jsp" />
							 <%
						}
						%>
					<li><a href="./cart.jsp"> <fmt:message key="shoppingBasket" /></a></li>
					</ul>
				</div>
				<!-- /.navbar-collapse -->
			</div>
		</nav>
	</fmt:bundle>
</body>
</html>