<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>

<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Cocktail"%>
<%@ page import="dao.CocktailRepository"%>
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
<title>상품 상세 정보</title>
<script type="text/javascript">
	function addToCart() {
		if (confirm("상품을 장바구니에 추가하시겠습니까?")) {
			document.addForm.submit();
		} else {
			document.addForm.reset();
		}
	}
</script>
</head>
<body>
	<fmt:setLocale value='<%=request.getParameter("language")%>' />
	<fmt:bundle basename="bundle.message">
		<jsp:include page="menu.jsp" />
		<div class="jumbotron01"
			style="background-image: url('./resources/background.jpg')">
			<div class="container">상품정보</div>
		</div>
		<%
		String id = request.getParameter("id");
		%>
		<%@ include file="dbconn.jsp"%>
		<%
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "SELECT * FROM product WHERE p_id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		rs = pstmt.executeQuery();
		while (rs.next()) {
		%>
		<div class="container">
			<div class="row">
				<div class="col-md-5">
					<img src="./resources/images/<%=rs.getString("p_filename")%>"
						style="width: 100%">
				</div>
				<div class="col-md-6">
					<h3><%=rs.getString("p_name")%></h3>
					<p><%=rs.getString("p_description")%>
					<p>
						<b><fmt:message key="productId" /> : </b><span
							class="badge badge-danger"> <%=rs.getString("p_id")%></span>
					<p>
						<b><fmt:message key="manufacturer" /></b> :
						<%=rs.getString("p_manufacturer")%>
					<p>
						<b><fmt:message key="category" /></b> :
						<%=rs.getString("p_category")%>
					<p>
						<b><fmt:message key="unitsInStock" /></b> :
						<%=rs.getString("p_unitsInStock")%>
					<h4><%=rs.getString("p_unitPrice")%>원
					</h4>
					<p>
					<form name="addForm"
						action="./addCart.jsp?id=<%=rs.getString("p_id")%>" method="post">
						<p>
							<a href="#" class="btn btn-info" onclick="addToCart()"><fmt:message
									key="order" /></a> <a href="./cart.jsp" class="btn btn-warning"><fmt:message
									key="shoppingBasket" /> &raquo;</a> <a href="./products.jsp"
								class="btn btn-secondary"> <fmt:message key="productList" />
								&raquo;
							</a>
					</form>
				</div>
			</div>
			<div class="row">
				<div class="page-header">
					<br> <br> <br> <br>
					<h4>
						<fmt:message key="relatedRecipes" />
					</h4>
				</div>
				<%
				PreparedStatement pstmt2 = null;
				ResultSet rs2 = null;
				String sql2 = "SELECT * FROM cocktail";
				pstmt2 = conn.prepareStatement(sql2);
				rs2 = pstmt2.executeQuery();
				while (rs2.next()) {
					if (rs2.getString("c_ingredient").contains(rs.getString("p_name")))
				%>
				<div class="col-md-4" style="width: 320px; height: 450px;">
					<img src="./resources/images/<%=rs2.getString("c_filename")%>"
						style="width: 100%; height: 50%;">
					<h3><%=rs2.getString("c_name")%></h3>
					<p>
						<a href="./cocktail.jsp?id=<%=rs2.getString("c_id")%>"
							class="btn btn-secondary" role="button"> <!-- &raquo; = 특수문자 >> -->
							<fmt:message key="description" /> &raquo;
						</a>
				</div>
				<%
				}
				%>
			</div>
		</div>
		<%
		}
		%>
		<jsp:include page="footer.jsp" />
	</fmt:bundle>
</body>
</html>