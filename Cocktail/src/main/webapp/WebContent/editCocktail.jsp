<%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<link rel="stylesheet" href="resources/css/bootstrap.min.css" />
<link rel="stylesheet" href="./resources/css/jumbotron.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap"
	rel="stylesheet">
<meta charset="UTF-8">
<title>상품 편집</title>
<script type="text/javascript">
	function deleteConfirm(id) {
		if (confirm("해당 레시피를 삭제합니다.!") == true)
			location.href = "./deleteCocktail.jsp?id=" + id;
		else
			return;
	}
</script>
</head>
<%
    String edit = request.getParameter("edit");
%>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron01" style="background-image: url('./resources/background.jpg')">
		<div class="container">
			<h1 class="display-3">레시피 편집</h1>
		</div>
	</div>
	<div class="container">
		<div class="row" align="center">
			<%@ include file="dbconn.jsp"%>
			<%
                PreparedStatement pstmt = null;
                ResultSet rs = null;
                String sql = "SELECT * FROM cocktail";
                pstmt = conn.prepareStatement(sql);
                rs = pstmt.executeQuery();
                while(rs.next()){
            %>
			<div class="col-md-4">
				<img
					src="./resources/images/<%=rs.getString("c_filename")%>"
					style="width: 100%">
				<h3><%=rs.getString("c_name")%></h3>
				<p><%=rs.getString("c_description")%></p>
				<p>
					<%
                        if(edit.equals("update")){
                    %>
					<a href="./updateCocktail.jsp?id=<%=rs.getString("c_id")%>"
						class="btn btn-success" role="button">수정 &raquo;</a>
					<%
                        }else if(edit.equals("delete")){
                    %>
					<a href="#" onclick="deleteConfirm('<%=rs.getString("c_id")%>')"
						class="btn btn-danger" role="button">삭제 &raquo;</a>
					<%
                        }
                    %>
				
			</div>
			<%
                }
                        if (rs != null)
                            rs.close();
                        if (pstmt !=null)
                            pstmt.close();
                        if (conn != null)
                            conn.close();
                %>
		</div>
		<hr>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>