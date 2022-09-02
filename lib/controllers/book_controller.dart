import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/book.dart';
import '../models/data.dart';
import '../style.dart';
import '../views/screens/cart_page.dart';
import '../views/screens/home_page.dart';

class BookController extends GetxController {
  RxString searchResult = ('').obs;
  String currentPage = 'home page';

  void successfulBookPurchase(BuildContext context) => Get.snackbar(
        'Successful the book purchase',
        'Go to cart page to view your purchases',
        icon: const Icon(CupertinoIcons.shopping_cart),
        onTap: (GetSnackBar snackBar) {
          Get.closeAllSnackbars();
          Get.to(const CartPage());
        },
      );

  void addBookSnackBar(BuildContext context, bool isSuccessfulAdd) => Get.snackbar(
        isSuccessfulAdd ? 'The book has been successfully added' : 'Failed to add book',
        isSuccessfulAdd ? 'Go to the home page to view the book added' : 'You have entered invalid data, please fill in the fields with valid data',
        icon: const Icon(CupertinoIcons.add),
        onTap: (GetSnackBar snackBar) {
          if (isSuccessfulAdd) {
            Get.closeAllSnackbars();
            Get.to(const HomePage());
          }
        },
      );
  
  String get getHeaderText => searchResult.isNotEmpty ? 'Result' : 'Book List';
  Color get getSVGSearchColor => searchResult.isNotEmpty ? blue : hintTextColor;

  bool isBookStoreEmpty() => Data.books.isEmpty;
  bool isNotFoundBooks() => filterBooks(searchResult.value).isEmpty;
  bool isPurchasedBooksEmpty() => Data.purchasedBooks.isEmpty;
  bool isFieldsEmpty(Map<String, String> map) {
    bool isInvaild = false;
    for(String value in map.values){
      if(value.contains(',')) isInvaild = true;
    }
    return map.containsValue('') || isInvaild;
  }

  void buyBook(Book book) => Data.purchasedBooks.add(book);
  double getCorrectRating(double rating) {
    String rate = rating.toString();
    return double.parse(rate.substring(rate.length - 1, rate.length)) < 5
        ? double.parse(rate.substring(0, 1))
        : double.parse('${rate.substring(0, 1)}.5');
  }

  void addBook(Map<String, String> newBook) {
    double rating = getCorrectRating(double.parse(newBook['rating'].toString()));
    Data.books.add(Book(
      name: newBook['name'].toString(),
      author: newBook['author'].toString(),
      image: newBook['image'].toString(),
      description: newBook['description'].toString(),
      price: double.parse(newBook['price'].toString()),
      rating: rating > 5 ? 5 : rating,
    ));
  }

  Color iconcolorCurrentPage(String currentPage) {
    return currentPage == this.currentPage ? black : unselectedIconColor;
  }

  List<Book> filterBooks(String nameBook) {
    if (searchResult.isEmpty) return Data.books;
    return Data.books
        .where((e) => e.name.toLowerCase().contains(nameBook))
        .toList();
  }

  List<Icon> getBookRating(double rating) {
    List<Icon> icons = [];

    for (int i = 0; i < 5; i++) {
      icons.add(
        Icon(
          (rating-- >= 1.0)
              ? (Icons.star)
              : (rating == 0.5 || rating == -0.5
                  ? Icons.star_half
                  : Icons.star),
          color: rating + 1 > 0 ? (iconsColor) : halfIconColor,
          size: 14,
        ),
      );
    }
    return icons;
  }
}
