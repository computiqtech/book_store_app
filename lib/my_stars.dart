import 'package:flutter/material.dart';

class MyStars extends StatelessWidget {
  const MyStars({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        children: const [
          Icon(Icons.star,size: 20, color: Colors.yellowAccent,),
          Icon(Icons.star,size: 20, color: Colors.yellowAccent,),
          Icon(Icons.star,size: 20, color: Colors.yellowAccent,),
          Icon(Icons.star,size: 20, color: Colors.yellowAccent,),
          Icon(Icons.star,size: 20, color: Colors.grey,)
        ]);
  }
}