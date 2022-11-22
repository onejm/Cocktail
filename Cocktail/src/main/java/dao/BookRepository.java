package dao;

import java.util.ArrayList;
import dto.Book;

public class BookRepository {
	ArrayList<Book> listOfBooks = new ArrayList<Book>();
	private static BookRepository instance = new BookRepository();

	public static BookRepository getInstance() {
		return instance;
	}

	public BookRepository() {
		Book b1 = new Book("B1", "[Hello Coding] HTML5+CSS3", 15000);
		b1.setDescription(
				"워드나 PPT 문서를 만들 수 있나요? 그러면 문제 없습니다. 지금 바로 웹페이지 제작에 도전해보세요. 지금 당장 컴퓨터가 없어도 괜찮습니다. 코드와 실행 화면이 바로 보여서 눈으...");
		b1.setAuthor("황재호");
		b1.setPublisher("한빛미디어");
		b1.setCategory("Hello Coding");
		b1.setTotalPages(268);
		b1.setUnitsInStock(1000);
		b1.setReleaseDate("2018/03/02");
		b1.setFilename("B1.jpg");

		Book b2 = new Book("B2", "[IT 모바일] 쉽게 배우는 자바 프로그래밍", 27000);
		b2.setDescription(
				"객체 지향의 핵심과 자바의 현대적 기능을 충실히 다루면서도 초보자가 쉽게 학습할 수 있게 구성했습니다. 시각화 도구를 활용한 개념 설명과 군더더기 없는 핵심 코드를 통해 개념과 구현...");
		b2.setAuthor("우종중");
		b2.setPublisher("한빛미디어");
		b2.setUnitsInStock(1000);
		b2.setTotalPages(692);
		b2.setReleaseDate("2017/08/02");
		b2.setFilename("B2.png");

		Book b3 = new Book("B3", "[IT 모바일] 스프링4 입문", 27000);
		b3.setDescription(
				"스프링은 단순히 사용 방법만 익히는 것보다 아키텍처를 어떻게 이해하고 설계하는지가 더 중요합니다. 예제를 복사해 붙여넣는 식으로는 실제 개발에서 스프링을 제대로 활용할 수 없습니다...");
		b3.setAuthor("하세가와 유이치, 오오노 와타루, 토키 코헤이(권은철, 전민수)");
		b3.setPublisher("한빛미디어");
        b3.setUnitsInStock(1000);
        b3.setTotalPages(520);
        b3.setReleaseDate("2017/11/01");
		b3.setFilename("B3.jpg");

		listOfBooks.add(b1);
		listOfBooks.add(b2);
		listOfBooks.add(b3);
	}

	public ArrayList<Book> getAllBooks() {
		return listOfBooks;
	}

	public Book getBookById(String bookId) {
		Book bookByid = null;

		for (int i = 0; i < listOfBooks.size(); i++) {
			Book book = listOfBooks.get(i);
			if (book != null && book.getBookId() != null && book.getBookId().equals(bookId)) {
				bookByid = book;
				break;
			}
		}
		return bookByid;
	}

	public void addBook(Book book) {
		listOfBooks.add(book);
	}
}
