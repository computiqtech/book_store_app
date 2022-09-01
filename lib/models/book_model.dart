import 'package:get/get.dart';

class Book {
  String name;
  String author;
  double rate;
  String description;
  String price;

  String? imgLink;

  Book({
    required this.name,
    required this.author,
    required this.description,
    required String price,
    String? imgLink,
  })  : imgLink = (imgLink == null)
            ? 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3a/Book-icon-bible.png/640px-Book-icon-bible.png'
            : imgLink,
        rate = 4.5,
        price = '\$$price';

  static RxList<Book> allBooks = <Book>[
    Book(
        name: 'Yves Saint Laurent',
        author: 'Suzy Menkes',
        price: '46.99',
        imgLink:
            'https://images-na.ssl-images-amazon.com/images/I/21KbioZVBDL._SX340_BO1,204,203,200_.jpg',
        description:
            "A spectacular visual journey through 40 years of haute couture from one of the best-known and most trend-setting brands in fashion."),
    Book(
        name: 'The Book of Signs',
        author: 'Rudolf Koch',
        price: '99.99',
        description:
            'A spectacular visual journey through 40 years of haute couture from one of the best-known and most trend-setting brands in fashion.',
        imgLink:
            'http://kbimages1-a.akamaihd.net/Images/0f23bd7a-4b80-49e8-a086-25fae5674dc4/255/400/False/image.jpg')
  ].obs;

  static void addBook(
      {required name,
      required author,
      required description,
      required price,
      String? imgLink}) {
    allBooks.add(Book(
        name: name,
        author: author,
        description: description,
        price: price,
        imgLink: imgLink));
  }

  static RxList<Book> addedToCardBooks = <Book>[].obs;
  static RxBool isFiltered = false.obs;
}
