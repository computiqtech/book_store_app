
import 'package:book_store_app/data/DataBook.dart';
import 'package:flutter/material.dart';

class CartBotton extends StatelessWidget {
  const CartBotton({
    Key? key,
    required this.data,
  }) : super(key: key);

  final DataBook data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: GestureDetector(
        onTap: (){
          data.isCart();
        },
        child: Container(
            margin: EdgeInsets.only(top: 20),
            height: 60,
            width: 85,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Colors.black,
            ),
            child: Center(
              child: Text("Buy Now For ${data.price}",style: TextStyle(fontSize: 15,color: Colors.white),),
            )
        ),
      ),
    );
  }
}