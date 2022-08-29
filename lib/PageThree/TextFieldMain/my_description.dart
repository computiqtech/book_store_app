

import 'package:flutter/material.dart';
final TextEditingController conDescription = TextEditingController();

class Description extends StatelessWidget {
  const Description({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: TextField(
        controller: conDescription,
        style: TextStyle(fontSize: 15,color: Color.fromRGBO(132, 136, 158, 1)),
        minLines: 7,
        maxLines: 7,
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          filled: true,
          fillColor: Color.fromRGBO(255, 255, 255, 1),
          border: InputBorder.none,
          hintText: 'Description',
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.greenAccent,
                width: 1,
              )
          ),
        ),
      ),
    );
  }
}