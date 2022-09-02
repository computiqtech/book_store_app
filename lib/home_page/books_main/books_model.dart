import 'package:get/get.dart';

class BookData{
  final String bookName;
  final double bookRate;
  final String bookAuthor;
  final String bookDescription;
  final String bookImage;
  final String bookPrice;
  final RxBool inCart = false.obs;

  BookData({
    required this.bookName,
    required this.bookAuthor,
    required this.bookPrice,
    required this.bookRate,
    required this.bookImage,
    required this.bookDescription,
  });

  isInCart(){
    inCart.value = true;
  }
  static add(
      String name,
      String author,
      String price,
      double rate,
      String link,
      String description
      ){
    books.add(BookData(bookName: name,
        bookAuthor: author,
        bookPrice: price,
        bookRate: rate,
        bookImage: link,
        bookDescription: description));
  }


  static RxList<BookData> books = <BookData>[
    BookData(bookName: 'bookName',
        bookAuthor: 'bookAuthor',
        bookDescription: 'bookDescription',
        bookRate: 3.5,
        bookImage: 'https://api.lorem.space/image/book?w=150&h=220&hash=B0E33EF4',
        bookPrice: '\$ 15'),
    BookData(bookName: 'bookName',
        bookAuthor: 'bookAuthor',
        bookDescription: 'bookDescription',
        bookRate: 5,
        bookImage: 'https://api.lorem.space/image/book?w=150&h=220&hash=2D297A22',
        bookPrice: '\$ 15'),
    BookData(bookName: 'bookName',
        bookAuthor: 'bookAuthor',
        bookDescription: 'bookDescription',
        bookRate: 5,
        bookImage: 'https://api.lorem.space/image/book?w=150&h=220&hash=8B7BCDC2',
        bookPrice: '\$ 15'),
    BookData(bookName: 'bookName',
        bookAuthor: 'bookAuthor',
        bookDescription: 'bookDescription',
        bookRate: 1.5,
        bookImage: 'https://api.lorem.space/image/book?w=150&h=220&hash=A89D0DE6',
        bookPrice: '\$ 15'),
    BookData(bookName: 'bookName',
        bookAuthor: 'bookAuthor',
        bookDescription: 'kmoeiwmfomewomewocmwmecome\noimcoiewmciomweocmokewmciomewiocmewoimcioewmciomewiocmoiewmciomewiocmeiowmcioemwciomewiocmeowmcioewmcioewmoicmewoimcoeiwmcoiewmcoimewoicmewoicm',
        bookRate: 5,
        bookImage: 'https://api.lorem.space/image/book?w=150&h=220&hash=BDC01094',
        bookPrice: '\$ 15')
  ].obs;
}
