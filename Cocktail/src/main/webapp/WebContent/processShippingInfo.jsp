<%@ page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>processShippingInfo.jsp</title>
</head>
<body>
	<%
	request.setCharacterEncoding("UTF-8");
	Cookie cartId = new Cookie("Shipping_cartId", URLEncoder.encode(request.getParameter("cartId"), "UTF-8"));
	Cookie name = new Cookie("Shipping_name", URLEncoder.encode(request.getParameter("name"), "UTF-8"));
	Cookie shippingDate = new Cookie("Shipping_shippingDate",
			URLEncoder.encode(request.getParameter("shippingDate"), "UTF-8"));
	cartId.setMaxAge((24 * 60 * 60));
	name.setMaxAge((24 * 60 * 60));
	response.addCookie(cartId);
	response.addCookie(name);
	response.addCookie(shippingDate);
	response.sendRedirect("orderConfirmation.jsp");
	%>
</body>
</html>