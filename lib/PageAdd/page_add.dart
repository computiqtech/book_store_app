
import 'package:book_store_app/PageAdd/Add_Button.dart';
import 'package:book_store_app/PageAdd/Text_Field.dart';
import 'package:flutter/material.dart';

class AddPage extends StatefulWidget {
  const AddPage({Key? key}) : super(key: key);

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController controllerAddname=TextEditingController();
    final TextEditingController controllerAddAuthor=TextEditingController();
    final TextEditingController controllerAddprice=TextEditingController();
    final TextEditingController controllerAddImage=TextEditingController();
    final TextEditingController controllerAddDesc=TextEditingController();
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      appBar: AppBar(
        backgroundColor: Color(0xffE5E5E5),
        elevation: 0,
        leading: TextButton(onPressed: (){
          Navigator.pop(context);
        },child: Container(
          margin: EdgeInsets.only(left: 30,top: 20),
            child: Icon(Icons.arrow_back_ios,color: Colors.black,)),),
        actions: [
          TextButton(onPressed: (){}, child: Container(
              margin: EdgeInsets.only(right: 30,top: 20),
              child: Icon(Icons.more_vert,color: Colors.black,)))
        ],
      ),

      body:SingleChildScrollView(
        child: Column(
          children: [
            ///Text("Add Book ")
            Container(
              margin: EdgeInsets.only(right: 200,top: 30,bottom: 35),
              child: Text("Add Book ",style:TextStyle(fontSize: 30),),
            ),

            ///TextField
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AddTextField(title: "Book Name",controllerAdd:controllerAddname,),
                AddTextField(title: "Author Name",controllerAdd: controllerAddAuthor,),
                AddTextField(title: "price",controllerAdd: controllerAddprice,),
                AddTextField(title: "Image Link",controllerAdd: controllerAddImage,),
                ///Description
                Padding(
                  padding: const EdgeInsets.only(top: 15,right: 15,left: 15),
                  child: TextField(
                    controller: controllerAddDesc,
                    maxLines: 6,
                    style: const TextStyle(fontSize: 16),
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.2),
                      hintText: "Description",
                      border: InputBorder.none,
                    ),
                  ),
                ),

              ],
            ),

            ///Button Add New Book
            AddButton(controllerAddname: controllerAddname,controllerAddAuthor: controllerAddAuthor,
            controllerAddprice: controllerAddprice,
            controllerAddImage: controllerAddImage,controllerAddDesc: controllerAddDesc,),
          ],
        ),
      ),
    );
  }
}





