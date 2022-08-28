


import 'package:book_store_app/page1/default_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Show extends StatelessWidget {
  const Show({Key? key, required this.Bookname, required this.Author, required this.Price, required this.imageLink,required this.Description}) : super(key: key);

  final String Bookname;
  final String Author;
  final String Price;
  final String imageLink;
  final String Description;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              padding: const EdgeInsets.all(22),
              child: SizedBox(
                  height: 320,
                  width: 216,
                  child: Image.network(imageLink)),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: Text(Bookname, style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 11),
              child: Text(Author, style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: Color.fromRGBO(6, 7, 13, 1)
              ),),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 19),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:const [
                  Icon(Icons.star, color: Color.fromRGBO(255, 196, 31, 1), size: 14,),
                  Icon(Icons.star, color: Color.fromRGBO(255, 196, 31, 1), size: 14,),
                  Icon(Icons.star, color: Color.fromRGBO(255, 196, 31, 1), size: 14,),
                  Icon(Icons.star, color: Color.fromRGBO(255, 196, 31, 1), size: 14,),
                  Icon(Icons.star, color: Color.fromRGBO(237, 237, 239, 1), size: 14,),
                  Text("  \$4.5"),
                  Text("/5.0", style: TextStyle(
                    color: Color.fromRGBO(130, 130, 133, 1)
                  ),),
                ],
              ),
            ),
            SizedBox(
              width: 319,
              height:96 ,
              child: Text(Description, style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontFamily: 'Poppins'
              ),),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 36),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 154,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:const [
                        Icon(Icons.table_rows),
                        SizedBox(width: 13,),
                        Text("Preview", style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500
                        ),)
                      ],
                    ),
                  ),
                  const SizedBox(width: 13,),
                  Container(
                    width: 154,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.display_settings),
                        SizedBox(width: 13,),
                        Text("Reviews", style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500
                        ),)
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 60,
              width: 319,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(16)

              ),
              child: const Center(
                child: Text("Buy Now for \$46.99 ", style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w500
              ),
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}
