import 'package:book_store_app/main_page/search_field.dart';
import 'package:flutter/material.dart';
import '../my_floating_buttons.dart';
import 'my_list_book.dart';

class MyListBook extends StatelessWidget {
  const MyListBook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 43.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 28.0,right: 12.0),
                  child: CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('images/photo_2022-08-25_15-20-40.jpg'),
                  ),
                ),
                Text('Hi,Ali',style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),),
                SizedBox(
                  width: 228,
                ),
                Icon(Icons.more_vert,color: Colors.black,size: 30,)
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(28.0),
              child: SearchField(),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 25.0,top: 15.0),
              child: Text('Book List',style: TextStyle(
                color: Colors.black,
                fontFamily:'Poppins',
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),),
            ),
            const MyBook(),
            Container(
              width: double.maxFinite,
              height: 20,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.white.withOpacity(0.5),
                    spreadRadius: 30,
                    blurRadius: 20,
                  )
                ]
              ),
            )
          ],
        ),
      ),
      floatingActionButton: const MyFloatingActionButtons(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

