<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Cocktail"%>
<%@ page import="dao.CocktailRepository"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<link rel="stylesheet" href="./resources/css/jumbotron.css">
<title>목록</title>
</head>
<body>
	<div class="jumbotron" style="background-image: url('./resources/images/background.jpg')">
		<div class="container">
			<h1 class="display-3">칵테일 목록</h1>
		</div>
	</div>
	<jsp:include page="menu.jsp" />
	<%
	CocktailRepository dao = CocktailRepository.getInstance();
	ArrayList<Cocktail> listOfCocktails = dao.getAllCocktails();
	%>
	<div class="container">
		<%
		for (int i = 0; i < listOfCocktails.size(); i++) {
			Cocktail cocktail = listOfCocktails.get(i);
		%>
		<div class="row" align="left">
			<div class="col-md-3">
				<img src="./resources/images/<%=cocktail.getFilename()%>"
					style="width: 80%" />
			</div>
			<div class="col-md-6">
				<h3><%=cocktail.getName()%></h3>
				<p><%=cocktail.getDescription()%>				</p>
				<a href="./cocktail.jsp?id=<%=cocktail.getCocktailId()%>"
					class="btn btn-secondary" role="button"> 상세 정보 &raquo;></a>
			</div>
		</div>
		<hr style="border: grey 1px dashed">
		<%
		}
		%>
	</div>

	<jsp:include page="footer.jsp" />

</body>
</html>