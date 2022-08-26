import 'package:book_store_app/screens/widgets/start_rate.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../models/my_models.dart';
import '../detais_book_screen.dart';

class CardBook extends StatelessWidget {
  RxInt IsCart;

  String img;
  String title;
  String auth;
  String prise;
  String rate;
  String dsc;
   int index;
  CardBook({
    Key? key,
    required this.index,
    required int isCard ,
    required this.img,
    required this.title,
    required this.auth,
    required this.prise,
    required this.rate,
    required this.dsc,
  }) : IsCart = (isCard).obs,super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {
            Get.to(DetaisBook(
              img: img,
              title: title,
              auth: auth,
              rate: rate,
              prise: prise,
              dsc: dsc,
            ));
          },
          child: Image.network(
            img,
            height: 100,
          ),
        ),
        const SizedBox(
          width: 32,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              auth,
              style: const TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w400,
                  fontSize: 14),
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              "\$ 23",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(
              height: 8,
            ),
            StartRate(rate: int.parse(rate))
          ],
        ),
        Spacer(),
        IconButton(
            onPressed: () {
              IsCart.value++;
              listOfBookCard.elementAt(index).IsCart=IsCart.value;
            },
            icon: Obx(() => Icon(
                  Icons.shopping_cart,
                  color: IsCart.value % 2 == 0 ? Colors.black : Colors.grey,
                )))
      ],
    );
  }
}
