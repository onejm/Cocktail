<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>
<%@ page errorPage="exceptionNoProductId.jsp"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Cocktail"%>
<%@ page import="dao.CocktailRepository"%>
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
		ProductRepository dao = ProductRepository.getInstance();
		Product product = dao.getProductById(id);
		%>
		<div class="container">
			<div class="row">
				<div class="col-md-5">
					<img src="./resources/images/<%=product.getFilename()%>"
						style="width: 100%">
				</div>
				<div class="col-md-6">
					<h3><%=product.getPname()%></h3>
					<p><%=product.getDescription()%>
					<p>
						<b><fmt:message key="productId" /> : </b><span
							class="badge badge-danger"> <%=product.getProductId()%></span>
					<p>
						<b><fmt:message key="manufacturer" /></b> :
						<%=product.getManufacturer()%>
					<p>
						<b><fmt:message key="category" /></b> :
						<%=product.getCategory()%>
					<p>
						<b><fmt:message key="unitsInStock" /></b> :
						<%=product.getUnitsInStock()%>
					<h4><%=product.getUnitPrice()%>원
					</h4>
					<p>
					<form name="addForm"
						action="./addCart.jsp?id=<%=product.getProductId()%>"
						method="post">
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
					<br> <br> <br> <br> <h4> <fmt:message
							key="relatedRecipes" />
					</h4>
				</div>
				<%
				CocktailRepository cocktailDao = CocktailRepository.getInstance();
				ArrayList<Cocktail> listOfCocktails = cocktailDao.getAllCocktails();
				for (Cocktail c : listOfCocktails) {
					ArrayList<String> listOfIngredient = c.getIngredient();
					for (String i : listOfIngredient) {
						if (product.getPname() == i) {
				%>
				<div class="col-md-4" style="width: 320px; height: 450px;">
					<img src="./resources/images/<%=c.getFilename()%>"
						style="width: 100%; height:50%;">
					<h3><%=c.getName()%></h3>
					<p>
						<a href="./cocktail.jsp?id=<%=c.getCocktailId()%>"
							class="btn btn-secondary" role="button"> <!-- &raquo; = 특수문자 >> -->
							<fmt:message key="description" /> &raquo;
						</a>
				</div>
				<%
				}
				}
				}
				%>



			</div>
		</div>
		<jsp:include page="footer.jsp" />
	</fmt:bundle>
</body>
</html>