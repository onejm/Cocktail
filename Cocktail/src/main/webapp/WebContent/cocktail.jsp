<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="dto.Cocktail"%>
<%@ page import="dao.CocktailRepository"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>
<%@ page import="java.util.ArrayList"%>

<%@ page import="java.sql.*"%>
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
<title>상품 상세 정보</title>
</head>
<body>
	<fmt:setLocale value='<%=request.getParameter("language")%>' />
	<fmt:bundle basename="bundle.message">
		<jsp:include page="menu2.jsp" />
		<div class="jumbotron01"
			style="background-image: url('./resources/background.jpg')">
			<div class="container">
				<fmt:message key="cocktailInfo" />
			</div>
		</div>

		<%
		String id = request.getParameter("id");
		%>
		<%@ include file="dbconn.jsp"%>
		<%
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "SELECT * FROM cocktail WHERE c_id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		rs = pstmt.executeQuery();
		while (rs.next()) {
		%>
		<div class="container">
			<div class="row">
				<div class="col-md-5">
					<img src="./resources/images/<%=rs.getString("c_filename")%>"
						style="width: 80%">
				</div>
				<div class="col-md-6">
					<h3 style="font-weight: bold;"><%=rs.getString("c_name")%></h3>
					<p>
						재료: 
					<% 
					PreparedStatement pstmt2 = null;
					ResultSet rs2 = null;
					String sql2 = "SELECT * FROM product";
					pstmt2 = conn.prepareStatement(sql2);
					rs2 = pstmt2.executeQuery();
					while (rs2.next()){
						if(rs.getString("c_ingredient").contains(rs2.getString("p_name"))){
							%>
							<a href="./product.jsp?id=<%=rs2.getString("p_id")%>"><%=rs2.getString("p_name")%></a> /
							<%
						}
						
					}
						%>
					<p>
					<%=rs.getString("c_description")%>
				</div>

				<div class="col-md-11">
					<br>
					<div class="panel panel-default">
						<div class="panel-heading">
							<div style="font-size: 50px; font-weight: bold;">
								<fmt:message key="recipe" />
							</div>
						</div>
						<div class="panel-body">
							<p align="middle">
								<iframe width="560" height="315"
									src="<%=rs.getString("c_youtube")%>" frameborder="0"
									allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
									allowfullscreen></iframe>
							</p>
							<p><%=rs.getString("c_recipe")%>
						</div>
					</div>

				</div>
			</div>
		</div>
		<%
		}
		%>
		<jsp:include page="footer.jsp" />
	</fmt:bundle>
</body>
</html>
