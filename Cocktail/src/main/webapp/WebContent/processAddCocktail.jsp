<%@page import="java.util.concurrent.Flow.Publisher"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="dto.Cocktail"%>
<%@ page import="dao.CocktailRepository"%>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ include file="dbconn.jsp"%>
<%
request.setCharacterEncoding("utf-8");

String filename = "";
String realFolder = "C:\\Users\\min\\eclipse-workspace\\Cocktail\\Cocktail\\src\\main\\webapp\\WebContent\\resources\\images";
int maxSize = 5 * 1024 * 1024;
String encType = "utf-8";

MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());

String cocktailId = multi.getParameter("cocktailId");
String name = multi.getParameter("name");
String description = multi.getParameter("description");
String category = multi.getParameter("category");
String youtube = multi.getParameter("youtube");
String recipe = multi.getParameter("recipe");
String[] ingredient = multi.getParameterValues("ingredient");
String ingredients = "";
/*
ArrayList<String> listOfIngredient = new ArrayList<>();
for(String temp : ingredient){

	listOfIngredient.add(temp);

	}
*/
for(String temp : ingredient){

	ingredients = ingredients + temp + "  / " ;

	}
Enumeration files = multi.getFileNames();
String fname = (String) files.nextElement();
String fileName = multi.getFilesystemName(fname);

PreparedStatement pstmt = null;
String sql = "INSERT INTO product VALUES(?,?,?,?,?,?,?,?)";
pstmt = conn.prepareStatement(sql);
pstmt.setString(1, cocktailId);
pstmt.setString(2, name);
pstmt.setString(3, description);
pstmt.setString(4, category);
pstmt.setString(5, fileName);
pstmt.setString(6, youtube);
pstmt.setString(7, recipe);
pstmt.setString(8, ingredients);
pstmt.executeUpdate();
if(pstmt != null)
    pstmt.close();
if(conn != null)
    conn.close();


response.sendRedirect("cocktails.jsp");
%>