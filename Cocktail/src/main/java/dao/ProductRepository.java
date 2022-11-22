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
		Product phone = new Product("P1234", "믹싱글라스", 8000);
		phone.setDescription("칵테일 제조용 도구로, 칵테일 제조 기법 중 스터를 이용할 때 쓰는 컵으로 일반 유리잔보다 벽이 두텁고 용량이 크다. 모양은 딱히 정해지지 않았지만 흔히 비커와 비슷한 모양으로 따르는 주둥이가 있다");
		phone.setCategory("Tool");
		phone.setManufacturer("믹싱글라스 제조사");
		phone.setUnitsInStock(1000);
		phone.setFilename("P1234.png");

		Product notebook = new Product("P1235", "쉐이커", 15000);
		notebook.setDescription("캡(cap)과 스트레이너(strainer), 그리고 보디(body)로 나뉘며, 전체가 스테인레스 스틸로 만들어져 있다.");
		notebook.setCategory("Tool");
		notebook.setManufacturer("쉐이커 제조사");
		notebook.setUnitsInStock(1000);
		notebook.setFilename("P1235.png");


		listOfProducts.add(phone);
		listOfProducts.add(notebook);
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