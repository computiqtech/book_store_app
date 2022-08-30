import 'package:book_store_app/add_book_page/input_book_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BookData {
  final String bookName;
  final String authorName;
  final String bookPrice;
  final String bookLink;
  final String bookDescription;
  final RxBool bookBuy;

  static RxList<BookData> books = <BookData>[
    BookData('Games People Play', 'Eric Berne', '17.99', 'https://covers.zlibcdn2.com/covers299/books/de/54/b5/de54b53efafa0ef3f39221fa770fce18.jpg', 'The need for this book was indicated by interested requests from students and lecture audiences for lists of games, or for further elaboration of games mentioned briefly as examples in a general exposition of the principles of transactional analysis.'),
    BookData('The Question Book', 'Mikael Krogerus, Roman Tschäppeler', '10.00', 'https://covers.zlibcdn2.com/covers299/books/fb/27/c0/fb27c0342de7846665b68f9bd2c65422.jpg', 'The number one bestselling Decision Book authors return with compulsive questions about every aspect of our lives.What would be your ideal job if you didnt have to worry about money? Would you like to have more responsibility or less? How far would you go for a promotion? When did you last stand up for what you believe in? What are you afraid of? In this unique handbook to your own life and work, there are no right or wrong answers: only honest ones.Featuring sections on subjects everyone can relate to, from the professional (work and finance), to the personal (sex and relationships), The Question Book can be used alone, like a journal; or with a colleague, partner or friend. It will probe and enlighten on everything, including what your boss really thinks about you, whether you are in the right job, and what motivates you to get out of bed every morning. These wide-ranging questions - which provoke short yes or no s as well as open-ended responses that dig deeper - are pertinent, direct, and compulsively fun to answer. In The Question Book, you are under the spotlight. And only you have the answer.'),
    BookData('English Grammar in Use, Fifth Edition', 'Raymond Murphy', '5.99', 'https://covers.zlibcdn2.com/covers299/books/db/c1/3a/dbc13ab09234e92e5c169610d1f5e6f6.jpg', 'English Grammar in Use, Fifth Edition The worlds best-selling grammar series for learners of English.Raymond Murphys English Grammar in Use is the world’s best-selling grammar reference and practice book for learners of English at intermediate (B1-B2) level. It’s perfect for self-study, but also ideal for supplementary grammar activities in the classroom.The fifth edition is available as a printed book and ebook with audio, for on-the-go learning. It comes with interactive exercises and integrated audio to help with listening and pronunciation skills.  '),


  ].obs;

  BookData(this.bookName, this.authorName, this.bookPrice, this.bookLink,
      this.bookDescription,
      [bool? bookBuy])
      : bookBuy = (bookBuy ?? false).obs;

  addBuyList() {
    bookBuy.value = true;
  }

  removeBuyList() {
    bookBuy.value = false;
  }


  static addBook() {
    if (nameControl.text.isNotEmpty &&
        authorControl.text.isNotEmpty &&
        priceControl.text.isNotEmpty) {
      BookData.books.add(BookData(
          nameControl.text,
          authorControl.text,
          priceControl.text,
          linkControl.text.isEmpty
              ? 'https://api.lorem.space/image/book'
              : linkControl.text,
          descriptionControl.text.isEmpty? 'There is no description': descriptionControl.text ));
      nameControl.text = '';
      authorControl.text = '';
      priceControl.text = '';
      linkControl.text = '';
      descriptionControl.text = '';
    } else {
      Get.snackbar('Error', 'Some required field is empty',
          backgroundColor: Colors.redAccent.withOpacity(0.4),
          duration: const Duration(seconds: 3));
    }


  }
}
