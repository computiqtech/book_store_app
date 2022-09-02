import 'package:book_store_app/home_page/books_main/books_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../home_page/books_main/book_widgets.dart';
import '../home_page/navigation_bar/navigation_bar_main.dart';

class MyCartCard extends StatelessWidget {
  const MyCartCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.white.withOpacity(0.1),
          elevation: 0,
          leading: IconButton(onPressed: (){Navigator.pop(context);},
            icon:const Icon(Icons.arrow_back_ios_new_sharp,
              color: Colors.black, size: 25,),),
          actions: const [
            Icon(Icons.more_vert_sharp, color: Colors.black, size: 25,)
          ],
        ),

        body: Scaffold(
          backgroundColor: const Color(0xffFDFDFD),
          body: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 30.0),
                  child: Text('Cart',style: TextStyle(fontSize:
                  24,fontWeight: FontWeight.bold),),
                ),
                Expanded(child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Obx(()
                  {return ListView(children: BookData.books.where((e) =>e.inCart.value)
                      .map((e) => MyBook(bookData: e)).toList(),);}),
                )),
                const Align(alignment: Alignment.bottomCenter,child: Padding(
                    padding: EdgeInsets.only(bottom: 42.0),
                    child:MyNavigationBar()))]
          ),
        ),
      );
  }
}