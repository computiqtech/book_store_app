

import 'package:flutter/material.dart';

class MyListView extends StatelessWidget {
  const MyListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Stack(
          children: [
            ListView(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width:100,height: 150,
                      margin: EdgeInsets.only(right: 28),
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('images/img_1.png',),
                              fit: BoxFit.fill
                          ),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10
                              ))
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Yves Saint Laurent',style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black
                          ),),
                          const  Text('Suzy Menkes',style: TextStyle(
                              fontSize: 12,
                              color: Color.fromRGBO(6, 7, 13, 0.5)
                          ),),
                          const  Text(r'$46.99',style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(6, 7, 13, 1)
                          ),),
                          Row(
                            children: const[
                              Icon(Icons.star,color: Colors.orange,size: 16,),
                              Icon(Icons.star,color: Colors.orange,size: 16,),
                              Icon(Icons.star,color: Colors.orange,size: 16,),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),





              ],
            ),

          ],
        ),
      ),

    );
  }
}