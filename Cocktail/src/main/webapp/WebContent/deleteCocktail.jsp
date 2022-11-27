<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ page import="java.sql.*"%>
<%@ include file="dbconn.jsp"%>
<html>
<head>
    <meta charset="UTF-8">
    <title>deleteProduct.jsp</title>
</head>
<body>
<%
    String cocktailId = request.getParameter("id");
    String sql = "SELECT * FROM cocktail";
    PreparedStatement pstmt = conn.prepareStatement(sql);
    ResultSet rs = pstmt.executeQuery();
    if(rs.next()){
        sql = "DELETE FROM cocktail WHERE c_id=?";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, cocktailId);
        pstmt.executeUpdate();
    }else out.println("일치하는 레시피가 없습니다.");
    if (rs != null)
        rs.close();
    if(pstmt != null)
        pstmt.close();
    if (conn != null)
        conn.close();
    response.sendRedirect("editCocktail.jsp?edit=delete");
%>
</body>
</html>