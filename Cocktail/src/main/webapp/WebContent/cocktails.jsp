<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Book"%>
<%@ page import="dao.BookRepository"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<title>도서 목록</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">도서 목록</h1>
		</div>
	</div>
	<%
	BookRepository dao = BookRepository.getInstance();
	ArrayList<Book> listOfBooks = dao.getAllBooks();
	%>
	<div class="container">
		<%
		for (int i = 0; i < listOfBooks.size(); i++) {
			Book book = listOfBooks.get(i);
		%>
		<div class="row" align="left">
			<div class="col-md-3">
				<img src="./resources/images/<%=book.getFilename()%>"
					style="width: 80%" />
			</div>
			<div class="col-md-6">
				<h3><%=book.getName()%></h3>
				<p><%=book.getDescription()%>
				<p><%=book.getAuthor() + " | " + book.getPublisher() + " | " + book.getUnitPrice()%>원
				</p>
				<a href="./product.jsp?id=<%=book.getBookId()%>"
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

