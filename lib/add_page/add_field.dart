import 'package:flutter/material.dart';

class AddFields extends StatefulWidget {
  const AddFields({
    Key? key, required this.fieldName, required this.maxLines, required this.myCont,
  }) : super(key: key);
  final String fieldName;
  final int maxLines;
  final TextEditingController myCont;

  @override
  State<AddFields> createState() => _AddFieldsState();
}

class _AddFieldsState extends State<AddFields> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 45.0,bottom: 22.0,right: 45.0,),
      child: TextField(
        controller: widget.myCont,
        onSubmitted: (x){
          widget.myCont.text=x;
        },
        maxLines: widget.maxLines,
        textAlign: TextAlign.start,
        cursorColor: Colors.black,
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          hintText: widget.fieldName,
          border: OutlineInputBorder(
              borderSide:const BorderSide(
                // width: 317,
                  color: Colors.white,
                  style: BorderStyle.none
              ),
              borderRadius: BorderRadius.circular(20.0)
          ),
          enabledBorder: OutlineInputBorder(
              borderSide:const BorderSide(
                  color: Colors.white,
                  style: BorderStyle.none
              ),
              borderRadius: BorderRadius.circular(20.0)
          ),
        ),
      ),
    );
  }
}