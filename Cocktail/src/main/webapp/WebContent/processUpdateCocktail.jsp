<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import="java.util.Enumeration" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ include file="dbconn.jsp"%>
<%
    String filename = "";
    String realFolder = "C:\\Users\\min\\git\\WebMarket\\WebMarket\\src\\main\\webapp\\WebContent\\resources\\images";
    String encType = "UTF-8"; // 인코딩 유형
    int maxSize = 5*1024*1024;
    MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());
    String cocktailId = multi.getParameter("cocktailId");
    String name = multi.getParameter("name");
    String description = multi.getParameter("description");
    String category = multi.getParameter("category");
    String youtube = multi.getParameter("youtube");
    String recipe = multi.getParameter("recipe");
    String ingredients = multi.getParameter("ingredient");
    
    
    Enumeration files = multi.getFileNames();
    String fname = (String) files.nextElement();
    String fileName = multi.getFilesystemName(fname);
    
    PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "SELECT * FROM cocktail WHERE c_id=?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, cocktailId);
	rs = pstmt.executeQuery();
    if(rs.next()){
        if(fileName!=null){
            sql="UPDATE cocktail SET c_name=?, c_description=?, c_category=?, c_filename=?, c_youtube=?, c_recipe=?, c_ingredient=? WHERE c_id=?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, name);
            pstmt.setString(2, description);
            pstmt.setString(3, category);
            pstmt.setString(4, fileName);
            pstmt.setString(5, youtube);
            pstmt.setString(6, recipe);
            pstmt.setString(7, ingredients);
            pstmt.setString(8, cocktailId);
            pstmt.executeUpdate();
        }else{
        	 sql="UPDATE cocktail SET c_name=?, c_description=?, c_category=?, c_youtube=?, c_recipe=?, c_ingredient=? WHERE c_id=?";
        	 pstmt = conn.prepareStatement(sql);
             pstmt.setString(1, name);
             pstmt.setString(2, description);
             pstmt.setString(3, category);
             pstmt.setString(4, youtube);
             pstmt.setString(5, recipe);
             pstmt.setString(6, ingredients);
             pstmt.setString(7, cocktailId);
            pstmt.executeUpdate();
        }
        if (rs != null)
            rs.close();
        if (pstmt != null)
            pstmt.close();
        if (conn != null)
            conn.close();
        response.sendRedirect("editCocktail.jsp?edit=update");
    }
%>