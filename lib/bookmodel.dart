import 'package:get/get.dart';

class Book {
  final String book_name;
  final String author;
  final String description;
  final String price;
  final String image_url;

  //final Image image ;

  Book(this.book_name, this.author, this.description, this.price,
      this.image_url);

  static RxList<Book> books = <Book>[book1, book2, book3].obs;
  static RxList<Book> cart_books = <Book>[].obs;
}

Book book1 = Book(
  'Littel Women',
  'Louisa May Alcott',
  'Little Women is one of the best loved books of all time. Lovely Meg, talented Jo, frail Beth, spoiled Amy: these are hard lessons of poverty and of growing up in New England during the Civil War. ',
  r'$ 5.99',
  'https://i.pinimg.com/originals/df/f9/b1/dff9b167d16a84b32bde5ebc13b22172.jpg',
);

Book book2 = Book(
  'Littel Men',
  'Louisa May Alcott',
  "Little Men, or Life at Plumfield with Jo's Boys, is a children's novel by American author Louisa May Alcott, which was first published in 1871 by Roberts Brothers.",
  r'$ 6.99',
  'https://images-na.ssl-images-amazon.com/images/I/51BLMDQGTlL._SX360_BO1,204,203,200_.jpg',
);

Book book3 = Book(
  '1984',
  'George Orwell',
  "1984 is a dystopian novella by George Orwell published in 1949, which follows the life of Winston Smith, a low ranking member of 'the Party'.",
  r'$ 6.00',
  'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c3/1984first.jpg/400px-1984first.jpg',
);
