import 'package:flutter/material.dart';
import 'TextFields.dart';
import 'model.dart';
class AddPage extends StatelessWidget {
  AddPage({Key? key}) : super(key: key);
  final TextEditingController nameCont = TextEditingController();
  final TextEditingController authorCont = TextEditingController();
  final TextEditingController priceCont = TextEditingController();
  final TextEditingController linkCont = TextEditingController();
  final TextEditingController descCont = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: IconButton(onPressed: (){
            Navigator.pop(context);
          }, icon: const Icon(Icons.arrow_back_ios_new,color: Colors.black)),
        ),
        actions: const [Padding(
          padding: EdgeInsets.all(10),
          child: Icon(Icons.more_vert,color: Colors.black),
        )],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: Column(
              children: [
                TextFields(hint: 'Book Name',controller: nameCont),
                SizedBox(height: 22),
                TextFields(hint: 'Author Name',controller: authorCont),
                SizedBox(height: 22),
                TextFields(hint: 'Price', controller: priceCont),
                SizedBox(height: 22),
                TextFields(hint: 'Image Link',controller: linkCont),
                SizedBox(height: 22),
                TextFields(hint: 'Description', height: 140, controller: descCont),
                SizedBox(height: 22),
                MaterialButton(
                  onPressed: (){
                    Book.Add(nameCont.text, authorCont.text, priceCont.text, linkCont.text, descCont.text);
                    nameCont.clear();
                    authorCont.clear();
                    priceCont.clear();
                    linkCont.clear();
                    descCont.clear();
                    Navigator.pop(context);
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: 280,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(16)
                    ),
                    child: Text('Add',style: TextStyle(color: Colors.white)),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
