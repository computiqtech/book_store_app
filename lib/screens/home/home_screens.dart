import 'package:book_store_app/screens/add_book/add_book_screen.dart';
import 'package:book_store_app/screens/cart/cart_screen.dart';
import 'package:book_store_app/screens/home/widget/my_app_bar.dart';
import 'package:book_store_app/screens/widgets/my_bottom_nav_bar.dart';
import 'package:book_store_app/screens/widgets/my_text_field.dart';
import 'package:book_store_app/screens/widgets/title_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../models/my_models.dart';
import '../widgets/card_of_book.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController searchController = TextEditingController();
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyAppBar(),
                    MyTextField(
                      hint: "Search...",
                      icon: Icons.search_rounded,
                      maxLine: 1,
                      controller: searchController,
                    ),
                    TitleText(
                      text: "Book List",
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.66,
                      width: double.infinity,
                      child: ListView.separated(
                        itemBuilder: (BuildContext context, int index) =>
                            CardBook(
                              index: index,
                          title: listOfBookCard[index].title,
                          rate: listOfBookCard[index].rate,
                          auth: listOfBookCard[index].auth,
                          img: listOfBookCard[index].img,
                          prise: listOfBookCard[index].prise,
                          dsc: listOfBookCard[index].dsc,
                          isCard: listOfBookCard[index].IsCart,
                        ),
                        itemCount: listOfBookCard.length,
                        separatorBuilder: (BuildContext context, int index) =>
                            const SizedBox(
                          height: 16,
                        ),
                      ),
                    ),
                  ],
                ),
                MybottomNavBar()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
