<%@ page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<title>주문 완료</title>
</head>
<body>
	<%
	String shipping_cartId = "";
	String shipping_name = "";
	String shipping_shippingDate = "";
	String shipping_country = "";
	String shipping_zipCode = "";
	String shipping_addressName = "";
	Cookie[] cookies = request.getCookies();
	if (cookies != null) {
		for (int i = 0; i < cookies.length; i++) {
			Cookie thisCookie = cookies[i];
			String n = thisCookie.getName();
			if (n.equals("Shipping_cartId"))
		shipping_cartId = URLDecoder.decode(thisCookie.getValue(), "UTF-8");
			if (n.equals("Shipping_shippingDate"))
		shipping_shippingDate = URLDecoder.decode(thisCookie.getValue(), "UTF-8");
		}
	}
	%>
	<jsp:include page="menu2.jsp" />
		<div class="jumbotron01" style="background-image: url('./resources/background.jpg')">
		<div class="container">
			주문 완료
		</div>
	</div>
	<div class="container">
		<h2 class="alert alert-warning">주문해주셔서 감사합니다.</h2>
		<p>
			주문은
			<%=shipping_shippingDate%></p>
		에 발송될 예정입니다!
		<p>
			주문번호 :
			<%=shipping_cartId%></p>
	</div>
	<div class="container">
		<p>
			<a href="./products.jsp" class="btn btn-secondary">&laquo; 상품 목록</a>
		</p>
	</div>
</body>
</html>
<%
session.invalidate();
for (int i = 0; i < cookies.length; i++) {
	Cookie thisCookie = cookies[i];
	String n = thisCookie.getName();
	;
	if (n.equals("Shipping_cartId"))
		thisCookie.setMaxAge(0);
	if (n.equals("Shipping_name"))
		thisCookie.setMaxAge(0);
	if (n.equals("Shipping_shippingDate"))
		thisCookie.setMaxAge(0);
	if (n.equals("Shipping_country"))
		thisCookie.setMaxAge(0);
	if (n.equals("Shipping_zipCode"))
		thisCookie.setMaxAge(0);
	if (n.equals("Shipping_addressName"))
		thisCookie.setMaxAge(0);
	response.addCookie(thisCookie);
}
%>