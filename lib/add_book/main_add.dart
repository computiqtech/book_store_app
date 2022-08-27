import 'package:flutter/material.dart';
import 'package:book_store_app/home_page/menu_barr.dart';
import 'package:book_store_app/home_page/book_model.dart';
class AddBook extends StatefulWidget {
  const AddBook({Key? key}) : super(key: key);
  @override
  State<AddBook> createState() => _Add_bookState();
}

TextEditingController bookNameC=TextEditingController();
TextEditingController authorC=TextEditingController();
TextEditingController pricC=TextEditingController();
TextEditingController imgPathC=TextEditingController();
TextEditingController descripC=TextEditingController();
class _Add_bookState extends State<AddBook> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(scaffoldBackgroundColor: Colors.grey.shade100,
        primarySwatch: Colors.grey),
    home: Scaffold(
      appBar: MyAppBar(context),
      body: Stack(

        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 28,),
                Text('Add Book',style:  TextStyle(
                    fontSize: 24,fontWeight: FontWeight.w600
                ),),
                Form(),


              ],
            ),
          ),
          MenuBar(c3: Colors.black,flag: 'add',)
        ],
      ),
    )
    );
  }

  Padding Form() {
    return Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Expanded(
                  child: Column(
                    children: [
                      SizedBox(height: 56,),
                      BookField('Book Name',bookNameC),
                      SizedBox(height: 14,),
                      BookField('Author Name',authorC),
                      SizedBox(height: 14,),
                      BookField('Price',pricC),
                      SizedBox(height: 14,),
                      BookField('Image link',imgPathC),
                      SizedBox(height: 14,),
                      BookField('Description',descripC,4),
                      SizedBox(height: 14,),
                      ElevatedButton(onPressed: (){
                        Book.add(bookNameC.text,authorC.text,pricC.text,imgPathC.text);
                      },
                          child: Text('Add'),style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(horizontal: 130,vertical: 18)
                        ),)

                    ],
                  ),
                ),
              );
  }

  Container BookField(String txt,TextEditingController ctrler,[int maxl=1]) {
    return Container(
      padding: EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius:  BorderRadius.circular(32),
      ),
      child: TextField(
        controller: ctrler,
        maxLines: maxl,
        decoration: InputDecoration(
          hintStyle: TextStyle(fontSize: 17),
          hintText: '$txt',
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(vertical: 20),
        ),

      ),
    );
  }

}
AppBar MyAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.grey.shade100,
    elevation: 0,
    leading: TextButton(onPressed: () {
      Navigator.pop(context);
    },
      child:const Icon(Icons.arrow_back,color: Colors.black,) ,),
    actions: const [
      Padding(padding: EdgeInsets.only(right: 20),
        child: Icon(Icons.more_vert_rounded,color: Colors.black,size: 28,),
      )

    ],

  );
}