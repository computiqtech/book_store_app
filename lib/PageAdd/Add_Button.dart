
import 'package:book_store_app/data/DataBook.dart';
import 'package:flutter/material.dart';

class AddButton extends StatelessWidget {
  const AddButton({
    Key? key, required this.controllerAddname, required this.controllerAddAuthor, required this.controllerAddprice, required this.controllerAddImage, required this.controllerAddDesc,
  }) : super(key: key);
  final TextEditingController controllerAddname;
  final TextEditingController controllerAddAuthor;
  final TextEditingController controllerAddprice;
  final TextEditingController controllerAddImage;
  final TextEditingController controllerAddDesc;
  @override
  Widget build(BuildContext context) {

    return TextButton(
      onPressed:(){
        DataBook.add(controllerAddname.text,controllerAddAuthor.text,
            controllerAddprice.text, controllerAddImage.text, controllerAddDesc.text);
        print(DataBook.Book);
        controllerAddname.clear();
        controllerAddDesc.clear();
        controllerAddprice.clear();
        controllerAddImage.clear();
        controllerAddAuthor.clear();
      },
      child: Container(
          margin: EdgeInsets.only(top: 40),
          height: 60,
          width: 285,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: Colors.black,
          ),
          child: Center(
            child: Text("Add",style: TextStyle(fontSize: 25,color: Colors.white),),
          )
      ),
    );
  }
}