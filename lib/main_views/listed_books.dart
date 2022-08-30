import 'package:my_book_store_app/book_details_page/book_details_page.dart';
import 'package:my_book_store_app/book_details_page/book_details_views/book_rating.dart';
import 'package:my_book_store_app/main_views/search_box.dart';
import 'package:my_book_store_app/models/book_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

//import 'package:google_fonts/google_fonts.dart';
class ListedBooks extends StatelessWidget {
  const ListedBooks(
      {Key? key, this.paddingLeft, this.paddingRight, this.toggleCartFilter})
      : super(key: key);
  final double? paddingLeft;
  final double? paddingRight;
  final bool? toggleCartFilter;
  static ScrollController myScrollController = ScrollController();
  static int? desiredBookIndex;

  bool filterSearchFunction(
      BookModel element, String searchWord, bool toggleCartFilter) {
    if (toggleCartFilter == false &&
        element.title.toLowerCase().contains(searchWord.toLowerCase())) {
      return true;
    }
    if (element.inCart == true && toggleCartFilter == true) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom +
                55 // so that the whole thing always move +10
            ),
        child: Obx(() {
          return ListView(
            controller: myScrollController,
            padding: EdgeInsets.only(
                bottom: 5, left: paddingLeft ?? 0, right: paddingRight ?? 0),
            children: BookModel.book
                .where((element) => filterSearchFunction(element,
                    SearchBox.searchWord.value, toggleCartFilter ?? false))
                .map((e) => TextButton(
                      style: TextButton.styleFrom(),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[100],
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                height: 145,
                                width: 100,
                                decoration: BoxDecoration(
                                    color: Colors.amber,
                                    image: DecorationImage(
                                        image: NetworkImage(e.imageUrl),
                                        fit: BoxFit.cover,
                                        alignment: Alignment.topCenter),
                                    borderRadius: BorderRadius.circular(7))),
                            Padding(
                              padding: const EdgeInsets.only(left: 20, top: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    e.title,
                                    style: /*GoogleFonts.lato*/ const TextStyle(
                                        color: Colors.black,
                                        fontSize: 17,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    e.author,
                                    style: /*GoogleFonts.lato*/ const TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        height: 2),
                                  ),
                                  Text(
                                    "\$${e.price}",
                                    style: /*GoogleFonts.lato*/ TextStyle(
                                        color: Colors.grey[800],
                                        fontSize: 17,
                                        fontWeight: FontWeight.w600,
                                        height: 2),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: StarDisplay(
                                      value: e.rating,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      onPressed: () {
                        desiredBookIndex = BookModel.book.indexOf(e);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BookDetailsPage(
                                      desiredBook: e,
                                    )));
                      },
                    ))
                .toList(),
          );
        }),
      ),
    );
  }
}
