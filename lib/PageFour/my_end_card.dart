

import 'package:flutter/material.dart';

class MyEndCard extends StatelessWidget {
  const MyEndCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,height: 72,
      margin: EdgeInsets.only(bottom: 10,left: 65),
      padding: EdgeInsets.symmetric(horizontal: 35,vertical: 10),
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Colors.white,
            spreadRadius: 40,
            blurRadius: 50,
            offset: Offset(0, 60), // changes position of shadow
          ),
        ],
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromRGBO(255, 255, 255, 1),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Icon(Icons.home_outlined,color: Colors.black,),
          Icon(Icons.shopping_cart_outlined,color: Colors.grey,),
          Icon(Icons.add,color: Colors.grey,),

        ],
      ),
    );
  }
}