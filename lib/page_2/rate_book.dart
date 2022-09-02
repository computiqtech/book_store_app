
import 'package:flutter/material.dart';
import '../modules.dart';

class Rate extends StatelessWidget {
  const Rate({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Stars(),
          MyText(text: '4.5', color: Colors.black, size: 14, height: 1,),
          MyText(text: '/5.0', color: Colors.black54, size: 14, height: 1,),
        ],
      ),
    );
  }
}