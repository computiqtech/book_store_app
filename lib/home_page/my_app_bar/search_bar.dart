import 'package:flutter/material.dart';

class MySearchBar extends StatelessWidget {
  const MySearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:30),
      child: Column(
        children: [
          Container(height: 50,width: 370,alignment: Alignment.center,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),color: const Color(0xffFFFFFF)),child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text('Search...'),

                ),        Padding(
                  padding: EdgeInsets.only(right: 10.0),
                  child: Icon(Icons.search),
                )
              ],),),
        ],
      ),
    );
  }
}