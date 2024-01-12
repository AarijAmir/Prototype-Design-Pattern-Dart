void main(List<String> arguments) {
  BookShop bookShopOld = BookShop();
  bookShopOld.setBookShopName = 'Data Optics';
  bookShopOld.loadData();
  print(bookShopOld);
  BookShop bookShopNew = BookShop();
  bookShopNew.setBookShopName = 'Optical Point';
  //bookShopOld._listOfBook?.removeAt(0);

  bookShopNew.clone(bookShopOld);
  bookShopNew._listOfBook?.add(Book()
    .._bookId = 94
    .._bookName = 'Jahalat');

  bookShopNew._listOfBook?.insert(
      0,
      Book()
        .._bookId = 95
        .._bookName = 'Islamiat');
  print(bookShopNew);
  //instead of fetching data again from database we asked hey data optics
  // can you give me your data.
}

class Book {
  int? _bookId;
  String? _bookName;
  Book();
  void set setBookId(int bookId) => _bookId = bookId;
  int? get getBookId => _bookId;
  void set setBookName(String bookName) => _bookName = bookName;
  String? get getBookName => _bookName;
  @override
  String toString() {
    // TODO: implement toString
    return 'Book Id: $getBookId, Book Name = $getBookName';
  }
}

class BookShop {
  String? _bookShopName;
  List<Book>? _listOfBook = [];

  void set setBookShopName(String bookShopName) => _bookShopName = bookShopName;
  String? get getBookShopName => _bookShopName;
  void set setListOfBook(List<Book> listOfBook) => _listOfBook = listOfBook;
  List<Book>? get getListOfBook => _listOfBook;
  void loadData() {
    for (int i = 0; i <= 20; i++) {
      Book book = Book();
      book._bookId = i;
      book._bookName = 'Book = $i';
      getListOfBook?.add(book);
    }
  }

  BookShop clone(BookShop bookShopOld) {
    this._listOfBook = bookShopOld.getListOfBook;
    return this;
  }

  @override
  String toString() {
    // TODO: implement toString
    return 'Book Shop Name: $getBookShopName, List Of Books $getListOfBook ';
  }
}
