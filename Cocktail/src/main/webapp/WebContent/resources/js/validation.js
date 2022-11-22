function CheckAddProduct() {

	var productId = document.getElementById("productId");
	var name = document.getElementById("name");
	var unitPrice = document.getElementById("unitPrice");
	var unitsInStock = document.getElementById("unitsInStock");

	//아이디검사
	if (!check(/^ISBN[a-zA-Z0-9]{1,8}$/, productId,
		"[도서 코드]\nISBN과 숫자를 조합하여 5~12까지 입력하세요.\n첫글자는 반드시 ISBN로 시작하세요."))
		return false;

	//상품명길이
	if (name.value.length < 4 || name.value.length > 12) {
		alert("[상품명]\n최소 4자에서 12자까지 입력하세요.");
		name.select();
		name.focus();
		return false;
	}

	//상품가격길이
	if (unitPrice.value.length == 0 || isNaN(unitPrice.value)) {
		alert("[가격]\n숫자만 입력하세요.");
		unitPrice.select();
		unitPrice.focus();
		return false;
	}

	//가격음수여부
	if (unitPrice.value < 0) {
		alert("[가격]\n음수는 입력할 수 없습니다.");
		unitPrice.select();
		unitPrice.focus();
		return false;
	} else if (!check(/^\d+?:[.]?[\d]?[\d]?$/, unitPrice, "[가격]\n소수점 둘째 자리까지만 입력하세요."))
		return false;

	//재고수
	if (isNaN(unitsInStock.value)) {
		alert("[재고 수]\n숫자만 입력하세요.");
		unitsInStock.select();
		unitsInStock.focus();
		return false;
	}

	function check(regExp, e, msg) {
		if (regExp.test(e.value))
			return true;

		alert(msg);
		e.select();
		e.focus();
		return false;
	}
	document.newProduct.submit();
}