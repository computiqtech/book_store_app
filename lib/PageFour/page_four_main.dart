
import 'package:book_store_app/PageFour/my_card_title.dart';
import 'package:book_store_app/PageFour/my_end_card.dart';
import 'package:book_store_app/PageFour/my_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PageFour extends StatelessWidget {
  const PageFour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: const Color.fromRGBO(235, 235, 235, 1),
          appBar: AppBar(
            systemOverlayStyle: const SystemUiOverlayStyle(
                statusBarColor: Colors.transparent,
                statusBarIconBrightness: Brightness.dark
            ),
            backgroundColor: const Color.fromRGBO(235, 235, 235, 1),
            elevation: 0,
            leading: IconButton(
              onPressed: (){},
              icon: const Icon(Icons.arrow_back_ios),
              color: Colors.black,
            ),
            actions: [
              IconButton(onPressed: (){}, icon: const Icon(
                Icons.more_vert,
                color: Colors.black,
              ))
            ],
          ),
          ///////////////////////
          ///////////////////////
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const[
               MyCardTitle(),
                MyListView(),
                MyEndCard(),
              ],
            ),
          )
      ),
    );
  }
}






