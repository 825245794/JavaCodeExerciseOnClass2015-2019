package cc.test.vo;

public class Book {
	private String bookId;
	private String bookName;
	private String bookImg;
	private int bookNum;

	public Book(String bookId, String bookName, String bookImg, int bookNum) {
		this.bookId = bookId;
		this.bookName = bookName;
		this.bookImg = bookImg;
		this.bookNum = bookNum;
	}

	public void setBookNum(int bookNum) {
		this.bookNum = bookNum;
	}

	public String getBookId() {
		return bookId;
	}

	public String getBookName() {
		return bookName;
	}

	public String getBookImg() {
		return bookImg;
	}

	public int getBookNum() {
		return bookNum;
	}

}
