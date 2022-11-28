<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Cocktail"%>
<%@ page import="dao.CocktailRepository"%>
<%@ page import="java.sql.*"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<link rel="stylesheet" href="./resources/css/jumbotron.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap"
	rel="stylesheet">
<title>목록</title>
</head>
<body>
	<fmt:setLocale value='<%=request.getParameter("language")%>' />
	<fmt:bundle basename="bundle.message">
		<div class="jumbotron01"
			style="background-image: url('./resources/background.jpg')">
			<div class="container">
				<p><fmt:message key="cocktailList"/>
			</div>
		</div>

		<jsp:include page="menu.jsp" />
		<%
		CocktailRepository dao = CocktailRepository.getInstance();
		ArrayList<Cocktail> listOfCocktails = dao.getAllCocktails();
		%>
		<div class="container">
			<div class="row">
				<%@ include file="dbconn.jsp"%>
				<%
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				String sql = "SELECT * FROM cocktail";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				while (rs.next()) {
				%>
				<div class="col-sm-6 col-md-4">
					<div class="thumbnail"
						style=" width: 320px; height: 500px; margin: 30px;">
						<img src="./resources/images/<%=rs.getString("c_filename")%>"
							style="width: 100%; height: 50%">

						<h3><%=rs.getString("c_name")%></h3>
						<div style="overflow: hidden; height: 30%">
							<%=rs.getString("c_description")%>
						</div>
						<p>
							<a href="./cocktail.jsp?id=<%=rs.getString("c_id")%>"
								style="background: gray" class="btn btn-primary" role="button"><fmt:message key="description"/></a>
						</p>

					</div>
				</div>
				<%
				}
				%>
			</div>
		</div>
		<jsp:include page="footer.jsp" />
	</fmt:bundle>
</body>
</html>