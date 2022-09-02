
import 'package:flutter/material.dart';

class AddButton extends StatelessWidget {
  const AddButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: (){},
      style: TextButton.styleFrom(
          padding: EdgeInsets.zero
      ),
      child: Container(
        alignment: Alignment.center,
        width: 320,
        height: 60,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(20),
        ),
        child: const Text('Add', style: TextStyle(fontSize: 16, color: Colors.white),),
      ),
    );
  }
}