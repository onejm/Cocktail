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
</head>
<body>

	<fmt:setLocale value='<%=request.getParameter("language")%>' />
	<fmt:bundle basename="bundle.message">
		<%@ include file="menu2.jsp"%>
		<div class="jumbotron01"
			style="background-image: url('./resources/background.jpg')">
			<div class="container">칵테일 입문서</div>
		</div>

		<div class="container">

			<div class="row" style="display: flex; justify-content: center;">

				<div class="col-md-8">
					<div class="page-header">
						<h1>조주 기법</h1>
					</div>
					<div class="page-header">
						<h1>
							<small>쉐이킹</small>
						</h1>
					</div>
					<iframe width="560" height="315"
						src="https://www.youtube.com/embed/vGLQ-vLzils"
						title="YouTube video player" frameborder="0"
						allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
						allowfullscreen></iframe>
					<h4>
						얼음을 사용하지 않은 셰이킹을 드라이 셰이킹이라고 한다.<br> 재료들이 희석되는 것을 피하고 온도가 낮을
						필요가 없을때 간혹 사용된다.<br> 이 경우 셰이커를 잡은 손의 온도와 셰이킹시 부푸는 알코올 증기 때문에
						셰이커가 쉽게 터지니 주의해야한다. 사용례는 희귀한 편이다. <br>가끔 엄청나게 풍부한 거품을 만들고자 할때
						분 단위로 셰이킹을 할 때가 있는데, 이 경우 본격적인 얼음 셰이킹을 하기 전에 드라이 셰이킹을 해줘서 거품을 미리
						만드는 경우가 있다.
					</h4>
					<div class="page-header">
						<h1>
							<small>스로잉</small>
						</h1>
					</div>
					<iframe width="560" height="315"
						src="https://www.youtube.com/embed/A0lgIs_Xz_8"
						title="YouTube video player" frameborder="0"
						allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
						allowfullscreen></iframe>
					<div class="page-header">
						<h4>
							Throwing technique나 Boadas technique, 또는 롤링 기법이라고도 알려져 있는 칵테일
							기법으로, 현재는 셰이크와 스터를 이은 제 3의 칵테일 믹싱 방법이라 평가받고 있다. <br> <br>
							공기 접촉을 통해 많은 기포를 함께 담아내는 기법이라 술이 부드러워지며, 이 때문에 보통 농도가 강한 음료에 많이
							사용하는 편이다. 대표적인 예로는 블러디 메리가 있겠다. <br> <br> 특징이 있다면 거품이
							무척 많이 생긴다는 점. 스터가 거품을 생생하지 않기 위해 사용되고, 셰이크가 미세한 거품을 생성하기 위해
							사용된다면, 쓰로잉은 거품을 많이 생성하기 위해 사용된다고 할 수 있겠다. 그 외에도 재료가 차갑게 되지 않고,
							상온의 공기에 많이 노출되기 때문에 온도가 미지근해진다는 점도 존재한다. <br>사실 이 기법은 원래
							칵테일을 믹싱할 목적으로 만들어진 기법이 아니며, 본래는 중국에서 차를 따르거나 스페인에서 셰리 와인을 따를 때
							사용하던 방법이었으나, 이후 미국이나 쿠바 등지에서 칵테일 기법으로 사용하기 시작했다.
						</h4>
						<h1>
							<small>스터링</small>
						</h1>
					</div>
					<iframe width="560" height="315"
						src="https://www.youtube.com/embed/1RRnI3_Sys8"
						title="YouTube video player" frameborder="0"
						allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
						W allowfullscreen></iframe>
					<p>
				</div>

			</div>
		</div>

		<%@ include file="footer.jsp"%>
	</fmt:bundle>
</body>
</html>