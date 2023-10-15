import 'package:book_store_app/widgets/app_bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../app_bars/the_appbar1.dart';
import '../book_widget.dart';
import '../model.dart';
import '../my_text_fields/the_text_field1.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController myController = TextEditingController();

  RxString typed = ''.obs;
  int _currentIndex = 0;

  final _inactiveColor = Colors.grey;

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 245, 245, 245),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
                  const MyAppBar(),
                  MyTextField(
                    myController: myController,
                    typed: typed,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: Text(
                      'Book List',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Obx(() {
                      return ListView(
                          children: typed.value.isEmpty
                              ? Book.books.map((e) => MyBook(book: e)).toList()
                              : Book.books
                              .where((e) => e.bookName
                              .toLowerCase()
                              .contains(typed.toLowerCase()))
                              .map((e) => MyBook(book: e))
                              .toList());
                    }),
                  ),
            _getPages(),

          ],
        ),
         bottomNavigationBar:  _buildBottomBar(),
      ),
    );
  }

  Widget _buildBottomBar(){
    return AppBottomNavigationBar(
      animationDuration: const Duration(milliseconds: 300),
      mainAxisAlignment: MainAxisAlignment.center,
      iconSize: 24,
      containerHeight: 70,
      selectedIndex: _currentIndex,
      showElevation: true,
      itemCornerRadius: 24,
      curve: Curves.easeIn,
      onItemSelected: (index) => setState(() => _currentIndex = index),
      items: <BottomNavyBarItem>[
        BottomNavyBarItem(
          icon: const Icon(Icons.home),
          title: const Text('Home'),
          activeColor: Colors.black54,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: const Icon(Icons.shopping_cart),
          title: const Text('Cart'),
          activeColor: Colors.black54,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: const Icon(Icons.book),
          title: const Text(
            'Add Books '
          ),
          activeColor: Colors.black54,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget _getPages() {
    List<Widget> pages = [
      Container(
        alignment: Alignment.center,
        child: const Text("Home",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
      ),
      Container(
        alignment: Alignment.center,
        child: const Text("Users",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
      ),
      Container(
        alignment: Alignment.center,
        child: const Text("Messages",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
      ),
      Container(
        alignment: Alignment.center,
        child: const Text("Settings",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
      ),
    ];

    return IndexedStack(
      index: _currentIndex,
      children: pages,
    );
  }
}
