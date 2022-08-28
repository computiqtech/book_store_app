import 'package:get/get.dart';


class BooksList{

  final String Bookname;
  final String Author;
  final String Price;
  final String imageLink;
  final String Description;

  BooksList(this.Bookname, this.Author, this.Price, this.imageLink, this.Description);

  static List<BooksList> Books = [
    BooksList("Yves Saint Laurent", "Suzy Menkes", "46.99", "https://images-na.ssl-images-amazon.com/images/I/31zSzxEMQ8L._SX340_BO1,204,203,200_.jpg", "A spectacular visual journey through 40 years of haute couture from one of the best-known and most trend-setting brands in fashion."),
    BooksList("The Book of Sign", "Rudolf Koch", "99.99", "https://i2.books-express.ro/bt/9780486201627/the-book-of-signs.jpg", " a really great book"),
    BooksList("Yves Saint Laurent", "Suzy Menkes", "46.99", "https://images-na.ssl-images-amazon.com/images/I/31zSzxEMQ8L._SX340_BO1,204,203,200_.jpg", " a really great book"),
    BooksList("The Book of Sign", "Rudolf Koch", "99.99", "https://i2.books-express.ro/bt/9780486201627/the-book-of-signs.jpg", "A spectacular visual journey through 40 years of haute couture from one of the best-known and most trend-setting brands in fashion."),
    BooksList("Yves Saint Laurent", "Suzy Menkes", "46.99", "https://images-na.ssl-images-amazon.com/images/I/31zSzxEMQ8L._SX340_BO1,204,203,200_.jpg", " a really great book"),
    BooksList("The Book of Sign", "Rudolf Koch", "99.99", "https://i2.books-express.ro/bt/9780486201627/the-book-of-signs.jpg", "A spectacular visual journey through 40 years of haute couture from one of the best-known and most trend-setting brands in fashion."),
  ];

  void addBook() {
    Books.add(this);
  }




///cart page===============================================
  static RxList<BooksList> cartList = <BooksList>[

    BooksList("Yves Saint Laurent", "Suzy Menkes", "46.99", "https://images-na.ssl-images-amazon.com/images/I/31zSzxEMQ8L._SX340_BO1,204,203,200_.jpg", " a really great book"),
    BooksList("The Book of Sign", "Rudolf Koch", "99.99", "https://i2.books-express.ro/bt/9780486201627/the-book-of-signs.jpg", "A spectacular visual journey through 40 years of haute couture from one of the best-known and most trend-setting brands in fashion."),


  ].obs;


  void add() {
    cartList.add(this);
  }



///show page==================
  static RxList<BooksList> showList = <BooksList>[].obs;

  void addSelected() {
    showList.clear();
    showList.add(this);
  }






}
