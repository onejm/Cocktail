<%@ page import="java.net.URLDecoder"%>
<%@ page import="dto.Product"%>
<%@ page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
request.setCharacterEncoding("UTF-8");
String cartId = session.getId();
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
		if (n.equals("Shipping_name"))
	shipping_name = URLDecoder.decode(thisCookie.getValue(), "UTF-8");
		if (n.equals("Shipping_shippingDate"))
	shipping_shippingDate = URLDecoder.decode(thisCookie.getValue(), "UTF-8");
		if (n.equals("Shipping_country"))
	shipping_country = URLDecoder.decode(thisCookie.getValue(), "UTF-8");
		if (n.equals("Shipping_zipCode"))
	shipping_zipCode = URLDecoder.decode(thisCookie.getValue(), "UTF-8");
		if (n.equals("Shipping_addressName"))
	shipping_addressName = URLDecoder.decode(thisCookie.getValue(), "UTF-8");
	}
}
%>
<html>
<head>
<link rel="stylesheet" href="resources/css/bootstrap.min.css" />
<link rel="stylesheet" href="./resources/css/jumbotron.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap"
	rel="stylesheet">
<meta charset="UTF-8">
<title>주문 정보</title>
</head>
<body>
	<fmt:setLocale value='<%=request.getParameter("language")%>' />
	<fmt:bundle basename="bundle.message">
		<jsp:include page="menu.jsp" />
		<div class="jumbotron01"
			style="background-image: url('./resources/background.jpg')">
			<div class="container"><fmt:message key="shippingInfo" /></div>
		</div>

		<div class="container col-8 alert alert-info">
			<div class="text-center">
				<h1><fmt:message key="receipt" /></h1>
			</div>
			<div class="row justify-content-between">
				<div class="col-4" align="left">
					<strong><fmt:message key="address" /></strong><br> <fmt:message key="customerName" /> :
					<%=shipping_name%><br> <fmt:message key="address" />
					<%=shipping_addressName%><br>
				</div>
				<div class="col-4" align="right">
					<p>
						<em><fmt:message key="dateOfReceipt" /> : <%=shipping_shippingDate%>
						</em>
					</p>
				</div>
			</div>
			<div>
				<table class="table table-hover">
					<tr>
						<th class="text-center"><fmt:message key="product" /></th>
						<th class="text-center">#</th>
						<th class="text-center"><fmt:message key="unitPrice" /></th>
						<th class="text-center"><fmt:message key="subtotal" /></th>
					</tr>

					<%
					int sum = 0;
					ArrayList<Product> cartlist = (ArrayList<Product>) session.getAttribute("cartlist");
					if (cartlist == null)
						cartlist = new ArrayList<Product>();
					for (int i = 0; i < cartlist.size(); i++) {// 상품 리스트 하나씩 출력
						Product product = cartlist.get(i);
						int total = product.getUnitPrice() * product.getQuantity();
						sum += total;
					%>
					<tr>
						<td class="text-center"><em><%=product.getPname()%> </em></td>
						<td class="text-center"><%=product.getQuantity()%></td>
						<td class="text-center"><%=product.getUnitPrice()%>원</td>
						<td class="text-center"><%=total%>원</td>
					</tr>
					<%
					}
					%>

					<tr>
						<td></td>
						<td></td>
						<td class="text-right"><strong><fmt:message key="totalAmount" /> : </strong></td>
						<td class="text-center text-danger"><strong><%=sum%>
						</strong></td>
					</tr>
				</table>

				<a href="./shippingInfo.jsp?cartId=<%=shipping_cartId%>"
					class="btn btn-secondary" role="button"><fmt:message key="before" /></a> <a
					href="./thankCustomer.jsp" class="btn btn-success" role="button"><fmt:message key="orderComplete" /></a>
				<a href="./checkOutCancelled.jsp" class="btn btn-secondary"
					role="button"><fmt:message key="cancellation" /></a>
			</div>
		</div>
	</fmt:bundle>
</body>
</html>