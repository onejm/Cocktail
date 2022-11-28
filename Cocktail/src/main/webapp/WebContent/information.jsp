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
			<div class="container">Ĭ���� �Թ���</div>
		</div>

		<div class="container">

			<div class="row" style="display: flex; justify-content: center;">

				<div class="col-md-8">
					<div class="page-header">
						<h1>���� ���</h1>
					</div>
					<div class="page-header">
						<h1>
							<small>����ŷ</small>
						</h1>
					</div>
					<iframe width="560" height="315"
						src="https://www.youtube.com/embed/vGLQ-vLzils"
						title="YouTube video player" frameborder="0"
						allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
						allowfullscreen></iframe>
					<h4>
						������ ������� ���� ����ŷ�� ����� ����ŷ�̶�� �Ѵ�.<br> ������ �񼮵Ǵ� ���� ���ϰ� �µ��� ����
						�ʿ䰡 ������ ��Ȥ ���ȴ�.<br> �� ��� ����Ŀ�� ���� ���� �µ��� ����ŷ�� ��Ǫ�� ���ڿ� ���� ������
						����Ŀ�� ���� ������ �����ؾ��Ѵ�. ���ʴ� ����� ���̴�. <br>���� ��û���� ǳ���� ��ǰ�� ������� �Ҷ�
						�� ������ ����ŷ�� �� ���� �ִµ�, �� ��� �������� ���� ����ŷ�� �ϱ� ���� ����� ����ŷ�� ���༭ ��ǰ�� �̸�
						����� ��찡 �ִ�.
					</h4>
					<div class="page-header">
						<h1>
							<small>������</small>
						</h1>
					</div>
					<iframe width="560" height="315"
						src="https://www.youtube.com/embed/A0lgIs_Xz_8"
						title="YouTube video player" frameborder="0"
						allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
						allowfullscreen></iframe>
					<div class="page-header">
						<h4>
							Throwing technique�� Boadas technique, �Ǵ� �Ѹ� ����̶�� �˷��� �ִ� Ĭ����
							�������, ����� ����ũ�� ���͸� ���� �� 3�� Ĭ���� �ͽ� ����̶� �򰡹ް� �ִ�. <br> <br>
							���� ������ ���� ���� ������ �Բ� ��Ƴ��� ����̶� ���� �ε巯������, �� ������ ���� �󵵰� ���� ���ῡ ����
							����ϴ� ���̴�. ��ǥ���� ���δ� ���� �޸��� �ְڴ�. <br> <br> Ư¡�� �ִٸ� ��ǰ��
							��ô ���� ����ٴ� ��. ���Ͱ� ��ǰ�� �������� �ʱ� ���� ���ǰ�, ����ũ�� �̼��� ��ǰ�� �����ϱ� ����
							���ȴٸ�, �������� ��ǰ�� ���� �����ϱ� ���� ���ȴٰ� �� �� �ְڴ�. �� �ܿ��� ��ᰡ ������ ���� �ʰ�,
							����� ���⿡ ���� ����Ǳ� ������ �µ��� �����������ٴ� ���� �����Ѵ�. <br>��� �� ����� ����
							Ĭ������ �ͽ��� �������� ������� ����� �ƴϸ�, ������ �߱����� ���� �����ų� �����ο��� �θ� ������ ���� ��
							����ϴ� ����̾�����, ���� �̱��̳� ��� �������� Ĭ���� ������� ����ϱ� �����ߴ�.
						</h4>
						<h1>
							<small>���͸�</small>
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