<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome</title>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<link rel="stylesheet" href="./resources/css/jumbotron.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap"
	rel="stylesheet">
<script type="text/javascript" src="./resources/js/game.js"></script>
<script>
	function randomNum(min, max) {
		var randNum = Math.floor(Math.random() * (max - min + 1)) + min;
		return randNum;
	}

	function button_click() {
		var a = randomNum(3, 5);
		var b = 0;
		for (var i = 0; i < a; i++) {
			var Num = randomNum(1, 7);
			if (Num == 1) {
				var ret = confirm("상큼한 모히또는 어떠신가요?");
				if (ret == true) {
					b = 1;
					window.open('https://youtu.be/v5wbDuFIpE8');
				}
			} else if (Num == 2) {
				var ret = confirm("해장용 칵테일이라고 불리는 블러드 메리는 어떠신가요?");
				if (ret == true) {
					b = 1;
					window.open('https://youtu.be/-_PyWRNhk_4');
				}
			} else if (Num == 3) {
				var ret = confirm("아름다운 레인보우 칵테일은 어떠신가요?");
				if (ret == true) {
					b = 1;
					window.open('https://youtu.be/5anRn5C5EQU');
				}
			} else if (Num == 4) {
				var ret = confirm("익숙한 소주의 새로운 변신! 소주 칵테일은 어떠신가요?");
				if (ret == true) {
					b = 1;
					window.open('https://youtu.be/EhocdgBJ_fA');
				}
			} else if (Num == 5) {
				var ret = confirm("익숙한 막걸리의 새로운 변신! 막걸리 칵테일은 어떠신가요?");
				if (ret == true) {
					b = 1;
					window.open('https://youtu.be/XlyZ1boYO2Q');
				}
			} else if (Num == 6) {
				var ret = confirm("달달하고 가볍게 먹기 좋은 퍼지네이블 어떠신가요?");
				if (ret == true) {
					b = 1;
					window
							.open('https://youtube.com/shorts/WnkMayu5kBI?feature=share');
				}
			} else if (Num == 7) {
				var ret = confirm("달달하지만 도수가 강한 잭콕은 어떠신가요?");
				if (ret == true) {
					b = 1;
					window.open('https://youtu.be/XLsdouDY1qs');
				}
			}
		}
		if (b == 0) {
			alert("그렇다면 오늘은 술말고 다른 취미생활을 즐기는건 어떠세요?");
		} else if (b == 1) {
			alert("즐거운 시간 되세요");
		}
	}

	function randomCocktail() {
		var arr = [ '럼', '오렌지', '피치트리', '블루큐라소', '젝다니엘', '진', '레몬', '민트', '꼬냑',
				'비터스', '오렌지주스', '파인애플 주스', '깔루아', '토닉', '탄산수' ];
		var a = randomNum(2, 10);
		var b = new Array(a);
		var recipe = "";
		for (var i = 0; i < a; i++) {
			var n = randomNum(0, 9);
			b[i] = arr[n];
			for (var j = 0; j < i; j++) {
				if (b[i] == b[j]) {
					i--;
					break;
				}
			}
		}
		for (var i = 0; i < a; i++) {
			recipe = recipe + b[i] + ' | ';
		}
		document.getElementById('printRandom').innerHTML = ' | ' + recipe;
	}
</script>
</head>
<body>

	<fmt:setLocale value='<%=request.getParameter("language")%>' />
	<fmt:bundle basename="bundle.message">
		<%@ include file="menu.jsp"%>
		<div class="jumbotron01"
			style="background-image: url('./resources/background.jpg')">
			<div class="container">

				<b> Mixing You
			</div>
		</div>
		<div class="container">
			<div class="text-center">
				<div class="page-header">
					<h1>
						바텐더의 레시피 추천
						<p>
							<small> 바텐더를 클릭해보세요!</small>
					</h1>
				</div>
				<br> <img src="./resources/images/바텐더.jpg" width="700"
					onclick="button_click()">

			</div>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<hr style="height: 3px;  background-color: gray;">
			<br>
			<br>
			<br>
			<div class="text-center">
				<div class="page-header">
					<h1>
						랜덤 칵테일
						<p>
							<small> 랜덤으로 뽑힌 재료로 칵테일을 만들어 보세요! </small>
							<p>
							<small> Go! 클릭!</small>
					</h1>
				</div>
				<button type="button" onclick="randomCocktail();" style="width: 200px; height: 150px; background-color:#A9A9A9; font-weight:bolder; border-radius:100px; font-size:80px; font-color:white;">Go!</button>
				<!-- /input-group -->
				<div id="printRandom" style="margin:50px; font-size:50px"></div>
			</div>
			<hr>
		</div>
		<%@ include file="footer.jsp"%>
	</fmt:bundle>
</body>
</html>