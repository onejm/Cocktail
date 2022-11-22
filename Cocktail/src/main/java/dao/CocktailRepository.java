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
		Cocktail c1 = new Cocktail("C1", "모히토");
		c1.setDescription("럼 베이스 칵테일로, 명칭은 마법의 부적이라는 의미의 스페인어인 ‘Mojo’ 에서 유래한 것이다.기본적으로 럼 피즈에 민트를 첨가한 것이라고 할 수 있지만 민트의 시원한 청량감에 의해 훨씬 산뜻한 맛을 낸다.라임과 민트의 밝은 초록색이 돋보여 시각적으로도 청량감을 준다.맛은 달달함과 동시에 민트 향을 내면서 씁쓸한 뒷맛이 스쳐가니 나름 입체적인 맛이라 할 수 있다.");
		c1.setFilename("C1.PNG");
		c1.setYoutube("https://www.youtube.com/embed/8getArw9Ryk");
		c1.setRecipe("1.<br>2.");
		ArrayList<String> array1 = new ArrayList<>();
		array1.add("믹싱글라스");
        array1.add("쉐이커");
        c1.setIngredient(array1);

		Cocktail c2 = new Cocktail("B2", "블랙러시안");
		c2.setDescription("블랙 러시안 만드는법");
		c2.setFilename("B2.png");
		c1.setYoutube("https://www.youtube.com/embed/8getArw9Ryk");
		ArrayList<String> array2 = new ArrayList<>();
		c2.setRecipe("1.<br>2.");
		array2.add("믹싱글라스");
        array2.add("쉐이커");
        c2.setIngredient(array2);

		listOfCocktails.add(c1);
		listOfCocktails.add(c2);

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
