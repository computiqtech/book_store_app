import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../models/my_models.dart';
import '../widgets/card_of_book.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/my_bottom_nav_bar.dart';
import '../widgets/title_text.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TitleText(text: "Cart"),
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    height: MediaQuery.of(context).size.height * 0.77,
                    width: double.infinity,
                    child: ListView.separated(
                      itemBuilder: (BuildContext context, int index) => listOfBookCard[index].IsCart%2==0?
                           CardBook(index: index,
                                title: listOfBookCard[index].title,
                                rate: listOfBookCard[index].rate,
                                auth: listOfBookCard[index].auth,
                                img: listOfBookCard[index].img,
                                prise: listOfBookCard[index].prise,
                                dsc: listOfBookCard[index].dsc,
                                isCard: listOfBookCard[index].IsCart,
                              ):Container(),
                      itemCount: listOfBookCard.length,
                      separatorBuilder: (BuildContext context, int index) =>
                          const SizedBox(
                        height: 16,
                      ),
                    )),
              ],
            ),
            MybottomNavBar(),
          ],
        ),
      ),
    );
  }
}
