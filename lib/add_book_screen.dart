
import 'package:book_store_app/book.dart';
import 'package:book_store_app/input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AddBookScreen extends StatefulWidget {
  const AddBookScreen({Key? key}) : super(key: key);

  @override
  State<AddBookScreen> createState() => _AddBookScreenState();
}

class _AddBookScreenState extends State<AddBookScreen> {
  TextEditingController bookNameCon = TextEditingController();

  TextEditingController authorNameCon = TextEditingController();

  TextEditingController priceCon = TextEditingController();

  TextEditingController imageLinkCon = TextEditingController();

  TextEditingController descriptionCon = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffdfdfd),
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () => Navigator.of(context).pop(),
        ),
        iconTheme: const IconThemeData(
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
              child: Icon(Icons.more_vert,size: 30,))
        ],
        toolbarHeight: 110,
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.dark
        ),
        backgroundColor: const Color(0xfffdfdfd),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children:  [
            const Padding(
              padding: EdgeInsets.only(bottom: 40),
              child: Text( "Add Book",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold
                ),
                ),
            ),
            InputField(hint: "Book Name",numberOfLines: 1,controller: bookNameCon,),
            InputField(hint: "Author Name",numberOfLines: 1,controller: authorNameCon,),
            InputField(hint: "Price",numberOfLines: 1,controller: priceCon,),
            InputField(hint: "Image Link",numberOfLines: 1,controller: imageLinkCon,),
            InputField(hint: "Description",numberOfLines: 4,controller: descriptionCon,),

            TextButton(onPressed: () {
              Book.add(
                  bookName: bookNameCon.text,
                  authorName: authorNameCon.text,
                  price: priceCon.text,
                  bookImage: imageLinkCon.text,
                  description: descriptionCon.text,
              );

              Navigator.pop(context);
            },
                child: Container(
                  alignment: Alignment.center,
                  width: 300,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Text("Add",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18
                    ),
                  ),
                )

            )
          ],
        ),
      )
    );
  }
}


