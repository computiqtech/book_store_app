
import 'package:flutter/material.dart';
import '../main.dart';
import '../modules.dart';
import 'package:get/get.dart';

class Card5 extends StatelessWidget {
  const Card5({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 20,
      left: 60,
      right: 60,
      child: Container(
        width: 227,
        height: 72,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(22),
        ),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: Navigation.icons.map((e) => TextButton(
                onPressed: (){
                  if(e.icon == Icons.add){
                    MyBooks.selectedIcon.value = Icons.add;
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Add()));
                  }else if(e.icon == Icons.shopping_cart){
                    MyBooks.selectedIcon.value = Icons.shopping_cart;
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Cart()));
                  }else if(e.icon == Icons.home_filled){
                    MyBooks.selectedIcon.value = Icons.home_filled;
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Home()));
                  }

                },
                child: Icon(e.icon,
                  color: MyBooks.selectedIcon.value == e.icon ? Colors.black : Colors.grey,
                  size: 30,))).toList()
        ),
      ),
    );
  }
}