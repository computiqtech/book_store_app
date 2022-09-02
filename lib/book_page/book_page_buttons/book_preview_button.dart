import 'package:flutter/material.dart';

class PreviewButton extends StatelessWidget {
  const PreviewButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(height: 40,width: 152,decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),color: Colors.white
    ),child:
    Row(mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Icon(Icons.list_outlined),SizedBox(width: 15,),
        Text('Preview',style: TextStyle(fontWeight: FontWeight.bold),)
      ],),
    );
  }
}