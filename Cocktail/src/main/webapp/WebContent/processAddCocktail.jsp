<%@page import="java.util.concurrent.Flow.Publisher"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="dto.Cocktail"%>
<%@ page import="dao.CocktailRepository"%>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="java.util.*"%>

<%
request.setCharacterEncoding("utf-8");

String filename = "";
String realFolder = "";
int maxSize = 5 * 1024 * 1024;
String encType = "utf-8";

MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());

String cocktailId = multi.getParameter("cocktailId");
String name = multi.getParameter("name");
String unitPrice = multi.getParameter("unitPrice");
String author = multi.getParameter("author");
String publisher = multi.getParameter("publisher");
String releaseDate = multi.getParameter("releaseDate");
String totalPages = multi.getParameter("totalPages");
String description = multi.getParameter("description");
String category = multi.getParameter("category");
String unitsInStock = multi.getParameter("unitsInStock");
String condition = multi.getParameter("condition");

Integer price;

if (unitPrice.isEmpty())
	price = 0;
else
	price = Integer.valueOf(unitPrice);

long stock;
if (unitsInStock.isEmpty())
	stock = 0;
else
	stock = Long.valueOf(unitsInStock);

long pages;
if (unitsInStock.isEmpty())
	pages = 0;
else
	pages = Long.valueOf(totalPages);

Enumeration files = multi.getFileNames();
String fname = (String) files.nextElement();
String fileName = multi.getFilesystemName(fname);

CocktailRepository dao = CocktailRepository.getInstance();

Cocktail newCocktail = new Cocktail();
newCocktail.setCocktailId(cocktailId);
newCocktail.setName(name);
newCocktail.setUnitPrice(price);
newCocktail.setAuthor(author);
newCocktail.setPublisher(publisher);
newCocktail.setReleaseDate(releaseDate);
newCocktail.setTotalPages(pages);
newCocktail.setDescription(description);
newCocktail.setCategory(category);
newCocktail.setUnitsInStock(stock);
newCocktail.setCondition(condition);
newCocktail.setFilename(fileName);

dao.addCocktail(newCocktail);

response.sendRedirect("cocktials.jsp");
%>