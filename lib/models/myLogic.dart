import 'package:book_store_app/main_page/searchTextField.dart';

import 'book_data.dart';
import 'myUiComponent.dart';

class MyFunctions {
 static  mainPageViewBook() => search.value.isEmpty
      ? BookData.books
          .map((e) => BookView(
                book: e,
                show: false,
              ))
          .toList()
      : BookData.books
          .where((e) =>
              e.bookName.toLowerCase().contains(search.value.toLowerCase()))
          .map((e) => BookView(
                book: e,
                show: false,
              )).toList();


 static cardPageViewBooks() => BookData.books
     .where((e) => e.bookBuy.value)
     .map((e) => BookView(
   book: e,
   show: true,
 )).toList();



}
