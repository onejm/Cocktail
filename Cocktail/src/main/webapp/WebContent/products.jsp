<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<link rel="stylesheet" href="./resources/css/jumbotron.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap"
	rel="stylesheet">
<title>상품 목록</title>
</head>
<body>
	<fmt:setLocale value='<%=request.getParameter("language")%>' />
	<fmt:bundle basename="bundle.message">
		<jsp:include page="menu.jsp" />
		<div class="jumbotron01"
			style="background-image: url('./resources/background.jpg')">
			<div class="container">
				<fmt:message key="productList" />
			</div>
		</div>
		<%
		ProductRepository dao = ProductRepository.getInstance();
		ArrayList<Product> listOfProducts = dao.getAllProducts();
		%>
		<div class="container">
			<div class="row" align="center">
				<%
				for (int i = 0; i < listOfProducts.size(); i++) {
					Product product = listOfProducts.get(i);
				%>
				<div class="col-md-4">
					<img src="./resources/images/<%=product.getFilename()%>"
						style="width: 100%">
					<h3><%=product.getPname()%></h3>
					<p><%=product.getDescription()%>
					<p><%=product.getUnitPrice()%>원
					<p>
						<a href="./product.jsp?id=<%=product.getProductId()%>"
							class="btn btn-secondary" role="button"> <!-- &raquo; = 특수문자 >> -->
							<fmt:message key="description" /> &raquo;
						</a>
				</div>
				<%
				}
				%>
			</div>
			<hr>
		</div>
		<jsp:include page="footer.jsp" />
	</fmt:bundle>
</body>
</html>