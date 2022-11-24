<%@ page import="dto.Product"%>
<%@ page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<link rel="stylesheet" href="./resources/css/jumbotron.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap"
	rel="stylesheet">
<%
String cartId = session.getId();
%>
<meta charset="UTF-8">
<title>장바구니</title>
</head>
<style type="text/css">
table {
	width: 100%;
}

tr {
	height: 70px;
}
</style>
<body>
<fmt:setLocale value='<%=request.getParameter("language")%>'/>
  <fmt:bundle basename="bundle.message">
	<jsp:include page="menu.jsp" />
	<div class="jumbotron01"
		style="background-image: url('./resources/background.jpg')">
		<div class="container"><fmt:message key="shoppingBasket" /></div>
	</div>
	<div class="container">
		<div class="row">
			<table width="100%">
				<tr>
					<td align="left"><a href="./deleteCart.jsp?cartId=<%=cartId%>"
						class="btn btn-danger"><fmt:message key="delete" /></a></td>
					<td align="right"><a
						href="./shippingInfo.jsp?cartId=<%=cartId%>"
						class="btn btn-success"><fmt:message key="order" /></a></td>
				</tr>
			</table>
		</div>
		<div style="padding-top: 50px">
			<table class="table-hover">
				<tr>
					<th></<fmt:message key="prdouct" /><th>
					<th><fmt:message key="unitPrice" /></th>
					<th><fmt:message key="unitsInStock" /></th>
					<th><fmt:message key="subtotal" /></th>
					<th><fmt:message key="note" /></th>
				</tr>
				<%
				int sum = 0;
				ArrayList<Product> cartlist = (ArrayList<Product>) session.getAttribute("cartlist");
				session.getAttribute("cartlist");
				if (cartlist == null)
					cartlist = new ArrayList<Product>();
				for (int i = 0; i < cartlist.size(); i++) { //장바구니에 담겨있는 상품 리스트 출력
					Product product = cartlist.get(i);
					int total = product.getUnitPrice() * product.getQuantity();
					sum = sum + total;
				%>
				<tr>
					<td><%=product.getProductId()%>-<%=product.getPname()%></td>
					<td><%=product.getUnitPrice()%></td>
					<td><%=product.getQuantity()%></td>
					<td><%=total%></td>
					<td><a href="./removeCart.jsp?id=<%=product.getProductId()%>"
						class="badge badge-danger"><fmt:message key="delete" /></a></td>
				</tr>
				<%
				}
				%>
				<tr>
					<th></th>
					<th></th>
					<th></th>
					<th><fmt:message key="totalAmount" /></th>
					<th><%=sum%></th>
				</tr>
			</table>
			<a href="products.jsp" class="btn btn-secondary">&laquo; <fmt:message key="continueShopping" /></a>
		</div>
		<hr>
	</div>
	<jsp:include page="footer.jsp" />
	</fmt:bundle>
</body>
</html>