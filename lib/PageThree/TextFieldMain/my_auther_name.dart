
import 'package:flutter/material.dart';
final TextEditingController conAuther = TextEditingController();

class AutherName extends StatelessWidget {
  const AutherName({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: TextField(
        controller: conAuther,
        style: TextStyle(fontSize: 15,color: Color.fromRGBO(132, 136, 158, 1)),
        minLines: 1,
        maxLines: 2,
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          filled: true,
          fillColor: Color.fromRGBO(255, 255, 255, 1),
          border: InputBorder.none,
          hintText: 'Auther Name',
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