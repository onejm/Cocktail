<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="dto.Cocktail"%>
<%@ page import="dao.CocktailRepository"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>
<%@ page import="java.util.ArrayList"%>
<%@ page errorPage="exceptionNoCocktailId.jsp"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>상품 상세 정보</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">칵테일 정보</h1>
		</div>
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
				<h3><%=cocktail.getName()%></h3>
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
					<a href="./cocktails.jsp" class="btn btn-secondary">칵테일레시피 목록
						&raquo</a>
			</div>
			<div class="col-md-11">
				<div class="page-header">
					<div class="container">
						<h1 class="display-3">Recipe</h1>
					</div>
				</div>
				<p align="middle">
					<iframe width="560" height="315" src="<%=cocktail.getYoutube()%>"
						frameborder="0"
						allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
						allowfullscreen></iframe>
				</p>
				<p><%=cocktail.getRecipe()%>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>
