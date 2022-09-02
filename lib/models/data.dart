import 'package:get/get.dart';

import 'book.dart';

class Data{
  static RxList<Book> books = <Book>[
    Book(
      name: 'Life A COMPILATION OF SHORT STORIES AND POETRY',
      author: 'ZOE DAVIS',
      image: 'assets/images/book_1.jpg',
      description: 'Sit cillum aliqua in velit dolore nulla id ullamco occaecat exercitation quis laborum minim. Ea nulla occaecat do duis id et nulla aute officia enim tempor elit. Consequat ea ullamco sit proident sit sit do ea nulla veniam Lorem id. Irure in sint fugiat aliquip. Tempor qui aute quis tempor occaecat nulla id irure minim aute aute dolore esse. Sunt ut magna mollit do duis commodo incididunt ipsum duis enim enim.',
      price: 65.99,
      rating: 4.5,
    ),
    Book(
      name: 'ULTRALEARNING',
      author: 'Scott H. Young',
      image: 'assets/images/book_2.jpg',
      description: 'Elit magna velit culpa exercitation occaecat duis in eu sit sunt. Ipsum mollit do irure id. Incididunt occaecat nisi veniam occaecat do eiusmod sit.',
      price: 69.99,
      rating: 5.0,
    ),
    Book(
      name: 'THE PROPHET',
      author: 'Kahlil Gibran',
      image: 'assets/images/book_3.jpg',
      description: 'Duis consequat elit reprehenderit Lorem consequat in esse elit pariatur ut officia id sit sunt. Sit magna voluptate quis sunt ad adipisicing irure labore pariatur Lorem do minim proident irure. Ad quis excepteur ut ea sint ullamco quis nulla proident voluptate laboris. Dolore cupidatat sint nisi sint enim aute amet officia aute.',
      price: 44.99,
      rating: 4.0,
    ),
    Book(
      name: 'THE POWER OF HABIT',
      author: 'Charles Duhigg',
      image: 'assets/images/book_4.jpg',
      description: 'Et ea dolore proident officia ea elit ea sunt ut ullamco consectetur incididunt. Lorem dolor Lorem nostrud Lorem. In esse deserunt sunt dolore sit dolore est reprehenderit nostrud et. Eu enim ea mollit anim. Veniam aute sunt sunt est commodo fugiat ullamco labore mollit est.',
      price: 89.99,
      rating: 4.5,
    ),
  ].obs;

  static RxList<Book> purchasedBooks = <Book>[].obs;
}