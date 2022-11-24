<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<link rel="stylesheet" href="./resources/css/jumbotron.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap"
	rel="stylesheet">
<meta charset="UTF-8">
<script type="text/javascript" src="resources/js/validation.js"></script>
<title>$Title$</title>
<script>
	var arrInput = new Array(0);
	var arrInputValue = new Array(0);

	function addInput() {
		arrInput.push(arrInput.length);
		arrInputValue.push("");
		display();
	}

	function display() {
		document.getElementById('ingredient').innerHTML = "";
		for (intI = 0; intI < arrInput.length; intI++) {
			document.getElementById('ingredient').innerHTML += createInput(
					arrInput[intI], arrInputValue[intI]);
		}
	}

	function saveValue(intId, strValue) {
		arrInputValue[intId] = strValue;
	}

	function createInput(id, value) {
		return "<input type='text' class='form-control' name='ingredient' '><br>";
	}

	function deleteInput() {
		if (arrInput.length > 0) {
			arrInput.pop();
			arrInputValue.pop();
		}
		display();
	}
</script>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<fmt:setLocale value='<%=request.getParameter("language")%>' />
	<fmt:bundle basename="bundle.message">
			<div class="jumbotron01" style="background-image: url('./resources/background.jpg')">
			<div class="container">
					<fmt:message key="cocktailTitle" />
			</div>
		</div>

		<div class="container">
			<div class="text-right">
				<a href="?language=kor">Korean</a>|<a href="?language=en">English</a>
				<a href="logout.jsp" class="btn btn-sm btn-success pull-right">Logout</a>
			</div>
			<form action="processAddCocktail.jsp" name="newCocktail"
				class="form-horizontal" method="post" enctype="multipart/form-data">

				<div class="form-group row">
					<label class="col-sm-2"><fmt:message key="cocktailId" /></label>
					<div class="col-sm-3">
						<input type="text" id="cocktailId" name="cocktailId"
							class="form-control">
					</div>
				</div>

				<div class="form-group row">
					<label class="col-sm-2"><fmt:message key="name" /></label>
					<div class="col-sm-3">
						<input type="text" name="name" id="name" class="form-control">
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2"><fmt:message key="description" /></label>
					<div class="col-sm-5">
						<textarea name="description" cols="20" rows="2"
							class="form-control"></textarea>
					</div>
				</div>

				<div class="form-group row">
					<label class="col-sm-2"><fmt:message key="category" /></label>
					<div class="col-sm-3">
						<input type="text" name="category" class="form-control">
					</div>
				</div>

				<div class="form-group row">
					<label class="col-sm-2"><fmt:message key="youtube" /></label>
					<div class="col-sm-3">
						<input type="text" name="youtube" id="youtube"
							class="form-control">
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2"><fmt:message key="recipe" /></label>
					<div class="col-sm-3">
						<input type="text" name="recipe" id="recipe" class="form-control">
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2"><fmt:message key="cocktailImage" /></label>
					<div class="col-sm-5">
						<input type="file" name="cocktailImage" class="form-control">
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2"><fmt:message key="ingredient" /></label>
					<div class="col-sm-5">
						<div id="ingredient" ></div>
						<input type="button" value="추가" onclick="addInput();" /> <input
							type="button" value="삭제" onclick="deleteInput();" />
					</div>
				</div>

				<div class="form-group row">
					<div class="col-sm-offset-2 col-sm-10">
						<input type="submit" class="btn btn-primary"
							value="<fmt:message key="button"/>">
					</div>
				</div>
			</form>
		</div>
		<jsp:include page="footer.jsp" />
	</fmt:bundle>
</body>
</html>