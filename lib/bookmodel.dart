import 'package:get/get.dart';

class Book {
  final String book_name;
  final String author;
  final String description;
  final String price;
  final String image_link;



  Book(this.book_name, this.author, this.description,this.price,
      this.image_link);

  static RxList<Book> books = <Book>[book1, book2].obs;
  static RxList<Book> cart = <Book>[].obs;
}

Book book1 = Book(
  'Yves Saint Laurent',
  'Suzy Menkes ',
  'A spectacular visual journey through 40 years of haute couture from one of the'
      ' best-known and most trend-setting brands in fashion.',
  r'$46.99',
  'https://images-na.ssl-images-amazon.com/images/I/31YqLaWKzeL._SX340_BO1,204,203,200_.jpg',
);

Book book2 = Book(
  'The Book of Signs',
  'Rudolf Koch ',
  "A spectacular visual journey through 40 years of haute couture from one of the best-known and most trend-setting brands in fashion.",
  r'$99.99',
  'https://images-na.ssl-images-amazon.com/images/I/41ChCHUmY0L._SX331_BO1,204,203,200_.jpg',
);
