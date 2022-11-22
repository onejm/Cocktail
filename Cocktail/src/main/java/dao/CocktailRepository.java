package dao;

import java.util.ArrayList;
import dto.Cocktail;

public class CocktailRepository {
	ArrayList<Cocktail> listOfCocktails = new ArrayList<Cocktail>();
	private static CocktailRepository instance = new CocktailRepository();

	public static CocktailRepository getInstance() {
		return instance;
	}

	public CocktailRepository() {
		Cocktail b1 = new Cocktail("B1", "[Hello Coding] HTML5+CSS3", 15000);
		b1.setDescription(
				"워드나 PPT 문서를 만들 수 있나요? 그러면 문제 없습니다. 지금 바로 웹페이지 제작에 도전해보세요. 지금 당장 컴퓨터가 없어도 괜찮습니다. 코드와 실행 화면이 바로 보여서 눈으...");
		b1.setAuthor("황재호");
		b1.setPublisher("한빛미디어");
		b1.setCategory("Hello Coding");
		b1.setTotalPages(268);
		b1.setUnitsInStock(1000);
		b1.setReleaseDate("2018/03/02");
		b1.setFilename("B1.jpg");
		b1.setYoutube("https://www.youtube.com/embed/wsUV3i8RHQ4");

		Cocktail b2 = new Cocktail("B2", "[IT 모바일] 쉽게 배우는 자바 프로그래밍", 27000);
		b2.setDescription(
				"객체 지향의 핵심과 자바의 현대적 기능을 충실히 다루면서도 초보자가 쉽게 학습할 수 있게 구성했습니다. 시각화 도구를 활용한 개념 설명과 군더더기 없는 핵심 코드를 통해 개념과 구현...");
		b2.setAuthor("우종중");
		b2.setPublisher("한빛미디어");
		b2.setUnitsInStock(1000);
		b2.setTotalPages(692);
		b2.setReleaseDate("2017/08/02");
		b2.setFilename("B2.png");


		listOfCocktails.add(b1);
		listOfCocktails.add(b2);

	}

	public ArrayList<Cocktail> getAllCocktails() {
		return listOfCocktails;
	}

	public Cocktail getCocktailById(String cocktailId) {
		Cocktail cocktailByid = null;

		for (int i = 0; i < listOfCocktails.size(); i++) {
			Cocktail cocktail = listOfCocktails.get(i);
			if (cocktail != null && cocktail.getCocktailId() != null && cocktail.getCocktailId().equals(cocktailId)) {
				cocktailByid = cocktail;
				break;
			}
		}
		return cocktailByid;
	}

	public void addCocktail(Cocktail cocktail) {
		listOfCocktails.add(cocktail);
	}
}
