package dto;

import java.util.ArrayList;

public class Cocktail {
	private String cocktailId;
	private String name;
	private String description;
	private String category;
	private String filename;
	private String youtube;
	private ArrayList<String> ingredient;
	private String recipe;


	public String getRecipe() {
		return recipe;
	}

	public void setRecipe(String recipe) {
		this.recipe = recipe;
	}

	public Cocktail() {
		super();
	}

	public Cocktail(String cocktailId, String name) {
		this.cocktailId = cocktailId;
		this.name = name;
	}

	public String getCocktailId() {
		return cocktailId;
	}

	public void setCocktailId(String cocktailId) {
		this.cocktailId = cocktailId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String desciption) {
		this.description = desciption;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}
	
	public String getYoutube() {
		return youtube;
	}

	public void setYoutube(String youtube) {
		this.youtube = youtube;
	}

	public ArrayList<String> getIngredient() {
		return ingredient;
	}

	public void setIngredient(ArrayList<String>ingredient) {
		this.ingredient = ingredient;
	}
	



}
