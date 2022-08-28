import 'package:flutter/material.dart';
import 'add_page/add_page.dart';
import 'cart_page/cart_page.dart';

class MyFloatingActionButtons extends StatelessWidget {
  const MyFloatingActionButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 72,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22.0),
          color: Colors.white
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children:  [
          TextButton(child: const Icon(Icons.home_outlined,size: 30,color: Colors.black,),
            onPressed: (){
              Navigator.pop(context);
            },),
          TextButton(child: const Icon(Icons.shopping_cart_outlined,size: 30,color: Colors.black,),
            onPressed: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  const CartsPage()));
            },),
          TextButton(child: const Icon(Icons.add,size: 30,color: Colors.black,),
            onPressed: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AddBooks())
              );
            },),
        ],
      ),
    );
  }
}