<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Cocktail"%>
<%@ page import="dao.CocktailRepository"%>
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
				<%
				for (int i = 0; i < listOfCocktails.size(); i++) {
					Cocktail cocktail = listOfCocktails.get(i);
				%>
				<div class="col-sm-6 col-md-4">
					<div class="thumbnail"
						style="box-shadow: 10px 10px 10px gray; width: 320px; height: 500px; margin: 30px;">
						<img src="./resources/images/<%=cocktail.getFilename()%>"
							style="width: 100%; height: 50%">

						<h3><%=cocktail.getName()%></h3>
						<div style="overflow: hidden; height: 30%">
							<%=cocktail.getDescription()%>
						</div>
						<p>
							<a href="./cocktail.jsp?id=<%=cocktail.getCocktailId()%>"
								style="background: gray" class="btn btn-primary" role="button">Button</a>
							<a href="#" class="btn btn-default" role="button">Button</a>
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