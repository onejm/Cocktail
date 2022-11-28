package dao;

import java.util.ArrayList;

import dto.Product;

public class ProductRepository {

	private ArrayList<Product> listOfProducts = new ArrayList<Product>();
	private static ProductRepository instance = new ProductRepository();
	   
    public static ProductRepository getInstance() {
        return instance;
    }
	
	public ProductRepository() {
		Product phone = new Product("P1234", "믹", 8000);
		phone.setDescription("칵테일 제조용 도구로, 칵테일 제조 기법 중 스터를 이용할 때 쓰는 컵으로 일반 유리잔보다 벽이 두텁고 용량이 크다. 모양은 딱히 정해지지 않았지만 흔히 비커와 비슷한 모양으로 따르는 주둥이가 있다");
		phone.setCategory("Tool");
		phone.setManufacturer("믹싱글라스 제조사");
		phone.setUnitsInStock(1000);
		phone.setFilename("P1234.png");

		Product P0001 = new Product("P0001", "온더락잔", 2000);
		P0001.setDescription("");
		P0001.setCategory("도구");
		P0001.setManufacturer("코렐");
		P0001.setUnitsInStock(98);
		P0001.setFilename("P0001.PNG");
		
		Product P0002 = new Product("P0002", "커피리큐르", 17000);
		P0002.setDescription("");
		P0002.setCategory("술");
		P0002.setManufacturer("앱솔루트");
		P0002.setUnitsInStock(12);
		P0002.setFilename("P0002.PNG");
		
		Product P0003 = new Product("P0003", "보드카", 24000);
		P0003.setDescription("");
		P0003.setCategory("술");
		P0003.setManufacturer("앱솔루트");
		P0003.setUnitsInStock(25);
		P0003.setFilename("P0003.PNG");
		
		Product P0004 = new Product("P0004", "바스푼", 4500);
		P0004.setDescription("");
		P0004.setCategory("도구");
		P0004.setManufacturer("코렐");
		P0004.setUnitsInStock(43);
		P0004.setFilename("P0004.PNG");


		listOfProducts.add(P0001);
		listOfProducts.add(P0002);
		listOfProducts.add(P0003);
		listOfProducts.add(P0004);
	}
	
	public ArrayList<Product> getAllProducts() {
		return listOfProducts;
	}
	
	public Product getProductById(String productId) {
		Product productById = null;
		
		for(int i=0; i<listOfProducts.size(); i++) {
			Product product = listOfProducts.get(i);
			
			if(product!=null && product.getProductId()!= null && product.getProductId().equals(productId)) {
				productById = product;
				break;
			}
		}
		
		return productById;
	}
	
	public void addProduct(Product product) {
		listOfProducts.add(product);
	}
}