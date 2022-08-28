
import 'package:book_store_app/page1/default_page.dart';
import 'package:book_store_app/page1/page_1_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Add extends StatelessWidget {
   Add({Key? key}) : super(key: key);


   final TextEditingController BookController = TextEditingController();
   final TextEditingController AutherController = TextEditingController();
   final TextEditingController PriceController = TextEditingController();
   final TextEditingController ImageController = TextEditingController();
   final TextEditingController DescController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
        ),
        backgroundColor: const Color(0xfff0f0f0),
        elevation: 0,
        toolbarHeight: 10,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                        onPressed:(){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => const DefaultPage()));
                        },
                        child:const Icon(Icons.arrow_back_ios_new, color: Colors.black,)),
                    const Icon(Icons.more_vert, color: Colors.black,),
                  ]
              ),
              Padding(
                padding: const EdgeInsets.all(32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children:const [
                    Text("Add Book", style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),),
                  ],
                ),
              ),
          ///TextFields
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 22),
                  child: TextField(
                      controller: BookController,
                      maxLines: 2,
                      minLines: 1,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor:const Color.fromRGBO(255, 255, 255, 1),
                        border: InputBorder.none,
                        hintText: 'Book Name',
                        hintStyle:const TextStyle(fontSize: 18),
                      )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 22),
                  child: TextField(
                      controller: AutherController,
                      maxLines: 2,
                      minLines: 1,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor:const Color.fromRGBO(255, 255, 255, 1),
                        border: InputBorder.none,
                        hintText: 'Author Name',
                        hintStyle:const TextStyle(fontSize: 18),
                      )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 22),
                  child: TextField(
                    controller: PriceController,
                    maxLines: 2,
                    minLines: 1,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor:const Color.fromRGBO(255, 255, 255, 1),
                      border: InputBorder.none,
                      hintText: 'Price',
                      hintStyle:const TextStyle(fontSize: 18),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 22),
                  child: TextField(
                    controller: ImageController,
                    maxLines: 2,
                    minLines: 1,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor:const Color.fromRGBO(255, 255, 255, 1),
                      border: InputBorder.none,
                      hintText: 'Image link',
                      hintStyle: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 22),
                  child: TextField(
                    controller: DescController,
                    maxLines: 5,
                    minLines: 5,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor:const Color.fromRGBO(255, 255, 255, 1),
                      border: InputBorder.none,
                      hintText: 'Description',
                      hintStyle:const TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ],
            ),
          ),
          TextButton(
            onPressed: (){
              BooksList(BookController.text,
                  AutherController.text,
                  PriceController.text,
                  ImageController.text,
                  DescController.text).addBook();
              BookController.clear();
              AutherController.clear();
              PriceController.clear();
              ImageController.clear();
              DescController.clear();

            },
            child:Container(
              width: double.maxFinite,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(16)
              ),
              child:const Center(
                child: Text("Add", style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  fontSize: 16
            ),
            ),
              ),
          ),
          ),
           ],
          ),
        ),
      ),
    );
  }
}
