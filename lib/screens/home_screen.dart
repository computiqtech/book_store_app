import 'package:book_store_app/models/book.dart';
import 'package:book_store_app/screens/add_books_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static TextEditingController controller = TextEditingController();
  static RxString controllertext = controller.text.obs;

  @override
  Widget build(BuildContext context) {
    RxBool liket = false.obs;
    RxBool cart = false.obs;
    RxBool home = true.obs;
    RxString colorText = 'home'.obs;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromARGB(255, 243, 243, 243),
      //! appbar
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarBrightness: Brightness.light,
            statusBarColor: Colors.transparent),
        backgroundColor: const Color.fromARGB(255, 243, 243, 243),
        elevation: 0,
        leading: const AppBarLeading(),
        leadingWidth: 65,
        toolbarHeight: 55,
        title: const AppBarTitle(),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20, top: 5),
            child: Icon(
              Icons.more_vert,
              color: Colors.black,
              size: 30,
            ),
          )
        ],
      ),
      //! body
      body: Container(
        padding: const EdgeInsets.all(20.0),
        height: 800,
        //! main column
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Obx(() {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (home.value) const SearchBar(), //!
                  const SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    title(cart: cart.value, saved: liket.value), //!
                    style: const TextStyle(
                        fontSize: 25, fontWeight: FontWeight.bold),
                  ),

                  const SizedBox(
                    height: 20.0,
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: SizedBox(
                        width: double.maxFinite,
                        child: Column(
                          //todo
                          children: myview(
                              cart: cart.value,
                              saved: liket.value,
                              s: controllertext.value),
                        ),
                      ),
                    ),
                  )
                ],
              );
            }),
            //! stack buttons
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Container(
                width: 240,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22.0),
                  color: Colors.white,
                ),
                child: Obx(() {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.home_filled,
                          color: colorText.value == 'home'
                              ? Colors.black
                              : Colors.grey,
                        ),
                        onPressed: () {
                          liket.value = false;
                          cart.value = false;
                          home.value = true;
                          colorText.value = 'home';
                        },
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.bookmark,
                          color: colorText.value == 'liket'
                              ? Colors.black
                              : Colors.grey,
                        ),
                        onPressed: () {
                          liket.value = true;
                          cart.value = false;
                          home.value = false;
                          colorText.value = 'liket';
                        },
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.shopping_cart_rounded,
                          color: colorText.value == 'cart'
                              ? Colors.black
                              : Colors.grey,
                        ),
                        onPressed: () {
                          liket.value = false;
                          cart.value = true;
                          home.value = false;
                          colorText.value = 'cart';
                        },
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.add,
                          color: Colors.grey,
                        ),
                        onPressed: () {
                          Get.to(const AddBooks());
                        },
                      ),
                    ],
                  );
                }),
              ),
            )
          ],
        ),
      ),
    );
  }
}

//!--------------------------------------------------------

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: HomeScreen.controller,
      onChanged: (v) {
        HomeScreen.controllertext.value = HomeScreen.controller.text;
      },
      decoration: InputDecoration(
        suffixIcon: const Padding(
          padding: EdgeInsets.only(right: 10),
          child: Icon(
            Icons.search,
            size: 30,
            color: Colors.grey,
          ),
        ),
        border: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide.none,
        ),
        hintText: 'Search...',
        hintStyle: const TextStyle(
            fontFamily: 'Poppins', fontSize: 15, color: Colors.grey),
        fillColor: const Color(0xffFFFFFF),
        filled: true,
      ),
    );
  }
}

//!--------------------------------------------------------

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 5),
      height: 60,
      alignment: Alignment.centerLeft,
      child: const Text(
        'Hi, Mohammed!',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 18.0,
          fontFamily: 'Poppins',
        ),
      ),
    );
  }
}

//!--------------------------------------------------------

class AppBarLeading extends StatelessWidget {
  const AppBarLeading({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomLeft,
      padding: const EdgeInsets.only(
        left: 20.0,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: const Image(
          image: AssetImage(
            'assets/images/profileImage.jpg',
          ),
        ),
      ),
    );
  }
}

//!---------------------------------
String title({required bool saved, required bool cart}) {
  if (saved) {
    return 'Saved';
  } else if (cart) {
    return 'Cart';
  } else {
    return 'Book List';
  }
}

//!---------------------------------
List<Widget> myview(
    {required bool saved, required bool cart, required String s}) {
  if (saved) {
    return Book.libriry.values.where((e) => e.likeit).toList();
  } else if (cart) {
    return Book.libriry.values.where((e) => e.incart).toList();
  } else {
    return Book.libriry.values.where((e) => e.name.contains(s)).toList();
  }
}
