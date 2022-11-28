<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>
<%@ page import="java.sql.*"%>
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
				<%@ include file="dbconn.jsp"%>
				<%
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				String sql = "SELECT * FROM product";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				while (rs.next()) {
				%>
				<div class="col-md-4"
					style="width: 320px; height: 500px; margin: 30px;">
					<img src="./resources/images/<%=rs.getString("p_filename")%>"
						style="width: 100%">
					<h3><%=rs.getString("p_name")%></h3>
					<div style="overflow: hidden; height: 28%">
						<%=rs.getString("p_description")%>
					</div>
					<p><%=rs.getString("p_unitPrice")%>원
					<p>
						<a href="./product.jsp?id=<%=rs.getString("p_id")%>"
							class="btn btn-secondary" role="button">
							<!-- &raquo; = 특수문자 >> --> <fmt:message key="description" />
							&raquo;
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