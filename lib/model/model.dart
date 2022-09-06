import 'package:get/get.dart';
class Book {
  final String name;
  final String Author_name;
  final String price;
  final String link;
  final String Descrip;
  Book(this.name, this.Author_name, this.price, this.link, this.Descrip);
  static RxList<Book> one = <Book>[].obs;
  add() {
    one.add(this);
  }
}

class BookUser {
  final String name;
  final String Author_name;
  final String price;
  final String link;
  final String Descrip;
  BookUser(this.name, this.Author_name, this.price, this.link, this.Descrip);
  static List<BookUser> two = [];
  add() {
    two.add(this);
  }
}
