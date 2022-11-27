<%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%
    Connection conn = null;
    String url = "jdbc:mysql://localhost:3306/CocktailDB";
    String user = "root";
    String password = "1234";
    try{
        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection(url, user, password);
    }catch(Exception e){
        out.println("데이터베이스 연결이 실패했습니다.<br>");
        out.println("SQLException : "+e.getMessage());
    }
%>