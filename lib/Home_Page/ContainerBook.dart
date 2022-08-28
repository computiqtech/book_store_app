import 'package:flutter/material.dart';

class Books extends StatelessWidget {
  const Books({Key? key, required this.name, required this.auther_name, required this.price, required this.image,}) : super(key: key);

  final String name;
  final String auther_name;
  final String price;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color(0xffE5E5E5),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Column(
            children: [
              Image.network(
                image,
                height: 150,

              ),

            ],
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(name),
                Text(auther_name),
                Text(price),
                Row(
                  children: [
                    Icon(Icons.star,color: Colors.amber,),
                    Icon(Icons.star,color: Colors.amber,),
                    Icon(Icons.star,color: Colors.amber,),
                    Icon(Icons.star,color: Colors.white,),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}