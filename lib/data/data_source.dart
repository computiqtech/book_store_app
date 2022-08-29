import 'package:get/get.dart';

import 'models/book.dart';

class DataSource {
  static RxList<Book> localBooks = <Book>[
    Book(
      title: "A Tale of Two Cities",
      author: "Charles Dickens",
      cover: "https://api.lorem.space/image/book?w=150&h=220&hash=8B7BCDC1",
      rate: 5.0,
      price: 99.99,
    ),
    Book(
      title: "The Little Prince",
      author: "Antoine de Saint-Exupéry",
      cover: "https://api.lorem.space/image/book?w=150&h=220&hash=8B7BCDC2",
      rate: 4.3,
      price: 46.99,
    ),
    Book(
      title: "Harry Potter and the Philosopher's Stone",
      author: "J.K.Rowling",
      cover: "https://api.lorem.space/image/book?w=150&h=220&hash=8B7BCDC3",
      rate: 3.0,
      price: 64.99,
    ),
    Book(
      title: "Mockingjay",
      author: "Suzanne Collins",
      cover: "https://api.lorem.space/image/book?w=150&h=220&hash=8B7BCDC4",
      rate: 4.0,
      price: 52.99,
    ),
    Book(
      title: "Me Before You",
      author: "Jojo Moyes",
      cover: "https://api.lorem.space/image/book?w=150&h=220&hash=8B7BCDC5",
      rate: 4.9,
      price: 30.99,
    ),
    Book(
      title: "Harry Potter and the Philosopher's Stone",
      author: "J.K.Rowling",
      cover: "https://api.lorem.space/image/book?w=150&h=220&hash=8B7BCDC6",
      rate: 3.0,
      price: 64.99,
    ),
  ].obs;
}
