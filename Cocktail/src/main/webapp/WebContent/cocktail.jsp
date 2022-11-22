<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="dto.Cocktail"%>
<%@ page import="dao.CocktailRepository"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>상품 상세 정보</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품 정보</h1>
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
					
					        <iframe width="560" height="315" src="<%=cocktail.getYoutube() %>" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
			</div>
			<div class="col-md-6">
				<h3><%=cocktail.getName()%></h3>
				<p><%=cocktail.getDescription()%>
				<p>
					<b>도서 코드:</b><span class="badge badge-danger"> <%=cocktail.getCocktailId()%></span>
				<p>
					<b>출판사</b> :
					<%=cocktail.getPublisher()%>
				<p>
					<b>저자</b> :
					<%=cocktail.getAuthor()%>
				<p>
					<b>재고수</b> :
					<%=cocktail.getUnitsInStock()%>
				<p>
					<b>총 페이지수</b> :
					<%=cocktail.getTotalPages()%>
				<p>
					<b>출판일</b> :
					<%=cocktail.getReleaseDate()%>
				<h4><%=cocktail.getUnitPrice()%>원
				</h4>
				<p>
					<a href="#" class="btn btn-info"> 도구 및 술 주문&raquo</a> <a
						href="./cocktails.jsp" class="btn btn-secondary">칵테일 목록 &raquo</a>
			</div>

		</div>
		<hr>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>
