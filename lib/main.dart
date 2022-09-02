
import 'package:book_store_app/page_1/card_1.dart';
import 'package:book_store_app/page_1/card_2.dart';
import 'package:book_store_app/page_1/card_3.dart';
import 'package:book_store_app/page_1/card_4.dart';
import 'package:book_store_app/page_1/card_5.dart';
import 'package:book_store_app/page_2/description.dart';
import 'package:book_store_app/page_2/rate_book.dart';
import 'package:book_store_app/page_3/card_1.dart';
import 'package:book_store_app/page_3/card_2.dart';
import 'package:book_store_app/page_3/card_3.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'modules.dart';
import 'my_text_field.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:Scaffold(
          appBar: AppBar(
            systemOverlayStyle: const SystemUiOverlayStyle(
                statusBarColor: Colors.transparent
            ),
            backgroundColor: const Color(0xfff0f0f0),
            elevation: 0,
            toolbarHeight: 10,
          ),
          backgroundColor: const Color(0xfff0f0f0),

        body: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Card1(),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Card2(),
                    const Card3(),
                    SingleChildScrollView(
                      child: Stack(
                        children: const [
                          Card4(),
                          Card5(),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ]
          ),
        ),
      ),
    );
  }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

class Add extends StatelessWidget {
  Add({Key? key}) : super(key: key);

  static TextEditingController imageController = TextEditingController();
  static TextEditingController descriptionController = TextEditingController();
  static TextEditingController nameController = TextEditingController();
  static TextEditingController authController = TextEditingController();
  static TextEditingController priceController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          systemOverlayStyle: const SystemUiOverlayStyle(
              statusBarColor: Colors.transparent
          ),
          backgroundColor: const Color(0xfff0f0f0),
          elevation: 0,
          toolbarHeight: 10,
        ),
        backgroundColor: const Color(0xfff0f0f0),

        body:Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            const BackBar(),
              const AddBook(),
              MyTextField(myWidth: 320, myHeight: 50, lines: 1, hint: 'Book Name', suffixIcon: null, myController: nameController),
              MyTextField(myWidth: 320, myHeight: 50, lines: 1, hint: 'Author Name', suffixIcon: null, myController: authController),
              MyTextField(myWidth: 320, myHeight: 50, lines: 1, hint: 'Price', suffixIcon: null, myController: priceController),
              MyTextField(myWidth: 320, myHeight: 50, lines: 1, hint: 'Image Link', suffixIcon: null, myController: imageController),
              MyTextField(myWidth: 320, myHeight: 140, lines: 5, hint: 'Description', suffixIcon: null, myController: descriptionController),
              const AddButton(),
              const SizedBox(height: 50,)
            ],
          ),
        )
      ),
    );
  }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
          appBar: AppBar(
            systemOverlayStyle: const SystemUiOverlayStyle(
                statusBarColor: Colors.transparent
            ),
            backgroundColor: const Color(0xfff0f0f0),
            elevation: 0,
            toolbarHeight: 10,
          ),
          backgroundColor: const Color(0xfff0f0f0),

          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BackBar(),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Cart', style: TextStyle(
                        fontSize: 24,
                        height: 2,
                        fontWeight: FontWeight.bold
                    ),),SizedBox(height: 15,),
                    Stack(
                      children: [
                      Container(
                        color: const Color(0xfff0f0f0),
                        width: double.maxFinite,
                        height: 622,
                        child: Expanded(
                          child: ListView(
                              children: MyBooks.book.where((element) => element.condition.value == true).map((e) => Padding(
                                padding: const EdgeInsets.symmetric(vertical: 8),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 35),
                                      child: Image.network(e.imageLink,
                                        width: 80, height: 130,),
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(e.bookName, style: const TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),),
                                        Text(e.bookAuth, style: const TextStyle(color: Colors.black87, fontSize: 12,height: 2),),
                                        Text(e.price, style: const TextStyle(color: Colors.black, fontSize: 20,height: 2),),
                                        const Stars(),
                                      ],
                                    )
                                  ],
                                ),
                              ),).toList()
                          ),
                        ),
                      ),
                        Card5(),
                      ],
                    )
                  ],
                ),
              )
            ],
          )
      ),
    );
  }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

class BookDetails extends StatelessWidget {

  final MyBooks myBook;
  const BookDetails({Key? key, required this.myBook}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
          appBar: AppBar(
            systemOverlayStyle: const SystemUiOverlayStyle(
                statusBarColor: Colors.transparent
            ),
            backgroundColor: const Color(0xfff0f0f0),
            elevation: 0,
            toolbarHeight: 0,
          ),
          backgroundColor: const Color(0xfff0f0f0),

          body: Column(
            children: [
              const BackBar(),const SizedBox(height: 15,),
              Image.network(myBook.imageLink, width: 216, height: 320,),
              MyText(text: myBook.bookName, color: Colors.black, size: 24, height: 2,),
              MyText(text: myBook.bookAuth, color: Colors.black54, size: 14, height: 2,),
              const Rate(),
              Description(myBook: myBook),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  ContainerButton(width: 154, height: 40, textColor: Colors.black, containerColor: Colors.white, icon: Icons.preview, text: '  Preview',),
                  ContainerButton(width: 154, height: 40, textColor: Colors.black, containerColor: Colors.white, icon: Icons.reviews_outlined, text: '  Reviews',),
                ],
              ),const SizedBox(height: 18,),
              const ContainerButton(width: 319, height: 50, textColor: Colors.white, containerColor: Colors.black,
                icon: null, text: r'  Buy Now For $49.99',),
            ],
          )
      ),
    );
  }
}
