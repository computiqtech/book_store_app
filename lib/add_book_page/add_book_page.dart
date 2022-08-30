import 'package:book_store_app/add_book_page/add_book_page_views/Add_book_button.dart';
import 'package:book_store_app/add_book_page/add_book_page_views/reusable_text_button.dart';
import 'package:book_store_app/book_details_page/book_details_views/top_bar.dart';
import 'package:book_store_app/main.dart';
import 'package:flutter/material.dart';

class AddBookPage extends StatelessWidget {
  const AddBookPage({
    Key? key,
  }) : super(key: key);
  static TextEditingController bookName = TextEditingController();
  static TextEditingController authorName = TextEditingController();
  static TextEditingController price = TextEditingController();
  static TextEditingController imageLink = TextEditingController();
  static TextEditingController rating = TextEditingController();
  static TextEditingController description = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TopBar(),
              Padding(
                  padding: const EdgeInsets.only(left: 27),
                  child: title('Add Book')),
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.only(left: 20, top: 30, right: 20),
                  children: [
                    ReusableTextField(hintText: 'Book Name...', lines: 1, myControler: bookName),
                    ReusableTextField(hintText: 'Author Name...', lines: 1, myControler: authorName),
                    ReusableTextField(hintText: 'Price in \$...', lines: 1, myControler: price),
                    ReusableTextField(hintText: 'Image Link...', lines: 1, myControler: imageLink),
                    ReusableTextField(hintText: 'Rating...', lines: 1, myControler: rating),
                    Container(
                        height: 172,
                        margin: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom +150 // so that the whole thing always move +10
                        ),
                        child:
                            ReusableTextField(hintText: 'Description', lines: 6, myControler: description)),
                   ],
                ),
              )
            ],
          ),
          floatingActionButton: const AddBookButton()
          ),
    );
  }
}