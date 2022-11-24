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
String realFolder = "C:\\Users\\정민\\eclipse-workspace\\Cocktail\\Cocktail\\src\\main\\webapp\\WebContent\\resources\\images";
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
ArrayList<String> listOfIngredient = new ArrayList<>();

for(String temp : ingredient){

	listOfIngredient.add(temp);

	}
Enumeration files = multi.getFileNames();
String fname = (String) files.nextElement();
String fileName = multi.getFilesystemName(fname);

CocktailRepository dao = CocktailRepository.getInstance();

Cocktail newCocktail = new Cocktail();
newCocktail.setCocktailId(cocktailId);
newCocktail.setName(name);
newCocktail.setDescription(description);
newCocktail.setCategory(category);
newCocktail.setFilename(fileName);
newCocktail.setRecipe(recipe);
newCocktail.setYoutube(youtube);
newCocktail.setIngredient(listOfIngredient);

dao.addCocktail(newCocktail);

response.sendRedirect("cocktails.jsp");
%>