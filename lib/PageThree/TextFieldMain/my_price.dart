

import 'package:flutter/material.dart';
final TextEditingController conPrice = TextEditingController();

class Price extends StatelessWidget {
  const Price({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: TextField(
        controller: conPrice,
        style: TextStyle(fontSize: 15,color: Color.fromRGBO(132, 136, 158, 1)),
        minLines: 1,
        maxLines: 2,
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          filled: true,
          fillColor: Color.fromRGBO(255, 255, 255, 1),
          border: InputBorder.none,
          hintText: 'Price',
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