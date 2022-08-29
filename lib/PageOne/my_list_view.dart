
import 'package:book_store_app/PageTwo/page_two_main.dart';
import 'package:book_store_app/model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyListView extends StatelessWidget {
  const MyListView({
    Key? key,
  }) : super(key: key);
  static PageController controller = PageController();
  static RxInt currentPage = 0.obs;
  @override
  Widget build(BuildContext context) {
    return Obx(() {
        return PageView(
          controller: controller,
          onPageChanged: (x){
            currentPage.value = x;
          },
          children: [
            AnimatedSwitcher(duration: Duration(seconds: 2),
              child: Book.books.isNotEmpty ? ListView(
              controller: ScrollController(),
              children: Book.books.where((e) => e.nameBook.contains(Book.Q)).map((e) =>
                  TextButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  PageTwo(mybook: e,)),
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.only(top: 10,bottom: 30),
                      padding:  const EdgeInsets.all(10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 100,height: 150,
                            margin: const EdgeInsets.only(right: 28),
                            decoration:  BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  bottomRight: Radius.circular(10
                                  )),
                              image: DecorationImage(
                                image: NetworkImage('${e.imageNetwork}',),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('${e.nameBook}',style:const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black
                                ),),
                                Text('${e.nameAuther}',style: const TextStyle(
                                    fontSize: 12,
                                    color: Color.fromRGBO(6, 7, 13, 0.5)
                                ),),
                                Text('\$${e.price}',style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(6, 7, 13, 1)
                                ),),
                                Row(
                                  children: const[
                                    Icon(Icons.star,color: Colors.orange,size: 16,),
                                    Icon(Icons.star,color: Colors.orange,size: 16,),
                                    Icon(Icons.star,color: Colors.orange,size: 16,),
                                    Icon(Icons.star,color: Colors.orange,size: 16,),
                                    Icon(Icons.star_border_sharp,color: Colors.orange,size: 16,),

                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
              ).toList(),
            ): Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const[
                Icon(Icons.menu_book,size: 100,color: Colors.grey,),
                Text('Add the Books',style: TextStyle(
                  color: Colors.grey,
                  fontSize: 25,
                ),)
              ],
            ),
                ),


            ListView(
              controller: ScrollController(),
              children: Book.books.where((e) => e.isDone.value).map((e) =>
                  TextButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  PageTwo(mybook: e,)),
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.only(top: 10,bottom: 30),
                      padding:  const EdgeInsets.all(10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 100,height: 150,
                            margin: const EdgeInsets.only(right: 28),
                            decoration:  BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  bottomRight: Radius.circular(10
                                  )),
                              image: DecorationImage(
                                image: NetworkImage('${e.imageNetwork}',),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('${e.nameBook}',style:const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black
                                ),),
                                Text('${e.nameAuther}',style: const TextStyle(
                                    fontSize: 12,
                                    color: Color.fromRGBO(6, 7, 13, 0.5)
                                ),),
                                Text('\$${e.price}',style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(6, 7, 13, 1)
                                ),),
                                Row(
                                  children: const[
                                    Icon(Icons.star,color: Colors.orange,size: 16,),
                                    Icon(Icons.star,color: Colors.orange,size: 16,),
                                    Icon(Icons.star,color: Colors.orange,size: 16,),
                                    Icon(Icons.star,color: Colors.orange,size: 16,),
                                    Icon(Icons.star_border_sharp,color: Colors.orange,size: 16,),

                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
              ).toList(),

            ),

          ],
        );
      }
    );
  }
}