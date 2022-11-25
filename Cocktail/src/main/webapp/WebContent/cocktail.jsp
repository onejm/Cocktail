<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="dto.Cocktail"%>
<%@ page import="dao.CocktailRepository"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>
<%@ page import="java.util.ArrayList"%>
<%@ page errorPage="exceptionNoCocktailId.jsp"%>
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
		<jsp:include page="menu.jsp" />
		<div class="jumbotron01"
			style="background-image: url('./resources/background.jpg')">
			<div class="container"><fmt:message key="cocktailInfo" /></div>
		</div>

		<%
		String id = request.getParameter("id");
		CocktailRepository dao = CocktailRepository.getInstance();
		Cocktail cocktail = dao.getCocktailById(id);
		%>
		<div class="container">
			<div class="row">
				<div class="col-md-5">
					<img src="./resources/images/<%=cocktail.getFilename()%>"
						style="width: 80%">
				</div>
				<div class="col-md-6">
					<h3 style="font-weight: bold;"><%=cocktail.getName()%></h3>
					<p>
						재료:
						<%!Product a;%>
						<%
						ProductRepository productDao = ProductRepository.getInstance();
						ArrayList<Product> listOfProducts = productDao.getAllProducts();
						ArrayList<String> listOfIngredient = cocktail.getIngredient();

						for (String i : listOfIngredient) {
							for (Product p : listOfProducts) {
								if (p.getPname() == i) {
							a = p;
								}
							}
						%>
						<a href="./product.jsp?id=<%=a.getProductId()%>"
							class="btn btn-secondary"><%=i%></a> |
						<%
						}
						%>
					
					<p><%=cocktail.getDescription()%>
					<p>
				</div>

				<div class="col-md-11">
					<br>
					<div class="panel panel-default">
						<div class="panel-heading">
							<div style="font-size: 50px; font-weight: bold;"><fmt:message key="recipe" /></div>
						</div>
						<div class="panel-body">
							<p align="middle">
								<iframe width="560" height="315"
									src="<%=cocktail.getYoutube()%>" frameborder="0"
									allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
									allowfullscreen></iframe>
							</p>
							<p><%=cocktail.getRecipe()%>
						</div>
					</div>

				</div>
			</div>
		</div>
		<jsp:include page="footer.jsp" />
	</fmt:bundle>
</body>
</html>
